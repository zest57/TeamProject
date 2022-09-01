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

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Controller
public class FileController {
	// 스프링에서 FileUpload에서 사용되는 클래스 : MultipartHttpServletRequest
	// HttpSevletRequest : 일반 파라미터값만 수집한다.
	
	@RequestMapping("/upload.do")
	public String upload(MultipartHttpServletRequest multipartRequest, HttpServletRequest request, Model model) throws IOException {
		String UPLOAD_DIR = "file_repo";
		String uploadPath = request.getServletContext().getRealPath("")+File.separator+UPLOAD_DIR;
		
		// 파라미터명과 파라미터값을 담기위해서 map을 사용
		Map map = new HashMap();
		
		
		// String id = multipartRequest.getParameter("id");
		// String name = multipartRequest.getParameter("name");
		// System.out.println(id + ":"+name);
		
		// input의 name속성에 있는 "id"와 "name" 파라미터를 가져온다.
		Enumeration<String> enu = multipartRequest.getParameterNames();
		
		while (enu.hasMoreElements()) {
			String name = enu.nextElement(); // 파라미터명을 가져오기
			String paramValue = multipartRequest.getParameter(name);
			
			System.out.println(name+":"+paramValue);
			
			map.put(name, paramValue);
			
		}
		
		
		// 파일명을 갖고있는 파라미터를 읽어오기
		// 선택한 파일명이 아니라 input에 name 속성에 있는 파라미터 값(file1,file2,file3.....)
		Iterator<String> iter = multipartRequest.getFileNames();
		List<String> fileList = new ArrayList<String>();
		
		while (iter.hasNext()) {
			String fParamName = iter.next();
			System.out.println(fParamName);
			
			
			// 파일정보를 얻어온다 (파일명 , 타입 , 크기...)
			MultipartFile mFile = multipartRequest.getFile(fParamName);
			
			// 실제 업로드된 파일명
			String originalName = mFile.getOriginalFilename();
			System.out.println(originalName);
			
			fileList.add(originalName);
			
			File file = new File(uploadPath+"\\"+fParamName);
			
			if(mFile.getSize() != 0) { // 업로드를 한경우
				if(!file.exists()) { // 경로가 있는지 확인하기 , 처음 한벊만 실행
					if(file.getParentFile().mkdirs()) { // 업로드 패스에서 지정된 폴더를 생성한다는뜻
						file.createNewFile(); // 임시파일생성
						
					}
				}
			}
			
			mFile.transferTo(new File(uploadPath+"\\"+originalName));
			
		}
		
		
		return "";
	}
	
	
}
