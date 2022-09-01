package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.ImageDTO;
import kr.mr.model.VehicleDTO;


@Mapper // @Mapper 생략가능 
public interface ImageMapper {
		
	// 차량 등록(insert)
	public int imageInsert(ImageDTO idto);
	
	
	  //차량 1대의 이미지 리스트 가져오기 
	public ImageDTO imageGetter(int cNum);
	  	 


	
	
}
