package com.kh.project.common.util;

import java.util.Calendar;

public class FileUploadUtil {
	//현재 날짜와 시간을 문자열로 리턴 
	public static String getNowDateTime() {
		//캘린더 객체 생성
		Calendar cal = Calendar.getInstance();
		//현재 날짜 및 시간을 문자열로 저장할 변수 
		String nowDateTime ="";
		
		//현재 날짜 및 시간을 문자열 생성
		
		nowDateTime += cal.get(Calendar.YEAR);
		nowDateTime += cal.get(Calendar.MONTH)+1;
		nowDateTime += cal.get(Calendar.DATE);
		nowDateTime += cal.get(Calendar.HOUR);
		nowDateTime += cal.get(Calendar.MINUTE);
		nowDateTime += cal.get(Calendar.SECOND);
		nowDateTime += cal.get(Calendar.MILLISECOND);
		//2021101010101010
		return nowDateTime;
	
	}
	//파일 첨부 사전 준비 기능
	
	
	//파일 업로드 기능 
	

}
