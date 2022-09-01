package kr.mr.service;

import java.util.List;

import kr.mr.model.BoardVO;

//springMVC 구조 : Controller > Service > DAO > DateBase
public interface BoardService { // Mapper에서 구현한 기능을 선언
	public List<BoardVO> getList(BoardVO bvo); // 게시글 리스트 가져오기
	
	public void register(BoardVO board); // 등록
	
//	public BoardVO view(int bid); // 게시글 보기
	
	public BoardVO view(int bid, String mode); // 게시글 보기
	
	public int remove(int bid); // 게시글 삭제
	
	public int modify(BoardVO board); // 게시글 수정
	
	public int totalCnt(BoardVO bvo);
}
