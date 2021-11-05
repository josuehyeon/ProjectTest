package com.kh.project.common.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.lecture.vo.RegLectureSelectBoxVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;

@Controller
@RequestMapping("/common")
public class CommonController {
		//달력테스트
		@GetMapping("/calendar")
		public String calendar() {
			return "calendar/calendar";
		}
		
		// 강의등록
		@ResponseBody
		@PostMapping("/regCalendar")
		public String regCalendar(@RequestBody HashMap<String, Object> map) {
			System.out.println(map);
			

			return "";
		}
		

	
}









