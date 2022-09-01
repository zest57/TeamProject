package kr.mr.myapp;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.mr.mapper.CategoryMapper;
import kr.mr.mapper.ImageMapper;
import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.CategoryDTO;
import kr.mr.model.ImageDTO;
import kr.mr.model.MemberDTO;
import kr.mr.model.VehicleDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class VehicleController {
	
	@Autowired 
	private VehicleMapper vehicleMapper;
	@Autowired
	private CategoryMapper categoryMapper;
	@Autowired
	private ImageMapper imageMapper;	
	@Autowired
	private MemberMapper memberMapper;
	
	// 자동차 등록뷰 페이지
	@RequestMapping("/vehicleInput.do")
	public String vehicleRegister(Model model) {
		
		List<CategoryDTO> catList = categoryMapper.categoryList();
		model.addAttribute("catList", catList);  
		return "vehicle/vehicle_input";
	}
	

	
	
		
	// 차량등록
		@RequestMapping("/vehicleInsert.do")
		public String vehicleInsert(VehicleDTO dto, Model model,
				HttpSession session, HttpServletRequest request)throws IOException {
		
			// 파일경로 사전설정
			
			String category_fk= request.getParameter("category_fk");			
			System.out.println("category_fk : "+category_fk);
			
			String ResourceFolder = "\\resources\\";		      
			String UPLOAD_DIR = "file_upload";		      
		    String uploadPath = request.getServletContext().getRealPath("")+File.separator+ResourceFolder+UPLOAD_DIR;
			
			// 파일 업로드 처리
			String fileName=null;
			MultipartFile uploadFile = dto.getUploadFile();
			if (!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename(); // 파일명
				String ext = FilenameUtils.getExtension(originalFileName); // 확장자 (Extension은 확장자를 구하기위함)
				
				UUID uuid = UUID.randomUUID();	//UUID 구하기
				fileName=uuid+"."+ext;
				uploadFile.transferTo(new File(uploadPath +"\\"+ fileName));
			}
			
			dto.setFileName(fileName);
			

			

			
			int n = vehicleMapper.vehicleInsert(dto);
			
			if(n>0) {
				
				/*
				 * List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();
				 * model.addAttribute("vehicleList", vehicleList);
				 */				
				/* request.setAttribute("insertMsg", "차량DB등록성공!"); */ 
				 session.setAttribute("insertMsg","차량DB등록성공!"); 
				
				
				
				/* return "vehicle/vehicle_list"; */
				return "redirect:/vehicleList.do";
			}else {
				request.setAttribute("insertMsg", "차량DB등록실패");
				return "vehicle/vehicle_input";
			}
		      
		      
			
		}
			
			
	
	
	
	// 차량 리스트 가져오기
	@RequestMapping("/vehicleList.do")
	public String vehicleList(Model model) {
		
		// DB에저장된 리스트를 가져와서 뷰페이지에 사용할수있도록 메모리에 DTO로 등록 
		List<VehicleDTO> vehicleList = vehicleMapper.vehicleList(); //여기에서 카테고리 가져올때는 DTO가 아니라 리스트로 가져온것
		model.addAttribute("vehicleList", vehicleList);				// 때문에 List객체로 바인딩했으니 DTO와는 호환이안된다...
		
		return "vehicle/vehicle_list";
	}
	
	
	
	// 등록차량 삭제
	@RequestMapping("/vehicleDelete.do")
	public String vehicleDelete(int cNum,Model model, String fileName, HttpServletRequest request) {
		
		String ResourceFolder = "\\resources\\";		      
		String UPLOAD_DIR = "file_upload";		      
	    String realPath = request.getServletContext().getRealPath("")+File.separator+ResourceFolder+UPLOAD_DIR;
	    
	    File dFile = null;

		if(fileName != null){
			dFile = new File(realPath+"/"+fileName);
			System.out.println("삭제파일 : "+dFile); // 콘솔에 찍어줌
			if(dFile.delete()) {
				request.setAttribute("isImagedel", "이미지 삭제완료!");
			}
		}	    
	    	    
		int n = vehicleMapper.vehicleDel(cNum);
		
		if(n>0){ // 실행성공	메세지
			request.setAttribute("isdelProcess", "삭제처리 완료!!!!");
			
			List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();		
			model.addAttribute("vehicleList", vehicleList);
			
		
		}else{ // 실행실패	메세지 
			request.setAttribute("isdelProcess", "삭제실패!!");
			
			List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();		
			model.addAttribute("vehicleList", vehicleList);
		}
		
		
		return "vehicle/vehicle_list";
	}
	
	

	
	// 차량 정보 수정 페이지
		@RequestMapping("/vehicleUpadte.do")
		public String vehicleUpdateView(int cNum, HttpServletRequest request,Model model) {
			
			// 리스트에서 업데이트뷰로 넘길때 단순 cNum만 받아와서 DTO로 sql문을 가져오는데, 이때 List와 DTO에 차이때문에
			// DTO에는 카테고리 정보가 없는것이다.
			// 때문에 단순히 DTO에는 메모리에 카테고리 정보가 올라오지 않았으므로 따로 카테고리를 가져와줘서 메모리에 등록해줘야한다.
			List<CategoryDTO> catList = categoryMapper.categoryList();
			model.addAttribute("catList", catList);
			  
			 		
			VehicleDTO vDto = vehicleMapper.vehicleUpdateView(cNum);

			// 객체바인딩
			model.addAttribute("vDto", vDto);
			request.setAttribute("vDto", vDto);
			

			return "vehicle/vehicle_update_view";
		}

		
		
		
		// 차량 정보 수정컨트롤러
		@RequestMapping(value="/vehicleUpdateOk.do")
		public String vehicleUpdateOk(@RequestParam String pImageOld,int cNum,VehicleDTO dto,String category_fk, 
				HttpServletRequest request, Model model) throws IOException {

			// 파일경로 사전설정

			String ResourceFolder = "\\resources\\";
			String UPLOAD_DIR = "file_upload";
			String uploadPath = request.getServletContext().getRealPath("") + File.separator + ResourceFolder + UPLOAD_DIR;

			// 파일 업로드 처리
			String fileName = null;
			MultipartFile uploadFile = dto.getUploadFile();
			if (!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename(); // 파일명
				String ext = FilenameUtils.getExtension(originalFileName); // 확장자 (Extension은 확장자를 구하기위함)

				UUID uuid = UUID.randomUUID(); // UUID 구하기
				fileName = uuid + "." + ext;
				uploadFile.transferTo(new File(uploadPath + "\\" + fileName));
				
				dto.setFileName(fileName);
				
			}else {
				
				dto.setFileName(pImageOld);
			}
			

			int cnt = vehicleMapper.vehicleUpdateOk(dto);

			if (cnt > 0) {
				
				List<CategoryDTO> catList = categoryMapper.categoryList();
				model.addAttribute("catList", catList); 
				List<VehicleDTO> vehicleList =vehicleMapper.vehicleList(); 
				model.addAttribute("vehicleList", vehicleList);
			  
			    request.setAttribute("isUpdated", "업데이트 성공!!!!");
				
				
				/* return "redirect:/vehicleList.do"; */
			} else {
				
				List<CategoryDTO> catList = categoryMapper.categoryList();
				model.addAttribute("catList", catList); 
				List<VehicleDTO> vehicleList =vehicleMapper.vehicleList(); 
				model.addAttribute("vehicleList", vehicleList);
			  
				request.setAttribute("UpdateFail", "업데이트 실패");
				
				/* return "redirect:/vehicleList.do"; */
			}
			return "vehicle/vehicle_list";
		}
		
		
		
		// 차량 판매정보 페이지
		@RequestMapping("/vehicleRental.do")
		public String vehicleGetter(int cNum,String cSpec,HttpSession session, HttpServletRequest request,Model model) {
			
			
			String mId = (String)session.getAttribute("userId");
			
			MemberDTO mDto = memberMapper.memberGetter(mId);
			
			model.addAttribute("mDto", mDto);
			
			
			List<CategoryDTO> catList = categoryMapper.categoryList();
			model.addAttribute("catList", catList);
			  
			List<VehicleDTO> vehicleList =vehicleMapper.vehicleList(); 
			model.addAttribute("vehicleList", vehicleList);
			
			 		
			VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
			
			model.addAttribute("vDto", vDto);
			
			
			// cNum에 해당하는 이미지 리스트 가져오기			
			ImageDTO iDto = imageMapper.imageGetter(cNum);
			model.addAttribute("iDto", iDto);

			System.out.println("cno는?? : "+cNum);
			
			

			// 객체바인딩
			
			/*
			 * List<VehicleDTO> recommand = vehicleMapper.specGetter(cSpec);
			 * 
			 * 
			 * model.addAttribute("recommand", recommand);
			 */
			
			
			
			

			return "rental/vehicle_rental";
		}
		
		
		
		
		
	
	}
	
	
