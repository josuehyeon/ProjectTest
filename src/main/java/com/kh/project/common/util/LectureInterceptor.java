package com.kh.project.common.util;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.project.lecture.service.LectureService;

public class LectureInterceptor extends HandlerInterceptorAdapter {
	@Resource(name = "lectureService")
	private LectureService lectureService;
	
	
	@Override //렉쳐 인터셉터
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
		request.setAttribute("collegeList", lectureService.selectCollegeList());
		request.setAttribute("deptList", lectureService.selectDeptList());
		request.setAttribute("empList", lectureService.selectProfList());
		request.setAttribute("assiList", lectureService.selectAssiList());
	}


	

}
