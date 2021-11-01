package com.kh.project.common.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.common.vo.MainMenuVO;

@Service("commonService")
public class CommonServiceImpl implements CommonService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<MainMenuVO> sltMenuList() {
		return sqlSession.selectList("menuMapper.sltMenuList");
	}
	
}
