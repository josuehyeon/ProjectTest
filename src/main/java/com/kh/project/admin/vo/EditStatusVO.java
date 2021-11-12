package com.kh.project.admin.vo;

import com.kh.project.portal.vo.MemberVO;

public class EditStatusVO {
	private int editNo;
	private int stuNo;
	private String nowStatus;
	private String afterStatus;
	private String applyDate;
	private String approvalDate;
	private String ingStatus;
	
	private String memName;
	
	private MemberVO memberInfo;
	private int[] stuNoList;
	
	private int[] stuNoListExit;
	private int[] stuNoListStop;
	private int[] stuNoListAgain;
	
	
	
	
	
	
	public int[] getStuNoListExit() {
		return stuNoListExit;
	}
	public void setStuNoListExit(int[] stuNoListExit) {
		this.stuNoListExit = stuNoListExit;
	}
	public int[] getStuNoListStop() {
		return stuNoListStop;
	}
	public void setStuNoListStop(int[] stuNoListStop) {
		this.stuNoListStop = stuNoListStop;
	}
	public int[] getStuNoListAgain() {
		return stuNoListAgain;
	}
	public void setStuNoListAgain(int[] stuNoListAgain) {
		this.stuNoListAgain = stuNoListAgain;
	}
	public int[] getStuNoList() {
		return stuNoList;
	}
	public void setStuNoList(int[] stuNoList) {
		this.stuNoList = stuNoList;
	}
	public String getNowStatus() {
		return nowStatus;
	}
	public void setNowStatus(String nowStatus) {
		this.nowStatus = nowStatus;
	}
	public MemberVO getMemberInfo() {
		return memberInfo;
	}
	public void setMemberInfo(MemberVO memberInfo) {
		this.memberInfo = memberInfo;
	}
	
	
	public String getAfterStatus() {
		return afterStatus;
	}
	public void setAfterStatus(String afterStatus) {
		this.afterStatus = afterStatus;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
//	public MemberVO getMemberInfo() {
//		return memberInfo;
//	}
//	public void setMemberInfo(MemberVO memberInfo) {
//		this.memberInfo = memberInfo;
//	}
	public int getEditNo() {
		return editNo;
	}
	public void setEditNo(int editNo) {
		this.editNo = editNo;
	}
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	public String getApprovalDate() {
		return approvalDate;
	}
	public void setApprovalDate(String approvalDate) {
		this.approvalDate = approvalDate;
	}
	public String getIngStatus() {
		return ingStatus;
	}
	public void setIngStatus(String ingStatus) {
		this.ingStatus = ingStatus;
	}
}
