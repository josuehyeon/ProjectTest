package com.kh.project.lecture.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.lecture.service.LectureService;
import com.kh.project.lecture.vo.LectureVO;

@Controller
@RequestMapping("/lecture")
public class LectureController {
	
	@Resource(name="lectureService")
	private LectureService lectureService;
	//메인페이지
	@GetMapping("/goMain")
	public String goMain() {
		return "lecture/main";
	}
	//강의등록폼
	@GetMapping("/goRegLecture")
	public String goRegLecture(Model model) {
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		model.addAttribute("empList", lectureService.selectProfList());
		model.addAttribute("assiList", lectureService.selectAssiList());
		return "lecture/reg_lecture";
	}
	//강의 조회
	@GetMapping("/selectLecture")
	public String selectLecture(Model model) {
		model.addAttribute("lectureList", lectureService.selectLectureList());
		return "lecture/lecture_list";
	}
	
	//강의등록하고 강의리스트로오기
	@RequestMapping("/regLecture")
	public String regLecture(LectureVO lectureVO) {
		System.out.println("111");
		lectureService.regLecture(lectureVO);
		
		return "redirect:/lecture/goRegLecture";
	}
	
	//강의 삭제
	@GetMapping("/deleteLecture")
	public String deleteLecture(LectureVO lectureVO) {
		System.out.println(111);
		lectureService.deleteLecture(lectureVO);
		return "redirect:/lecture/selectLecture";
	}
	
	//강의 수정 폼으로 가기 
	@GetMapping("/updateLecture")
	public String updateLecture(LectureVO lectureVO) {
		return "lecture/update_lecture";
	}
}









