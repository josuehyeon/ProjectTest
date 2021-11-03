package com.kh.project.admin.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.admin.service.AdminService;
import com.kh.project.admin.vo.EditStatusVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource(name = "adminService")
	private AdminService adminService;
	
	//메인
	@GetMapping("/goMain")
	public String goMain() {
		return "admin/main";
	}
	
	//학생 조회
	@GetMapping("/selectStu")
	public String selectStu() {
		return "admin/selectStu";
	}
	
	//성적 관리
	@GetMapping("/manageGrade")
	public String manageGrade() {
		return "admin/manageGrade";
	}
	
	//학적 변동승인 페이지 이동
		@GetMapping("/editStatus")
		public String editStatus(Model model) {
			model.addAttribute("selectEditList", adminService.selectEditList());
			return "admin/editStatus"; 
		} 
		
		//학적변동 승인완료
		@GetMapping("/editStatus1")
		public String editStatus1(Model model, EditStatusVO editStatusVO) {
			int[] a = editStatusVO.getStuNoList();
			
			model.addAttribute("updateEdit", adminService.updateEdit(editStatusVO));
			//휴학 신청페이지에서 학적상태를 휴학으로 변경
			adminService.updateStudentStatus(editStatusVO);
			
			return "redirect:/admin/editStatus";
		}
		
		//학적변동 승인대기로 돌리기
		@GetMapping("/editStatus2")
		public String editStatus2(Model model, EditStatusVO editStatusVO) {
			int[] a = editStatusVO.getStuNoList();
			model.addAttribute("cancelEdit", adminService.cancelEdit(editStatusVO));
			return "redirect:/admin/editStatus";
		}
		
		//학적변동 목록삭제
		@GetMapping("editStatus3")
		public String editStatus3(Model model, EditStatusVO editStatusVO) {
			int[] a = editStatusVO.getStuNoList();
			
			model.addAttribute("deleteEdit", adminService.deleteEdit(editStatusVO));
			return "redirect:/admin/editStatus";
		}
	
	//학사경고, 제적
	@GetMapping("/stuNotice")
	public String stuNotice() {
		return "admin/stuNotice";
	}
	
	//전과, 복수전공
	@GetMapping("/stuSwitch")
	public String stuSwitch() {
		return "admin/stuSwitch";
	}
	
}









