package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.mr.mapper.BoardMapper;
import kr.mr.model.BoardPaging;
import kr.mr.model.BoardVO;
import kr.mr.service.BoardService;

@Controller
public class BoardController {
//	jsp 구현
	
//	springMVC 구조 : Controller > Service > DAO > DateBase
	@Autowired
	private BoardService service;
	
	// 게시판 목록
//	@RequestMapping("/list.do") /list.do로 요청 시 해당 메소드(글 목록 보기) 실행
	@RequestMapping("/boardList.do")
	public String list(
			// @RequestParam : https://heavenly-appear.tistory.com/302
			@RequestParam(defaultValue = "1") int viewPage,
			@RequestParam(defaultValue = "5") int cntPerPage,
			
			// @ModelAttribute : 내부적으로 데이터를 받아서 바인딩 후 vo, model(필수) 객체에 담아 jsp까지 안전하게 보내고 jsp에서 ${bvo}처럼 쓸 수 있게 한다..
			// https://developer-joe.tistory.com/197
			@ModelAttribute("bvo") BoardVO vo, Model model) {
		
		int totalCnt = service.totalCnt(vo); // 게시판 글
		System.out.println(totalCnt);
		
		BoardPaging bp = new BoardPaging(totalCnt, viewPage, cntPerPage);
		
		vo.setStartIndex(bp.getStartIndex());
		vo.setCntPerPage(cntPerPage);
		
		model.addAttribute("bp", bp); // addAttribute(name, value), value의 이름
		model.addAttribute("vo", vo); // vo > boardList.jsp 검색기능
		
		List<BoardVO> list = service.getList(vo); // BaordVO 타입의 리스트로 저장
		
		model.addAttribute("list", list);
		
		return "board/boardList"; // boardList.jsp에서 사용하기 위해 반환
	}
	
//	@GetMapping("/register.do")
	@RequestMapping(value="/boardRegister.do", method=RequestMethod.GET)
	// GET : html <body>의 내용을 담아서 보낼때 사용
	public String registerForm(
			@ModelAttribute("viewPage") int viewPage) {
		return "board/boardRegister"; // 글쓰기
	}
	@RequestMapping(value="/boardRegister.do", method=RequestMethod.POST)
	// POST : html <body>의 내용 없이 보낼 때 사용
	public String register(BoardVO board) {
		service.register(board);
		
		return "redirect:/boardList.do"; // 글등록 : 글등록 후 다시 글 목록으로 돌아갈 때(redirect)
	}
	
	
	@RequestMapping("/boardView.do")
	public String view(@ModelAttribute("bvo") BoardVO bvo, int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBid(), "view");
		model.addAttribute("board", board);
		model.addAttribute("viewPage", viewPage);
		
		return "board/boardView";
		
	}
	
	@RequestMapping(value="/boardModify.do", method=RequestMethod.GET)
	public String modifyForm(@ModelAttribute("bvo") BoardVO bvo, @ModelAttribute("viewPage") int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBid(), "modify");
		model.addAttribute("board", board);
		
		return "board/boardModify"; // modify.jsp
	}
	
	@RequestMapping(value="/boardModify.do", method=RequestMethod.POST)
	public String modify(BoardVO board,
			@ModelAttribute("viewPage") int viewPage, Model model) {
		System.out.println(board);
		service.modify(board);
		
		model.addAttribute("keyWord", board.getKeyWord());
		model.addAttribute("searchType", board.getSearchType());
		
		// redirect:접두어가 붙으면 스프링에서 내부적으로
		// response.sendRedirect()와 같은 기능을 처리해 줌
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/boardRemove.do")
	public String remove(@ModelAttribute BoardVO bvo,
			int viewPage, RedirectAttributes rttr) {
		
		service.remove(bvo.getBid());
		// RedirectAttributes는 Model을 상속받은 객체 : redirect시 사용
		// addAttribute는 단일 타입을 바인딩,
		// addFlashAttribute는 객체를 바인딩
		// 객체를 받을 때는 @ModelAttribute()로 받을 수 있다.
		// 예> rttr.addFlashAttribute("bvo", bvo) ---> 
		// @ModelAttribute("bvo")로 받는다.
		
//		rttr.addAttribute("keyWord", bvo.getKeyWord());
//		rttr.addAttribute("searchType", bvo.getSearchType());
				
		rttr.addFlashAttribute("bvo", bvo);
		
		return "redirect:/boardList.do";
	}
	
	
}