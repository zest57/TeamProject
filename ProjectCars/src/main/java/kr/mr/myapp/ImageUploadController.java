package kr.mr.myapp;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.mr.mapper.CategoryMapper;
import kr.mr.mapper.ImageMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.ImageDTO;
import kr.mr.model.VehicleDTO;


@Controller
public class ImageUploadController {

	
	@Autowired 
	private VehicleMapper vehicleMapper;
	
	@Autowired
	private CategoryMapper categoryMapper;
	
	@Autowired
	private ImageMapper imageMapper;
	
	// 이미지업로드 페이지
	@RequestMapping("/imageInput.do")
	public String imageInput(int cNum,Model model) {
		
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);		
		model.addAttribute("vDto", vDto);
		
		
		return "image_upload/image_upload";
	}
	

	@RequestMapping("/uploadImage.do")
	public String upload(ImageDTO idto,MultipartHttpServletRequest multipartRequest, 
			HttpServletRequest request, Model model , HttpSession session) throws IOException {
		
		int cno = 0;
		
		String ResourceFolder = "\\resources\\";
		String UPLOAD_DIR = "file_repo";
		
		String uploadPath = request.getServletContext().getRealPath("")+File.separator+ResourceFolder+UPLOAD_DIR;
		
		// 파라미터명과 해당 파라미터값을 담기위해서 map을 사용
		Map map = new HashMap();
		
		// MultipartHttpServletRequest: 일반 데이터 및 바이너리 데이터를 모두 받을 수 있다.
//		String id = multipartRequest.getParameter("id");
//		String name = multipartRequest.getParameter("name");
//		System.out.println(id + ":" + name);
		
		// input의 name속성에 있는 "cNum" 파라미터명을 가져온다.
		Enumeration<String> enu = multipartRequest.getParameterNames();
		
		while(enu.hasMoreElements()) {
			//파라미터명을 가져오기
			String cNum = enu.nextElement(); 

			
			// 파라미터값을 가져오기
			String paramValue = multipartRequest.getParameter(cNum);
			
			System.out.println(cNum + ":" + paramValue);

			cno = Integer.parseInt(paramValue);

			
			idto.setcNum(cno);
			
			
			// 일반 파라미터의 파라미터명(key)과 파라미터값(value)을 추가
			map.put(cNum, paramValue);
		}
		
		// 파일명을 갖고있는 파라미터를 읽어오기
		// 선택한 파일명이 아니라 input의 name속성에 있는 파라미터 값(file1, file2, file3,....)
		Iterator<String> iter =  multipartRequest.getFileNames();
		List<String> fileList = new ArrayList<String>();
		
		while(iter.hasNext()) {
			String fParamName = iter.next();
			System.out.println(fParamName);
			//파일정보를 얻어온다.(파일명, 타입, 크기,....)
			MultipartFile mFile = multipartRequest.getFile(fParamName);
			
			//실제 업로드된 파일명 가져오기
			String originalName = mFile.getOriginalFilename();
			System.out.println(originalName);
			
//			fileList.add(originalName);
			
			File file = new File(uploadPath + "\\" + fParamName);
			
			if(mFile.getSize() != 0 ) {// 업로드를 한경우
				if(!file.exists()) {// 경로가 있는지 확인하기, 처음 한번만 실행
					if(file.getParentFile().mkdirs()){ // uploadPath에 지정된 폴더생성 
						file.createNewFile(); //임시로 파일생성
					}
				}
				
				File uploadFile = new File(uploadPath+"\\"+originalName);
				
				if(uploadFile.exists()) {
					originalName = System.currentTimeMillis()+"_"+originalName;
					uploadFile=  new File(uploadPath+"\\"+originalName);
					
				}
				
				// 실제 파일 업로드
				mFile.transferTo(uploadFile);
				fileList.add(originalName);
				

				System.out.println("originalName 이름:"+originalName);
				System.out.println("originalName 타입:"+originalName.getClass());
				

				for (int i=0; i<fileList.size(); i++) {

					if(i == 0) {
						
		            String img1  = fileList.get(i);		                              
		            idto.setiName1(img1); 	
		
					
					}else if(i == 1) {
						
			            String img2  = fileList.get(i);		                              
			            idto.setiName2(img2); 	
			            
					}else if(i == 2) {
						
			            String img3  = fileList.get(i);		                              
			            idto.setiName3(img3); 	
			            
					}else if(i == 3) {
						
			            String img4  = fileList.get(i);		                              
			            idto.setiName4(img4); 	
			            
					}else if(i == 4) {
						
			            String img5  = fileList.get(i);		                              
			            idto.setiName5(img5); 	
			            
					}else if(i == 5) {
						
			            String img6  = fileList.get(i);		                              
			            idto.setiName6(img6); 	
			            
					}
				}
			}
				
		
			
		}// while문
		
		// 실제파일명을 담고 있는 리스트를 맵에 추가
		map.put("fileList", fileList);
		model.addAttribute("map", map);
		
		session.setAttribute("imagesRegistOk", "이미지 업로드 완료");
		
		
		
		imageMapper.imageInsert(idto);  
		
		
		

		
		
		
		return "vehicle/vehicle_list";
	}
		

}
