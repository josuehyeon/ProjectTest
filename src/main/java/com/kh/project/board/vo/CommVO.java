package com.kh.project.board.vo;

public class CommVO {
	private int commNo;
	private int boardNo;
	private String commContent;
	private String commDate;
	private String commWriter;
	
	public CommVO() {}
	
	public int getCommNo() {
		return commNo;
	}

	public void setCommNo(int commNo) {
		this.commNo = commNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getCommContent() {
		return commContent;
	}
	public void setCommContent(String commContent) {
		this.commContent = commContent;
	}
	public String getCommDate() {
		return commDate;
	}
	public void setCommDate(String commDate) {
		this.commDate = commDate;
	}
	public String getCommWriter() {
		return commWriter;
	}
	public void setCommWriter(String commWriter) {
		this.commWriter = commWriter;
	}
	
}
