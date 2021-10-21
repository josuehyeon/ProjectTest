package com.kh.project.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Resource(name = "boardService")
	private BoardService boardService;
	
	//로그인 후 보여질 메인 화면
	@GetMapping("portal")
	public String doMainHome() {
		return "home/main_page";
	}
	
	//정보광장 게시판
	@GetMapping("infoPark")
	public String doInfoPark(Model md) {
		md.addAttribute("boardList", boardService.selectBoardList());
		return "board/info_park";
	}
	
	//취업 정보 게시판
	@GetMapping("job")
	public String doCommunity() {
		return "board/daily_board";
	}
	
}
