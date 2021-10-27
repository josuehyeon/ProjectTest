package com.kh.project.lecture.controller;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.lecture.service.LectureService;
import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.lecture.vo.LectureViewVO;
import com.kh.project.lecture.vo.RegLectureSelectBoxVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;

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
	
	//강의등록 
	@ResponseBody
	@PostMapping("/selectCollAjax")
	public RegLectureSelectBoxVO selectCollAjax(Model model, CollegeVO collegeVO) {
		//학과 목록 조회
		List<DeptVO> deptList =  lectureService.selectDeptList2(collegeVO);
		//교수 목록 조회
		List<EmpVO> profList = lectureService.selectProfList2(collegeVO);
		//조교 목록 조회
		List<EmpVO> assiList =  lectureService.selectAssiList2(collegeVO);
		
		RegLectureSelectBoxVO vo = new RegLectureSelectBoxVO();
		vo.setDeptList(deptList);
		vo.setProfList(profList);
		vo.setAssiList(assiList);
		
		return vo;
	}
	
	
	
	//강의 리스트 조회
	@GetMapping("/selectLecture")
	public String selectLecture(Model model, LectureViewVO lectureViewVO) {
		model.addAttribute("lectureList", lectureService.selectLectureList(lectureViewVO));
		return "lecture/lecture_list";
	}
	
	//강의등록하고 다시 강의등록폼으로 가기
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
	@GetMapping("/updateLectureForm")
	public String updateLectureForm(Model model, LectureViewVO lectureViewVO) {
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		model.addAttribute("empList", lectureService.selectProfList());
		model.addAttribute("assiList", lectureService.selectAssiList());
		model.addAttribute("lectureList", lectureService.selectLectureList(lectureViewVO));
		return "lecture/update_lecture";
	}
	//강의 수정하고 리스트로 오기
	@PostMapping("/updateLecture")
	public String updateLecture(Model model, LectureVO lectureVO) {
		lectureService.updateLecture(lectureVO);
		return "redirect:/lecture/selectLecture";
	}
}









