package kr.mr.myapp;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
		
	@RequestMapping("/noticeList.do")
	public String noticeList() {
		
		return "notice/noticeList";
	}
	
	@RequestMapping("/noticeDayRent.do")
	public String noticeDayRent() {
		
		return "notice/noticeDayRent";
	}
	@RequestMapping("/noticeLongRent.do")
	public String noticeLongRent() {
		
		return "notice/noticeLongRent";
	}
	
	@RequestMapping("/noticeFaq.do")
	public String noticeFaq() {
		
		return "notice/noticeFaq";
	}

}