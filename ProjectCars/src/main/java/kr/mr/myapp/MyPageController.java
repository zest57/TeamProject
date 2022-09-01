package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.MyPageMapper;
import kr.mr.mapper.WishMapper;
import kr.mr.model.CategoryDTO;
import kr.mr.model.MemberDTO;
import kr.mr.model.RevHistoryDTO;
import kr.mr.model.WishDTO;

@Controller
public class MyPageController {

	@Autowired
	private MyPageMapper mypageMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private WishMapper wishMapper;
	
	// 마이페이지 뷰페이지
	@RequestMapping("/myPageList.do")
	public String myPageList(Model model,String mId) {
		
		
		
		
		  RevHistoryDTO hDto = mypageMapper.revHistory2(mId);
		  
		  model.addAttribute("hDto", hDto);
		 
		 
		
		
		
		   List<WishDTO> wishList =  wishMapper.wishList2(mId);
		   
		   model.addAttribute("wishList", wishList);
		   
		   wishList.toString();
		   		
		
		
		
		MemberDTO member = memberMapper.memberGetter(mId);		
		model.addAttribute("member", member);

		return "mypage/myPageList";
	}

	// 상세정보 뷰페이지
	@RequestMapping("/myMemberModify.do")
	public String myMemberModify(Model model,String mId) {
		
	
		MemberDTO member = memberMapper.memberGetter(mId);		
		model.addAttribute("member", member);

		return "mypage/myMemberModify";

	}
	
	// 상세정보 수정완료
	@RequestMapping("/myMemberModifyOk.do")
	public String myMemberModifyOk(@RequestParam String pwOld, Model model,MemberDTO member, HttpServletRequest request) {
		
	  
        String pw = request.getParameter("pw"); 
        System.out.println("pw :" + pw);
      
        String pwOld1 = request.getParameter("pwOld"); 
        System.out.println("pwOld :" + pwOld1);
		/*
		 * if(pw !=null ) { member.setPw(pw);
		 * 
		 * }else if(pwOld1 != null){ member.setPw(pwOld1); }
		 */
      if(pw == null || pw == "") {
    	  member.setPw(pwOld1);
    	}else {
    		
    		member.setPw(pw);
    	}
      
		
		int n = memberMapper.memberUpdate(member);		
		
		if(n>0) {
			
			model.addAttribute("member", member);
			System.out.println("성공!!");
			return "mypage/myMemberModify";
			
		}else {
			model.addAttribute("member", member);
			System.out.println("실패!!");
			return "mypage/myMemberModify";
		}

		
	}

	
	/*
	 * // 위시리스트 뷰페이지
	 * 
	 * @RequestMapping("/myWishList.do") public String myWishList() {
	 * 
	 * return "wish/myWishList"; }
	 */
	 
	// 오시는길 뷰페이지
	@RequestMapping("/myDirection.do")
	public String myDirection() {

		return "mypage/myDirection";
	}
		
	
	  
	  // 인보이스(구매내역)	  
	  @RequestMapping("/myInvoice.do") 
	  public String myInvoice() {
	  
	  return "payment/myInvoice"; 
	  
	  }
	  
	  
	  

	  
	  
	  
	  
	 
}