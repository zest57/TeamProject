package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.MemberDTO;


@Mapper // @Mapper 생략가능 
public interface MemberMapper {
	
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
		
	// 로그인
	public MemberDTO memberLogin(MemberDTO dto);
	
	// 아이디로 cNum과 isRented 업데이트
	public int insertById(MemberDTO dto);
		
	
	// 회원 1명 가져오기
	public MemberDTO memberGetter(String id);
	
	//회원 id중복체크
	public String memberIdChk(String mId);
	
	
	
	  
	// 각 회원의 차량렌트여부
	public MemberDTO isRented(String id);
	
	
	
	// 멤버 isRented초기화 : 회원차량반납 
	 public void memberisRentedToNull(String id);
	
	
	
	
	
}
