package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.VehicleDTO;


@Mapper // @Mapper 생략가능 
public interface VehicleMapper {
		
	// 차량 등록(insert)
	public int vehicleInsert(VehicleDTO dto);
	
	// 차량 전체리스트 가져오기
	public List<VehicleDTO> vehicleList(); 
	
	// 차량 삭제
	public int vehicleDel(int cNum);
	
	// 차량 정보 수정 페이지
	public VehicleDTO vehicleUpdateView(int cNum);
	
	// 차량 정보 수정
	public int vehicleUpdateOk(VehicleDTO dto);

	
	
	
	// 차량 1개의 정보 모두 가져오기(car_main용도)
	public VehicleDTO vehicleGetter(int cNum);
	
	// 추천으로 검색
	public List<VehicleDTO> specGetter(String cSpec);
	
	
	// 차량 예약 상태 	
	public int vehicleStatusY(int cNum);
	
	
	
	// 차량반납 status "N" 
	 public void vehicleStatusToN(int cNum);
	
	
}
