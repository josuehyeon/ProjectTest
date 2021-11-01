package com.kh.project.board.service;

import java.util.List;

import com.kh.project.board.vo.BoardVO;
import com.kh.project.board.vo.CateVO;
import com.kh.project.board.vo.CommVO;

public interface BoardService {
	//게시글 목록 조회
	List<BoardVO> selectBoardList(BoardVO boardVO);
	
	//카테고리 리스트 조회
	List<CateVO> sltCateList();
	
	//카테고리 조회
	String sltCate(CateVO cvo);
	
	//게시글 등록
	void istBoard(BoardVO bvo);
	
	//게시글 삭제
	void dltBoard(BoardVO bvo);
	
	//게시글 상세 보기
	BoardVO detailBoard(int boardNo);
	
	//전체 데이터 조회 수
	int totalBoardCnt(BoardVO boardVO);
	
	//댓글 리스트 조회
	List<CommVO> sltCommList(CommVO cvo);
	
	//댓글 등록
	void istComm(CommVO cvo);
}
