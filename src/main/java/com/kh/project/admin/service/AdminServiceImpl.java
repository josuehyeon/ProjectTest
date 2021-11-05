package com.kh.project.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<EditStatusVO> selectEditList() {
		return sqlSession.selectList("editStatusMapper.selectEditList");
	}
	
	@Override
	public int updateEdit(EditStatusVO editStatusVO) {
		return sqlSession.update("editStatusMapper.updateEdit", editStatusVO);
	}

	@Override
	public int cancelEdit(EditStatusVO editStatusVO) {
		return sqlSession.update("editStatusMapper.cancelEdit", editStatusVO);
	}

	@Override
	public int deleteEdit(EditStatusVO editStatusVO) {
		return sqlSession.delete("editStatusMapper.deleteEdit", editStatusVO);
	}
	
	@Override
	public void updateStudentStatus(EditStatusVO editStatusVO) {
		sqlSession.update("editStatusMapper.updateStudentStatus", editStatusVO);
	}

	//전과 신청 목록
	@Override
	public List<ChangeMajorVO> AdminChangeMajorRequestList() {
		return sqlSession.selectList("changeMajorMapper.AdminChangeMajorRequestList");
	}

	//전과 신청목록에서 모달로 개인정보 띄우기
	@Override
	public ChangeMajorVO modalStuInfo() {
		return sqlSession.selectOne("changeMajorMapper.modalStuInfo");
	}
	
}
