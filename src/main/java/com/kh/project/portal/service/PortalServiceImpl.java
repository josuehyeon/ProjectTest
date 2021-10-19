package com.kh.project.portal.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("portalService")
public class PortalServiceImpl implements PortalService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}
