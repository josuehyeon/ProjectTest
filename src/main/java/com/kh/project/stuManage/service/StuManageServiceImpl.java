package com.kh.project.stuManage.service;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.DoubleMajorVO;


@Service("stuManageService")
public class StuManageServiceImpl implements StuManageService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	//휴학 1
	@Override
	public StudentVO goStopStudy(int memNo) {
		return sqlSession.selectOne("studentMapper.goStopStudy", memNo);
	}

	//휴학 2
	@Override
	public int insertStopStudy(EditStatusVO editStatusVO) {
		return sqlSession.insert("studentMapper.insertStopStudy", editStatusVO);
	}

	//휴학 3
	@Override
	public int selectWaitCntStop(int memNo) {
		return sqlSession.selectOne("studentMapper.selectWaitCntStop", memNo);
	}

	
	@Override
	public StudentVO selectStuInfoForChange(MemberVO memberVO) {
		return sqlSession.selectOne("changeMajorMapper.selectStuInfoForChange", memberVO);
	}

	@Override
	public void insertChangeMajorTable(ChangeMajorVO changeMajorVO) {
		sqlSession.insert("changeMajorMapper.insertChangeMajorTable", changeMajorVO);
	}

	@Override
	public List<ChangeMajorVO> selectChangeMajorList(MemberVO memberVO) {
		return sqlSession.selectList("changeMajorMapper.selectChangeMajorList", memberVO);
	}

	@Override
	public void insertDoubleMajorTable(DoubleMajorVO doubleMajorVO) {
		sqlSession.insert("doubleMajorMapper.insertDoubleMajorTable", doubleMajorVO);
	}

	@Override
	public List<DoubleMajorVO> selectDoubleMajorList(MemberVO memberVO) {
		return sqlSession.selectList("doubleMajorMapper.selectDoubleMajorList", memberVO);
	}

	@Override	//단과 대학 목록 조회
	public List<CollegeVO> selectCollegeList() {
		return sqlSession.selectList("collegeMapper.selectCollegeList");
	}

	@Override	//학과 목록 조회
	public List<DeptVO> selectDeptList2(DeptVO deptVO) {
		return sqlSession.selectList("deptMapper.selectDeptList2", deptVO);
	}

	
	 @Override //학생 목록 조회 
	 public List<StudentVO> selectStudentList(StudentVO studentVO) { 
		 return sqlSession.selectList("memberMapper.selectStudentList", studentVO); 
	 }
	 	
	//복학 1
	@Override
	public StudentVO goAgainStudy(int memNo) {
		return sqlSession.selectOne("studentMapper.goAgainStudy", memNo);
	}
	
	//복학 2
	@Override
	public int insertAgainStudy(EditStatusVO editStatusVO) {
		return sqlSession.insert("studentMapper.insertAgainStudy", editStatusVO);
	}

	//복학 3
	@Override
	public int selectWaitCntAgain(int memNo) {
		return sqlSession.selectOne("studentMapper.selectWaitCntAgain", memNo);
	}

	//자퇴 1
	@Override
	public StudentVO goExitStudy(int memNo) {
		return sqlSession.selectOne("studentMapper.goExitStudy", memNo);
	}

	//자퇴 2
	@Override
	public int insertExitStudy(EditStatusVO editStatusVO) {
		return sqlSession.insert("studentMapper.insertExitStudy", editStatusVO);
	}

	//자퇴 3
	@Override
	public int selectWaitCntExit(int memNo) {
		return sqlSession.selectOne("studentMapper.selectWaitCntExit", memNo);
	}
	
}
