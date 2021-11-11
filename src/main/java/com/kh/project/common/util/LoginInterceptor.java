package com.kh.project.common.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override //로그인 인터셉터
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//세션 객체를 가져온다
		HttpSession session = request.getSession();
		//로그인 정보가 담겨있는 객체를 가져온다
		Object object = session.getAttribute("loginInfo");
		//만약 로그인이 되어있지 않으면
		if (object == null) {
			//로그아웃 처리를 한다
			response.sendRedirect("/portal/logout");
			//더 이상 컨트롤러 요청으로 가지 않도록 false로 반환한다
			return false;
			
		}
		return true;
		//true로 하면 컨트롤러 uri로 간다
		//return super.preHandle(request, response, handler);
	}
	
	

}
