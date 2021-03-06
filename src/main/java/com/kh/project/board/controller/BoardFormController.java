package com.kh.project.board.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.board.service.BoardService;
import com.kh.project.board.vo.BoardVO;
import com.kh.project.board.vo.CommVO;

@Controller
@RequestMapping("/form")
public class BoardFormController {
	@Resource(name = "boardService")
	private BoardService boardService;

	//글작성
	@GetMapping("/inlog")
	public String doBdForm(Model model) {
		model.addAttribute("nowDate", getNowDateToString());
		return "boardForm/board/board_form";
	}
//	//게시글 보기
//	@GetMapping("/detail")
//	public String doDetail(Model md, BoardVO bvo, CommVO cvo) {
//		md.addAttribute("board", boardService.detailBoard(bvo));
////		md.addAttribute("commList", boardService.sltCommList(cvo));
//		return "boardForm/board/board_detail";
//	}
	
	// 게시글 상세 보기 2
	@GetMapping("/boDetail")
	public String boDetail(Model md, BoardVO boardVO, CommVO cvo) {
		md.addAttribute("board", boardService.detailBoard(boardVO));
		md.addAttribute("commList", boardService.sltCommList(cvo));
		md.addAttribute("nowDate", getNowDateToString());
		return "boardForm/board/board_detail";
	}
	//댓글 등록
//	@PostMapping("/insertComment")
//	public String insertComment() {
//		
//	}
	@PostMapping("/istComm")
	public String doIstComm(Model md, BoardVO bvo, CommVO cvo) {
		boardService.istComm(cvo);
		md.addAttribute("boardNo", bvo);
		md.addAttribute("nowDate", getNowDateToString());
		return "redirect:/form/boDetail";
	}
	
	   private String getNowDateToString() {

		      Calendar cal = Calendar.getInstance();
		      int year = cal.get(Calendar.YEAR);
		      int month = cal.get(Calendar.MONTH) + 1;
		      int date = cal.get(Calendar.DATE);

		      String strMonth = String.valueOf(month);

		      if (month < 10) {
		         strMonth = "0" + strMonth;
		      }

		      String strDate = String.valueOf(date);

		      if (date < 10) {
		         strDate = "0" + strDate;
		      }

		      return year + "-" + strMonth + "-" + strDate;
		   }
}
