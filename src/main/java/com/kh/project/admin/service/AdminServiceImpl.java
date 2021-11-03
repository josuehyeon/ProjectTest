package com.kh.project.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.admin.vo.EditStatusVO;

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
	
}
