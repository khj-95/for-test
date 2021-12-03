package com.kh.switchswitch.chat.model.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.kh.switchswitch.chat.model.dto.ChatMessages;

@Mapper
public interface ChatRepository {
	@Select("select * from chat_messages where chatting_idx=#{chattingIdx}  order by cm_idx asc")
	List<ChatMessages> selectChatMessagesList(Integer receiverIdx);

	@Insert("insert into chat_messages values(sc_chat_idx.nextval,#{chattingIdx},#{senderId},#{message},sysdate)")
	void insertChatMessage(ChatMessages chatMessages);
}
