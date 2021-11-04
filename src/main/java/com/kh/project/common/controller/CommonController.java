package com.kh.project.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/common")
public class CommonController {
		//달력테스트
		@GetMapping("/calendar")
		public String calendar() {
			return "calendar/calendar";
		}
		

	
}









