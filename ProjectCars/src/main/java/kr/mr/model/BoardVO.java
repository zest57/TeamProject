package kr.mr.model;

import java.util.Date;

//springMVC 구조 : Controller > Service > DAO > DateBase
public class BoardVO {
	// 게시판
	private int bid; // 글 번호
	private String subject; // 제목
	private String contents; // 내용
	private int hit; // 조회수
	private String writer; // 글쓴이
	
	private Date regDate; // 작성날짜
	
	private String uid; // 작성자 식별
	
	// 게시판 검색
	private String searchType; // 작성자 제목 내용 검색
	private String keyWord; // 검색키워드
	
	// 페이징
	private int startIndex; // 시작 페이지(1 또는 0)
	private int cntPerPage; // 한 페이지당 게시글 수(10개)
	
	public BoardVO(){} // 기본 생성자 : mapper inject용(연결)
	
	
	
	

	@Override
	public String toString() {
		return "BoardVO [bid=" + bid + ", subject=" + subject + ", contents=" + contents + ", hit=" + hit + ", writer="
				+ writer + ", uid=" + uid + ", searchType=" + searchType + ", keyWord=" + keyWord + ", startIndex="
				+ startIndex + ", cntPerPage=" + cntPerPage + "]";
	}



	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	
	
}
