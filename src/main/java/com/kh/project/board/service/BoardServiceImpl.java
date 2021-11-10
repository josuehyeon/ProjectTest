package com.kh.project.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.board.vo.BoardVO;
import com.kh.project.board.vo.CateVO;
import com.kh.project.board.vo.CommVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) {
		return sqlSession.selectList("boardMapper.selectBoardList", boardVO);
	}

	@Override
	public List<CateVO> sltCateList() {
		return sqlSession.selectList("boardMapper.sltCateList");
	}

	@Override
	public String sltCate(CateVO cvo) {
		return sqlSession.selectOne("boardMapper.sltCate");
	}

	@Override
	public void istBoard(BoardVO bvo) {
		sqlSession.insert("boardMapper.istBoard", bvo);
	}

	@Override
	public void dltBoard(BoardVO bvo) { //삭제 맞잖아 색기야 ;
		sqlSession.delete("boardMapper.dltBoard", bvo);
	}

	@Override
	public BoardVO detailBoard(BoardVO bvo) {
		return sqlSession.selectOne("boardMapper.detailBoard", bvo);
	}

	@Override
	public int totalBoardCnt(BoardVO boardVO) {
		return sqlSession.selectOne("boardMapper.totalBoardCnt", boardVO);
	}

	@Override
	public List<CommVO> sltCommList(CommVO cvo) {
		return sqlSession.selectList("boardMapper.sltCommList", cvo);
	}

	@Override
	public void istComm(CommVO cvo) {
		sqlSession.insert("boardMapper.istComm", cvo);
	}


}
