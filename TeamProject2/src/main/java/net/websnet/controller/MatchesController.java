package net.websnet.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import net.websnet.service.MatchesService;
import net.websnet.service.NationService;

/*
 * 경기 테이블
 * 
 * 1. 경기 현황 페이지 get // post로 바로 받아와야할듯
 *       경기현황 버튼 누를 시 (경기현황) 페이지로 이동 - matches
 *       페이지에는 일정, 경기결과 (vs) 표시
 *       경기 vs 누르면 상세보기 페이지로 링크 넘김
 * 2. 예정 경기 상세보기 페이지 get
 *       예정경기 버튼 누를 시 상세보기 페이지로 이동
 *       코멘트와 현재 진행중인 vs 가 보이는 페이지
 * ----------- 이하의 일정추가 및 경과갱신 페이지는 경기현황 페이지에 포함한다 -----------
 * 3. 결과 갱신 폼 페이지 get
 * 4. 결과 갱신 db 접속 post
 * 5. 일정 추가 및 갱신 폼 페이지 get
 * 6. 일정 추가 및 갱신 db 접속 post
 */

@Controller
@RequestMapping("/Result/*")
@AllArgsConstructor
public class MatchesController {

	private MatchesService mService;
//	private CommentsService cService;
	private NationService nService;

	// 처음 접속후 연결되는 2020 / football 의 선택 페이지
	@GetMapping("/result")
	public void result() {
		System.out.println("result 페이지를 호출합니다.");
	}

	// result에서 선택 후 넘어오는 대진표 페이지
	@GetMapping("/matches")
	public void matches(Model model) {
		System.out.println("matches 페이지를 호출합니다.");

		// sql 국기, 국가, 승무패, 총 경기 수
		model.addAttribute("matchesVO", mService.MatchesSelectAll());
	}

	@GetMapping("/match_graph")
	public void match_graph() {
		System.out.println("match_graph 페이지를 호출합니다.");
	}

	@GetMapping("/match") // 예정 경기 상세 페이지
	public void match(@RequestParam("mnum") String mnum, @RequestParam("hteam") String hteam,
			@RequestParam("ateam") String ateam, Model model, HttpServletRequest request) {
		
		
		System.out.println("match 페이지를 호출합니다." + mnum + "  " + hteam + "  " + ateam);
		model.addAttribute("match", mService.MatchesSelect(mnum));
		model.addAttribute("home", nService.NationSelect(hteam));
		model.addAttribute("away", nService.NationSelect(ateam));

		// session, sql 국가이름 (양쪽) home, away
		System.out.println("상세 페이지");
	}

}