package com.kh.project.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.board.service.BoardService;
import com.kh.project.board.vo.BoardVO;
import com.kh.project.board.vo.CateVO;
import com.kh.project.common.service.CommonService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Resource(name = "boardService")
	private BoardService boardService;
	
	@Resource(name = "commonService")
	private CommonService commonService;
	
//	//로그인 후 보여질 메인 화면
//	@GetMapping("portal")
//	public String doMainHome(Model md) {
//		md.addAttribute("menuList", commonService.sltMenuList()); //메뉴 목록 조회 후 전달
//		return "home/main_page";
//	}portal controller로 이동
	
	//정보광장 게시판
	@RequestMapping("infoPark")
	public String doInfoPark(Model md, BoardVO boardVO) {
		//전체 데이터 수
		int dataCnt = boardService.totalBoardCnt(boardVO);
		boardVO.setTotalCnt(dataCnt);
		//페이징 처리
		boardVO.setPageInfo();
		md.addAttribute("boardList", boardService.selectBoardList(boardVO));
		return "board/info_park";
	}
	//건의 게시판
	@RequestMapping("bdRequest")
	public String doRequest(Model md, BoardVO boardVO) {
		//전체 데이터 수
		int dataCnt = boardService.totalBoardCnt(boardVO);
		boardVO.setTotalCnt(dataCnt);
		//페이징 처리
		boardVO.setPageInfo();
		md.addAttribute("boardList", boardService.selectBoardList(boardVO));
		return "board/board_request";
	}
	//취업 정보 게시판 / 잡코리아
	@GetMapping("job")
	public String doCommunity() {
		return "board/job_korea";
	}
	//사람인 이동
	@GetMapping("saramin")
	public String dosaram() {
		return "board/saramin";
	}
	//게시글 등록 후 이동
	@PostMapping("istBd")
	public String doIstBoard(BoardVO bvo) {
		boardService.istBoard(bvo);
		return "redirect:/board/infoPark";
	}
	//게시글 삭제 후 이동
	@PostMapping("dltBd")
	public String doDltBoard(BoardVO bvo) {
		boardService.dltBoard(bvo);
		return "redirect:/board/infoPark";
	}
	
}
