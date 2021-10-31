package com.kh.project.portal.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.portal.service.PortalService;
import com.kh.project.portal.vo.EmailVO;
import com.kh.project.portal.vo.MemberVO;

import javax.mail.internet.MimeMessage; 
import org.springframework.mail.javamail.JavaMailSenderImpl; 
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;


@Controller
@RequestMapping("/portal")
public class PortalController {
	@Resource(name = "portalService")
	private PortalService portalSerivce;
	
	@Autowired 
	private JavaMailSenderImpl mailSender;

	
	//포탈 첫 페이지 (로그인창)
	@GetMapping("/loginJsp")
	public String gologinJsp() {
		return  "portal/login";
	}
	
	//처리 "로그인"
	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session) {
		MemberVO loginInfo = portalSerivce.login(memberVO);
		
		if(loginInfo != null) {
			session.setAttribute("loginInfo", loginInfo);
		}
		return "portal/login_result";
	}
	
	//이동 "로그인 후 메인페이지"
	@GetMapping("/mainJsp")
	public String goMainJsp() {
		return "portal/main";
	}
	
	//처리 "로그아웃"
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginInfo");
		return "redirect:/portal/loginJsp";
	}

	//처리 "이메일 보내기"
	@PostMapping("/sendMail")
	public String sendMail(EmailVO email) { 
		final MimeMessagePreparator preparator = new MimeMessagePreparator() { 
			@Override 
			public void prepare(MimeMessage mimeMessage) throws Exception { 
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8"); 
				
				helper.setFrom("sugarcoateddrug@gmail.com"); 
				helper.setTo(email.getTo());
				helper.setSubject("임시 비밀번호 발송");
				
				String imsiPw = getRamdomPassword(6);
				helper.setText(imsiPw, true); 
			} 
		}; 
		mailSender.send(preparator); 
		
		return "portal/send_mail_result"; 
		
	}
	
	public static String getRamdomPassword(int length) {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7',
			'8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 
			'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
			'U', 'V', 'W', 'X', 'Y', 'Z' };

		int index = 0;
		StringBuffer sb = new StringBuffer();
	  
		for (int i = 0; i < length; i++) {
			index = (int) (charSet.length * Math.random()); // 36 * 생성된 난수를  Int로 추출 (소숫점제거)
			sb.append(charSet[index]);
		}
		return sb.toString();
	}
	
	@ResponseBody	//Ajax "임시 비밀번호 관련"
	@PostMapping("/chkEmailAjax")
	public MemberVO chkEmailAjax(MemberVO memberVO) {
		return portalSerivce.selectEmailToFindPw(memberVO) ;
	}	
	
}









