package kr.mr.mapper;

import java.util.List;


import kr.mr.model.CategoryDTO;
import kr.mr.model.MemberDTO;
import kr.mr.model.RevHistoryDTO;

public interface MyPageMapper {
	
	// 회원 전체리스트 가져오기
	public List<MemberDTO> memberList(); 
	
	// 회원 저장(insert)
	public int memberInsert(MemberDTO dto);
	
	// 회원 삭제
	public int memberDel(int no);
	
	// 회원 정보 상세보기
	public MemberDTO memberInfo(int no);
	
	// 회원 정보 수정
	public int memberUpdate(MemberDTO dto);
	
	// 카테고리 등록(insert)
	public int categoryInsert(CategoryDTO dto);
	
	// 카테고리 전체리스트 가져오기
	public List<CategoryDTO> categoryList(); 
	
	// 카테고리 삭제
	public int categoryDel(int cat_num);
	
	// 마이페이지 - 주문배송내역
	public RevHistoryDTO revHistory(String id);
	
	// 마이페이지 - 차량반납
	public RevHistoryDTO revHistory2(String id);
	
	
	// 렌트리스트 가져오기
	public List<RevHistoryDTO> reservationList();
	
}
