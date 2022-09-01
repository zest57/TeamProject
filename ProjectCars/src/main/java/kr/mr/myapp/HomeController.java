package kr.mr.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.mr.mapper.CategoryMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.VehicleDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired 
	private VehicleMapper vehicleMapper;

	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model ,HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		
		// 차량리스트 가져오기
		
		
		  List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();
		  model.addAttribute("vehicleList", vehicleList);

		 
			/*
			 * for(int i = 0 ;i<vehicleList.size(); i++) {
			 * 
			 * int cNum = vehicleList.get(i);
			 * 
			 * VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
			 * 
			 * //request.setAttribute("vDto", vDto); }
			 */
		
		return "home";
	}
	
}
