package com.kh.project.admin.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.admin.service.AdminService;

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
	
	//학적 변동승인
	@GetMapping("/permissionToStudent")
	public String permissionToStudent() {
		return "admin/permissionToStudent";
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









