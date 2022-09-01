package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.CategoryDTO;


@Mapper // @Mapper 생략가능 
public interface CategoryMapper {
		
	// 카테고리 등록(insert)
	public int categoryInsert(CategoryDTO dto);
	
	// 카테고리 전체리스트 가져오기
	public List<CategoryDTO> categoryList(); 
	
	// 카테고리 삭제
	public int categoryDel(int cat_num);
	
		

	
}
