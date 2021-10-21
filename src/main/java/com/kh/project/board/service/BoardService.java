package com.kh.project.board.service;

import java.util.List;

import com.kh.project.board.vo.BoardVO;

public interface BoardService {
	//게시글 목록 조회
	List<BoardVO> selectBoardList();
}
