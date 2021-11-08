package com.kh.project.stuInfo.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.lecture.vo.TimetableViewVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

@Service("stuInfoService")
public class StuInfoServiceImpl implements StuInfoService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override // 학생 정보 조회 (학생 테이블)
	public StudentVO selectStuMyInfo(int memNo) {
		return sqlSession.selectOne("studentMapper.selectStuMyInfo", memNo);
	}

	@Override // 현재 비밀번호 확인
	public MemberVO chkPw(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.selectForCheckPw", memberVO);
	}

	@Override // 비밀번호 변경
	public int changePw(MemberVO memberVO) {
		return sqlSession.update("memberMapper.changePw", memberVO);
	}

	@Override	//시간표 조회 (임시)
	public List<TimetableViewVO> selectTimetableList(int stuNo) {
		return sqlSession.selectList("lectureMapper.selectTimetableList", stuNo);
	}

	//@Override	//학생 목록 조회
	//public List<StudentVO> selectStudentList() {
	//	return sqlSession.selectList("studentMapper.selectStudentList");
	//}

	

	
	
}
