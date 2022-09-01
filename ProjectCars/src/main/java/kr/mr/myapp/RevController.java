package kr.mr.myapp;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.MyPageMapper;
import kr.mr.mapper.ReserveMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.mapper.WishMapper;
import kr.mr.model.MemberDTO;
import kr.mr.model.ReserveDTO;
import kr.mr.model.RevHistoryDTO;
import kr.mr.model.VehicleDTO;
import kr.mr.model.WishDTO;

@Controller
public class RevController {


	@Autowired
	private ReserveMapper reserveMapper;
	
	@Autowired
	private VehicleMapper vehicleMapper;
	
	@Autowired
	private MemberMapper memberMapper;	

	@Autowired
	private MyPageMapper mypageMapper;
	
	@Autowired
	private WishMapper wishMapper;

	// 즉시예약 페이지 전환
	@RequestMapping("/nowRev.do")
	public String reserveNow(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		
		return "reserve/NowReserve";
		
	}
	
	// 1일 예약 페이지 전환
	@RequestMapping("/oneDayRev.do")
	public String reserveOneDay(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		
		return "reserve/DayReserve";

	}

	// 장기 예약 페이지 전환
	@RequestMapping("/longDayRev.do")
	public String reserveLongDay(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		return "reserve/LongReserve";

	}



	// 예약정보 입력 -> 결제
	   @RequestMapping("/onedaypayment.do")
	   public String onedayreserveInsert(ReserveDTO rDto,int price,int cNum,Model model, HttpSession session, HttpServletRequest request)throws IOException{
	      
	      String datepicker1 = request.getParameter("datepicker1");
	      System.out.println("datepicker1 : " +  datepicker1);
	      
	      
	      Date reDate1 = Date.valueOf(datepicker1);
	      System.out.println("reDate1 : " + reDate1 );
	      
	      
	      rDto.setRevDate1(reDate1);
	      
	      
	      int totalPrice = 1 * price;
	      
	        rDto.setTotalPrice(totalPrice); 
		      
		      
	      int cnt = reserveMapper.reserveInsert(rDto);

	      if (cnt > 0) { // 등록성공

	         // 회원정보
	         List<ReserveDTO> revList = reserveMapper.reserveList();      
	         model.addAttribute("revList", revList);
	         
	         // cNum으로 차량 정보 가져오기
	         VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
	         
	         model.addAttribute("vDto", vDto);
	         
	         // 예약정보 가져오기
	         
	         model.addAttribute("rDto", rDto);
	         
	         
	      }
	         
	         return "payment/payment";

	   }
	   
	// 예약정보 입력 -> 결제
	   @RequestMapping("/longdaypayment.do")
	   public String reserveInsert(ReserveDTO rDto,String price,int cNum,Model model, HttpSession session, HttpServletRequest request)throws IOException{
	      
	      // 파라미터 받기
	      String datepicker1 = request.getParameter("datepicker1");
	      System.out.println("datepicker1 : " +  datepicker1);
	      String datepicker2 = request.getParameter("datepicker2");
	      System.out.println("datepicker2 : " +  datepicker2);
	      
	      
	      
	      int eachPrice = Integer.parseInt(price);
	      
	      
	      System.out.println("eachPrice : " +  eachPrice);
	      
	      
	      
	      
	      
	      // String -> Date(SQL)타입 형변환
	      Date reDate1 = Date.valueOf(datepicker1);
	      System.out.println("reDate1 : " + reDate1 );
	      Date reDate2 = Date.valueOf(datepicker2);
	      System.out.println("reDate2 : " + reDate2 );
	      
	      // 예약기간 계산(날짜, 시간 계산)
	      long diffSec = (reDate2.getTime() - reDate1.getTime()) / 1000; //초 차이
	        long diffMin = (reDate2.getTime() - reDate1.getTime()) / 60000; //분 차이
	        long diffHor = (reDate2.getTime() - reDate1.getTime()) / 3600000; //시 차이
	        long diffDays = diffSec / (24*60*60); //일자수 차이
	      
	        System.out.println(diffSec + "초 차이");
	        System.out.println(diffMin + "분 차이");
	        System.out.println(diffHor + "시 차이");
	        System.out.println(diffDays + "일 차이");
	        
	        // long -> int 형변환
	        int dateCnt = (int)diffDays;
	        System.out.println("dateCnt :" + dateCnt);
	        
	        
	        
	        int totalPrice = dateCnt * eachPrice;
	        
	        System.out.println( "totalPrice : "+totalPrice);
	        
	        
     
	        // dto에 입력하기
	        rDto.setRevDate1(reDate1);
	        rDto.setRevDate2(reDate2);
	        rDto.setDateCnt(dateCnt); 
	        rDto.setTotalPrice(totalPrice); 
	      
	      
	      int cnt = reserveMapper.reserveInsert(rDto);

	      if (cnt > 0) { // 등록성공

	         // 회원정보
	         List<ReserveDTO> revList = reserveMapper.reserveList();      
	         model.addAttribute("revList", revList);
	         
	         // cNum으로 차량 정보 가져오기
	         VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
	         
	         model.addAttribute("vDto", vDto);
	         
	         // 예약정보 가져오기
	         
	         model.addAttribute("rDto", rDto);
	         
	         
	         
	         
	         return "payment/payment";

	         
	         
	         
	      } else {
	         session.setAttribute("1", "1 1!!");
	         return "reserve/myNowReserv";

	      }

	   }
	
	
	
	   @RequestMapping("/paymentOk.do") 
	   public String paymentOk(VehicleDTO vDto, MemberDTO mDto, String id, Model model,int cNum) {
		   		   
		   
		   int cnt = vehicleMapper.vehicleStatusY(cNum);
		   
		   if(cnt>0) {
			   
		   		
			   System.out.println("id :"+id);
			   System.out.println("cNum :"+cNum);
			   
			   mDto.setId(id);   
			   mDto.setcNum(cNum);   
			   
			   memberMapper.insertById(mDto);
			   
			   
			   System.out.println("상태업데이트 성공!");

		   }else {
			   System.out.println("상태업데이트 실패!");

		   }
		   
		   

		   // 차량정보 넣기
		   
		   
		   
		   
			vehicleMapper.vehicleGetter(cNum);
			model.addAttribute("vDto", vDto);
			
			
			
			
			System.out.println("status : "+vDto.getStatus());
		   
		   return "payment/paymentOk"; 
		   
	   }  
	   
	   
	   @RequestMapping("/bankPaymentOk.do") 
	   public String bankpaymentOk(VehicleDTO vDto, MemberDTO mDto,RevHistoryDTO rDto,String account , String id, Model model,int cNum) {
		   
			  
		   int cnt = vehicleMapper.vehicleStatusY(cNum);
		   
		   if(cnt>0) {
			   
		   		
			   System.out.println("id :"+id);
			   System.out.println("cNum :"+cNum);
			   
			   mDto.setId(id);   
			   mDto.setcNum(cNum);   
			   
			   memberMapper.insertById(mDto);
			   
			   
			   System.out.println("상태업데이트 성공!");

		   }else {
			   System.out.println("상태업데이트 실패!");

		   }
		   
		   

		   // 차량정보 넣기

			vehicleMapper.vehicleGetter(cNum);
			model.addAttribute("vDto", vDto);
			
			rDto = mypageMapper.revHistory(id);		
			rDto.setAccount(account);
			
			model.addAttribute("rDto", rDto);

			
			
			System.out.println("status : "+vDto.getStatus());
			 
		   
		   return "payment/bank_paymentOk"; 
		   
	   }  
	   	   
	   
		  // 차량반납 페이지
		  @RequestMapping("/vehicleReturn.do") 
		  public String vehicleReturn(Model model,String mId) {
			  
			  RevHistoryDTO hDto = mypageMapper.revHistory2(mId);		  
			  model.addAttribute("hDto", hDto);

			MemberDTO member = memberMapper.memberGetter(mId);		
			model.addAttribute("member", member);
			  
			  
			  return "mypage/vehicle_return"; 
			  
		  }
		  
		  // 차량반납 완료
		  @RequestMapping("/vehicleReturnOk.do") 
		  public String vehicleReturnOk(Model model,String mId) {
			  
			  
			RevHistoryDTO hDto = mypageMapper.revHistory2(mId);  
			  
			
			int cNum = -1;
			
			cNum = hDto.getcNum();
			
			System.out.println("cNum : "+cNum);

			MemberDTO member = memberMapper.memberGetter(mId);		
			model.addAttribute("member", member);
			
			//멤버렌트한 차량반납
			memberMapper.memberisRentedToNull(mId);
			  
			// 차량 상태 반납상태로 전환
			vehicleMapper.vehicleStatusToN(cNum);
			
			/*
			 * // hDto 메모리등록 model.addAttribute("hDto", hDto);
			 */
			
			
			reserveMapper.deleteRevHistory(cNum); 
			
			  return "mypage/vehicle_return"; 
			  
		  }
		  
		// 렌트 전체리스트 가져오기
	      @RequestMapping("/reservationList.do")
	      public String myPageList(Model model) {
	      
	          
	         
	    	 List<RevHistoryDTO> reservationList = mypageMapper.reservationList();
	           
	         model.addAttribute("reservationList", reservationList);
	         
	         return "admin/reservationList";
	      }		  
		  
		  
		  
		  
		  
	

}
