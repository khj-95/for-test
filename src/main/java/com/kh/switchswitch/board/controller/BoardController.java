package com.kh.switchswitch.board.controller;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.switchswitch.board.model.dto.Board;
import com.kh.switchswitch.board.model.service.BoardService;
import com.kh.switchswitch.comment.model.dto.Reply;
import com.kh.switchswitch.comment.model.service.ReplyService;
import com.kh.switchswitch.common.util.FileDTO;
import com.kh.switchswitch.member.model.dto.MemberAccount;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("board")
public class BoardController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private final BoardService boardService;
	private final ReplyService commentService;
	
	@GetMapping("board-form")
	public void boardForm() {}

	@PostMapping("upload")
	public String uploadBoard(Board board, List<MultipartFile> files, @AuthenticationPrincipal MemberAccount member ) {
		//,@SessionAttribute("authentication") Member member
		board.setUserId(member.getMemberNick());
		boardService.insertBoard(files, board);
		return "redirect:/board/board-list";
	}
	
	  @GetMapping("board-list") 
	  public String boardList(Model model, @RequestParam(required = true, defaultValue = "1") int page) {
		  model.addAllAttributes(boardService.selectBoardList(page));	  
			return "board/board-list";
	}
	
//이미지
	  @GetMapping("board-detail")
	public String boardDetail(int bdIdx, Model model) {
		Map<String,Object> commandMap = boardService.selectBoardByIdx(bdIdx);
		model.addAttribute("datas", commandMap);
		model.addAttribute("commentList", boardService.getCommetList(commandMap));
		
		return "board/board-detail";
	}
	
	@GetMapping("board-modify")
	public void boardModify(Model model, int bdIdx) {
		Map<String,Object> commandMap = boardService.selectBoardByIdx(bdIdx);
		model.addAttribute("datas", commandMap);
	}

	@PostMapping("modify")
	public String modifyBoard(Board board,  List<MultipartFile> files, int bdIdx) {
		System.out.println(board);
		for (MultipartFile multipartFile : files) {
			System.out.println(multipartFile);
		}
		board.setBdIdx(bdIdx);
		boardService.modifyBoard(board,files);
		return "redirect:/board/board-detail?bdIdx="+board.getBdIdx();
	}

	@PostMapping("delete")
	public String deleteBoard(int bdIdx) {
		boardService.deleteBoard(bdIdx);
		return "redirect:/board/board-list";
	}
//	
//	@PostMapping("comment")
//    public String viewPostMethod(Model model, @RequestParam Map<String, Object> paramMap) {
//        Comment commet = new Comment();
//        commet.setUserId(paramMap.get("userId").toString());
//        commet.setContent(paramMap.get("content").toString());
//
//        // DB 댓글 추가
//        commentService.saveComment(commet);
//
//        // 댓글 리스트 추가
//        model.addAttribute("commentList", commentService.selectCommentList(commet));
//
//        // 수정&삭제 버튼 게시를 위한 유저 정보 전달
//        Map<String, Object> userInform = new HashMap<String, Object>();
//        userInform.put("userId", paramMap.get("userId"));
//        model.addAttribute("userInform", userInform);
//
//        return null;
//    }
}

