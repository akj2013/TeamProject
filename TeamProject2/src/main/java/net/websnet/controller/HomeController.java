package net.websnet.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@GetMapping("index")
	public void index() {
		System.out.println("index 페이지를 호출합니다.");
	}
	
	@GetMapping("tokyo-2020-mascot")
	public void mascot() {
		System.out.println("마스코트로 들어갑니다. 홈 컨트롤러");
	}
	
	@GetMapping("/Sports/football")
	public void football() {
		System.out.println("football 페이지를 호출합니다.");
	}
	
	@GetMapping("/Athletics/athletics")
	public void athletics() {
		System.out.println("athletes 페이지를 호출합니다.");
	}
	
	@GetMapping("/Photos/photos")
	public void photos() {
		System.out.println("photos 페이지를 호출합니다.");
	}

//	@GetMapping("/Result/result")
//	public void result() {
//		System.out.println("result 페이지를 호출합니다.");
//	}
//	
//	@GetMapping("/Result/match")
//	public void match() {
//		System.out.println("match 페이지를 호출합니다.");
//	}
//
//	@GetMapping("/Result/match_graph")
//	public void match_graph() {
//		System.out.println("match_graph 페이지를 호출합니다.");
//	}

	@GetMapping("/About/olympic_ring")
	public void olympic_ring() {
		System.out.println("olympic_ring 페이지를 호출합니다.");
	}
}
