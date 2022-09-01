package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.MyPageMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.mapper.WishMapper;
import kr.mr.model.CategoryDTO;
import kr.mr.model.MemberDTO;
import kr.mr.model.RevHistoryDTO;
import kr.mr.model.VehicleDTO;
import kr.mr.model.WishDTO;


@Controller
public class WishListController {
	
	@Autowired
	   private WishMapper wishMapper;
	
	@Autowired
	private MyPageMapper mypageMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	   
	   
	   @RequestMapping("/wishList.do") 
	      public String wishInsert(int cNum,String id,HttpSession session ,HttpServletRequest request,  Model model) {
		   
		   System.out.println("id : "+id);
		   
		   WishDTO wDto = new WishDTO();
		   
	   
		   wDto.setcNum(cNum);
		   wDto.setId(id);
		   
		   if(wDto != null && cNum > -1 && id != null && id != "") {
			   

		   wishMapper.wishInsert(wDto);
		   
		   List<WishDTO> wishList =  wishMapper.wishList2(id);
		   
		   model.addAttribute("wishList", wishList);
		   
		   wishList.toString();
		   
		   
		   
		   return "wish/wish_list"; 
		   
		   
		   
		   }else {
			   System.out.println("로그인안하면 실패!");
			   
			   session.setAttribute("WishInsertFail", "로그인에 실패했습니다!");
			   return "redirect:/home.do";
		   }

	          
	   }  
	   
	   @RequestMapping("/deleteWishList.do") 
	   public String deleteWishList(int cNum,String id, Model model) {
		   

		   int n = wishMapper.deleteWishList(cNum);
	
		   
		   if(n>0) {
			   
			   
			   List<WishDTO> wishList =  wishMapper.wishList2(id);
			   
			   model.addAttribute("wishList", wishList);
			 
			   
			   RevHistoryDTO hDto = mypageMapper.revHistory2(id);
				  
			   model.addAttribute("hDto", hDto);
			   
			   MemberDTO member = memberMapper.memberGetter(id);		
				model.addAttribute("member", member);
			   
			   
		   }else {
			
		}
		   
		   
		  return "mypage/myPageList"; 
		
		   }
		   
	   
	   @RequestMapping("/deleteWishListPage.do") 
	   public String deleteWishListPage(int cNum,String id, Model model) {
		   

		   int n = wishMapper.deleteWishList(cNum);
	
		   
		   
		   if(n>0) {
			   
			   
			   List<WishDTO> wishList =  wishMapper.wishList2(id);
			   
			   model.addAttribute("wishList", wishList);
			   
			   
		   }else {
			
		}
		   
		   
		   return "wish/wish_list"; 
		   }

	}