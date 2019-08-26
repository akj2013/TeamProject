package net.websnet.controller;
/*
 * 티켓 테이블
 * 
 * 1. 티켓 구매 폼 페이지 get
 * 2. 티켓 현황 페이지 get
 * 3. 티켓 구매 db 접속 post
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import net.websnet.service.TicketService;

@Controller
@RequestMapping("/Ticket/*")
@AllArgsConstructor
public class TicketController {

		private TicketService service;
}
