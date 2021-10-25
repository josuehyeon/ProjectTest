package com.kh.project.gradeManage.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.gradeManage.vo.StuGradeVO;

@Service("gradeManageService")
public class GradeManageServiceImpl implements GradeManageService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override //학생 성적 리스트
	public List<StuGradeVO> selectStuGradeList() {
		return sqlSession.selectList("gradeMapper.selectStuGradeList");
	}

}
