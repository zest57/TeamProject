package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.mr.mapper.CategoryMapper;
import kr.mr.model.CategoryDTO;

import javax.servlet.http.HttpSession;

@Controller
public class CategoryController {
	
	@Autowired 
	private CategoryMapper categoryMapper;
	
	
	// 카테고리 등록뷰 페이지
	@RequestMapping("/catInput.do")
	public String catRegister() {
		
		return "category/cat_input";
	}
	
	
	
	// 카테고리등록
		@RequestMapping("/catInsert.do")
		public String categoryInsert(CategoryDTO dto , HttpSession session) {
			
			int cnt = categoryMapper.categoryInsert(dto);
			
			
			if(cnt > 0) { // 등록성공
				
				session.setAttribute("CatMsg", "카테고리 등록완료!!");
				return "redirect:catList.do";
				
			}else {
				session.setAttribute("CatMsg", "카테고리 등록실패!!");
				return "category/cat_list";
			}	
			
		}
	
	
	
	// 카테고리 리스트 가져오기
	@RequestMapping("/catList.do")
	public String categoryList(Model model , HttpSession session) {

		List<CategoryDTO> catList = categoryMapper.categoryList();
		
		/* session.setAttribute("catList", catList); */ 
		model.addAttribute("catList", catList);  
		
		return "category/cat_list";
	}
	
	
	
	// 카테고리 삭제
	@RequestMapping("/catDelete.do")
	public String categoryDelete(int cat_num, Model model) {
		
		categoryMapper.categoryDel(cat_num);
		
        List<CategoryDTO> catList = categoryMapper.categoryList();
		
		/* session.setAttribute("catList", catList); */ 
		model.addAttribute("catList", catList);
		
		
		return "category/cat_list";
	}
	
	
	
}