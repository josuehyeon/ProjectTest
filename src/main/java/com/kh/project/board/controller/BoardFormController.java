package com.kh.project.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.board.service.BoardService;
import com.kh.project.board.vo.BoardVO;

@Controller
@RequestMapping("/form")
public class BoardFormController {
	@Resource(name = "boardService")
	private BoardService boardService;
	
	//글작성
	@GetMapping("inlog")
	public String doBdForm(Model md) {
		return "boardForm/board/board_form";
	}
	//글 등록
	@PostMapping("istBoard")
	public String istForm(BoardVO bvo, Model md) {
		return "redirect:/board/infoPark";
	}
}
