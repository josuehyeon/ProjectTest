package com.kh.project.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.admin.vo.AdminVO;
import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;
import com.kh.project.stuManage.vo.DoubleMajorVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//휴학
	@Override
	public List<EditStatusVO> selectStopList() {
		return sqlSession.selectList("editStatusMapper.selectStopList");
	}
	
	@Override
	public int updateStop(EditStatusVO editStatusVO) {
		return sqlSession.update("editStatusMapper.updateStop", editStatusVO);
	}

	@Override
	public void updateStopStatusToStudent(EditStatusVO editStatusVO) {
		sqlSession.update("editStatusMapper.updateStopStatusToStudent", editStatusVO);
	}
	
	@Override
	public int cancelEdit(EditStatusVO editStatusVO) {
		return sqlSession.update("editStatusMapper.cancelEdit", editStatusVO);
	}

	@Override
	public int deleteEdit(EditStatusVO editStatusVO) {
		return sqlSession.delete("editStatusMapper.deleteEdit", editStatusVO);
	}	

	//복학
	@Override
	public void updateAgain(EditStatusVO editStatusVO) {
		sqlSession.update("editStatusMapper.updateAgain", editStatusVO);
	}

	@Override
	public void updateAgainStatusToStudent(EditStatusVO editStatusVO) {
		sqlSession.update("editStatusMapper.updateAgainStatusToStudent", editStatusVO);
	}

	//자퇴
	@Override
	public void updateExit(EditStatusVO editStatusVO) {
		sqlSession.update("editStatusMapper.updateExit", editStatusVO);
	}

	@Override
	public void updateExitStatusToStudent(EditStatusVO editStatusVO) {
		sqlSession.update("editStatusMapper.updateExitStatusToStudent", editStatusVO);
	}


	//전과 신청 목록
	@Override
	public List<ChangeMajorVO> AdminChangeMajorRequestList() {
		return sqlSession.selectList("changeMajorMapper.AdminChangeMajorRequestList");
	}

	//전과 신청목록에서 모달로 개인정보 띄우기
	@Override
	public ChangeMajorVO modalStuInfoCM(ChangeMajorVO changeMajorVO) {
		return sqlSession.selectOne("changeMajorMapper.modalStuInfoCM", changeMajorVO);
	}
	
	@Override
	public List<AdminVO> selectNotice(StudentVO studentVO) {
		return sqlSession.selectList("adminMapper.selectNotice", studentVO);
	}

	
	//복수전공 신청목록
	@Override
	public List<DoubleMajorVO> AdminDoubleMajorRequestList() {
		return sqlSession.selectList("doubleMajorMapper.AdminDoubleMajorRequestList");
	}

	@Override
	public DoubleMajorVO modalStuInfoDM(DoubleMajorVO doubleMajorVO) {
		return sqlSession.selectOne("doubleMajorMapper.modalStuInfoDM", doubleMajorVO);
	}

	@Override
	public void insertYellowCard(AdminVO adminVO) {
		sqlSession.insert("adminMapper.insertYellowCard", adminVO);
	}

	@Override
	public StudentVO selectModalStudent(StudentVO studentVO) {
		return sqlSession.selectOne("adminMapper.selectModalStudent", studentVO);
	}
	
	
	
}
