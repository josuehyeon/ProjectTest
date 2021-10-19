package com.kh.project.portal.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.portal.service.PortalService;
import com.kh.project.student.service.StudentService;

//샘플입니다. 프로젝트 진행 시 해당 클래스는 삭제하시면 됩니다.
@Controller
@RequestMapping("/portal")
public class PortalController {
	@Resource(name = "portalService")
	private PortalService portalSerivce;
	
	@GetMapping("/sampleJsp")
	public String goSampleJsp() {
		return  "sample/sample";
	}
}









