package com.kh.switchswitch.chat.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.kh.switchswitch.chat.model.dto.ChatMessages;
import com.kh.switchswitch.chat.model.dto.Chatting;
import com.kh.switchswitch.chat.model.repository.ChatRepository;
import com.kh.switchswitch.common.util.FileDTO;
import com.kh.switchswitch.member.model.dto.Member;
import com.kh.switchswitch.member.model.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ChatServiceImpl implements ChatService{
	
	private final ChatRepository chatRepository;
	private final MemberRepository memberRepository;

	public List<Map<String, Object>> selectChatMessageByChattingIdx(Integer chattingIdx,Integer memberIdx) {
		List<Map<String, Object>> chatMessageList = new ArrayList<Map<String,Object>>();
		List<ChatMessages> chatMessages = chatRepository.selectChatMessagesList(chattingIdx);
		for (ChatMessages chatMessage : chatMessages) {
			chatMessageList.add(
					Map.of("chatMessage",chatMessage
							,"senderName",memberRepository.selectMemberNickWithMemberIdx(chatMessage.getSenderId())));
			//목록 불러올 때 읽음 처리 되어 있지 않은 메세지들 전부 읽음 처리
			if(chatMessage.getIsRead() == 1 && chatMessage.getSenderId() != memberIdx) {
				chatRepository.updateChatIsRead(chatMessage.getCmIdx());
			}
		}
		return chatMessageList;
	}


	//채팅방 생성
	public void makeChatRoom(Integer requestedMemIdx, Integer requestMemIdx) {
		 chatRepository.insertChatting(requestedMemIdx,requestedMemIdx);		
	}


	//회원 번호로 채팅방 받기
	public List<Map<String, Object>> selectAllChattingList(Integer memberIdx) {
		 List<Map<String, Object>> chattingInfoList = new ArrayList<Map<String,Object>>();
		//채팅방 리스트 받기
		List<Chatting> chattingList = chatRepository.selectAllChattingByMemberIdx(memberIdx);
		//해당 채팅방들의 마지막 전송 메세지 찾기
		//상대방의 프로필 받기
		List<Member> attendeeList = new ArrayList<Member>();
		List<String> lastMessageList = new ArrayList<String>();
		List<FileDTO> attendeeFileList = new ArrayList<FileDTO>();
		List<Integer> isReadList = new ArrayList<Integer>();
		for (Chatting chatting : chattingList) {
			Integer attendeeIdx = 0;
			lastMessageList.add(chatRepository.selectLastChatMessages(chatting.getChattingIdx()));
			if(chatting.getAttendee1() != memberIdx) {
				attendeeIdx=chatting.getAttendee1();
				attendeeList.add(memberRepository.selectMemberByMemberIdx(chatting.getAttendee1()));
			}
			else if(chatting.getAttendee2() != memberIdx) {
				attendeeIdx=chatting.getAttendee2();
				attendeeList.add(memberRepository.selectMemberByMemberIdx(chatting.getAttendee2()));
			}
			
			if(memberRepository.selectMemberByMemberIdx(attendeeIdx).getFlIdx() != null) {
				attendeeFileList.add(memberRepository.selectFileInfoByFlIdx(memberRepository.selectMemberByMemberIdx(attendeeIdx).getFlIdx()));
			}
			isReadList.add(chatRepository.selectCountOfIsReadByChattingIdx(chatting.getChattingIdx(),memberIdx));
		}
		for (int i = 0; i < chattingList.size(); i++) {
			chattingInfoList.add(Map.of("chatting",chattingList.get(i)
					,"lastMessage",lastMessageList.get(i)
					,"attendee",attendeeList.get(i)
					,"FileInfo",attendeeFileList.get(i)
					,"isRead",isReadList.get(i)));
		}
		
		return chattingInfoList;
	}
	
	
}
