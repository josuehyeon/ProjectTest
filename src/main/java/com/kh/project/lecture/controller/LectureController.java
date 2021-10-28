package com.kh.project.lecture.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.project.common.util.FileUploadUtil;
import com.kh.project.lecture.service.LectureService;
import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.lecture.vo.LectureViewVO;
import com.kh.project.lecture.vo.PdfVO;
import com.kh.project.lecture.vo.RegLectureSelectBoxVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;

@Controller
@RequestMapping("/lecture")
public class LectureController {

	@Resource(name = "lectureService")
	private LectureService lectureService;

	// 메인페이지
	@GetMapping("/goMain")
	public String goMain() {
		return "lecture/main";
	}

	// 강의등록폼
	@GetMapping("/goRegLecture")
	public String goRegLecture(Model model) {
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		model.addAttribute("empList", lectureService.selectProfList());
		model.addAttribute("assiList", lectureService.selectAssiList());
		return "lecture/reg_lecture";
	}

	// 강의등록
	@ResponseBody
	@PostMapping("/selectCollAjax")
	public RegLectureSelectBoxVO selectCollAjax(CollegeVO collegeVO) {

		// 학과 목록 조회
		List<DeptVO> deptList = lectureService.selectDeptList2(collegeVO);
		// 교수 목록 조회
		List<EmpVO> profList = lectureService.selectProfList2(collegeVO);
		// 조교 목록 조회
		List<EmpVO> assiList = lectureService.selectAssiList2(collegeVO);

		RegLectureSelectBoxVO vo = new RegLectureSelectBoxVO();
		vo.setDeptList(deptList);
		vo.setProfList(profList);
		vo.setAssiList(assiList);

		return vo;
	}

	// 강의 리스트 조회
	@GetMapping("/selectLecture")
	public String selectLecture(Model model, LectureViewVO lectureViewVO) {
		model.addAttribute("lectureList", lectureService.selectLectureList(lectureViewVO));
		return "lecture/lecture_list";
	}

	// 강의등록하고 다시 강의등록폼으로 가기
	@RequestMapping("/regLecture")
	public String regLecture(LectureVO lectureVO, MultipartHttpServletRequest multi) {
		// 첨부파일 upload---------
		// 파일이 첨부되는 input 태그의 name 속성 값
		Iterator<String> inputNames = multi.getFileNames();
		/* inputNames 안에는 file1, file2들어있다 */

		// 첨부될 폴더 지정
		String uploadPath = "C:\\Users\\조현재\\git\\ProjectTest\\src\\main\\webapp\\resources\\pdfs\\";

		// 모든 첨부파일 정보가 들어갈 공간
		PdfVO pdfVO = new PdfVO();

		/*
		 * 이건다음에 Map<String, String> fileNameMap = new HashMap<>(); fileNameMap.put("",
		 * "");
		 */

		// 다음에 들어갈 PDF_CODE의 숫자를 조회
		int nextPdfCode = lectureService.selectNextNumber();// IMG_005 이면 6이 들어온다

		// 다음에 들어갈 LEC_ID 조회
		String lecId = lectureService.selectNextLecId();

		while (inputNames.hasNext()) { /* input태그 file속성 갯수만큼 돈다 */
			String inputName = inputNames.next();

			/*
			 * file.getOriginalFilename(); 원래파일이름 file.getName(); 첨부된파일이름 file.getSize();
			 */

			// 실제 첨부 기능
			try {

				// 단일 첨부
				MultipartFile file = multi.getFile(inputName); // 모든 첨부파일에대한 객체정보 multi 이 줄이 진짜 파일정보 들고옴
				// 경로+시간+이름
				String attachedFileName = FileUploadUtil.getNowDateTime() + "_" + file.getOriginalFilename();
				// 경로+시간+이름
				String uploadFile = uploadPath + attachedFileName;
				file.transferTo(new File(uploadFile));

				//PdfVO pdfVO = new PdfVO();
				pdfVO.setPdfCode("PDF_" + String.format("%03d", nextPdfCode++));
				pdfVO.setOriginPdfName(file.getOriginalFilename());
				pdfVO.setAttachedPdfName(attachedFileName);
				pdfVO.setLecId(lecId);

				//pdfVOList.add(pdfVO);

			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		// 강의정보 insert
		
		lectureVO.setLecId(lecId);
		lectureService.regLecture(lectureVO);
		
		
		//강의 pdf 정보 insert----------- 
		lectureVO.setPdfVO(pdfVO);
		lectureService.insertPdf(lectureVO);
	
		//위 두개는 트렌젝션처리
		

		return "redirect:/lecture/goRegLecture";
	}

	// 강의 삭제
	@GetMapping("/deleteLecture")
	public String deleteLecture(LectureVO lectureVO) {
		System.out.println(111);
		lectureService.deleteLecture(lectureVO);
		return "redirect:/lecture/selectLecture";
	}

	// 강의 수정 폼으로 가기
	@GetMapping("/updateLectureForm")
	public String updateLectureForm(Model model, LectureViewVO lectureViewVO) {
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		model.addAttribute("empList", lectureService.selectProfList());
		model.addAttribute("assiList", lectureService.selectAssiList());
		model.addAttribute("lectureList", lectureService.selectLectureList(lectureViewVO));
		return "lecture/update_lecture";
	}

	// 강의 수정하고 리스트로 오기
	@PostMapping("/updateLecture")
	public String updateLecture(Model model, LectureVO lectureVO) {
		lectureService.updateLecture(lectureVO);
		return "redirect:/lecture/selectLecture";
	}

}
