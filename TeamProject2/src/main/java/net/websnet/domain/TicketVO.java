package net.websnet.domain;

import lombok.Data;

@Data
public class TicketVO {
	private int tnum; // 티켓 번호
	private String useridt; // 유저 아이디
	private String mnumt; // 매치 번호
	private int price; // 가격
	private int rticket; // 예약된 티켓
	private int allticket; // 전체 티켓
}
