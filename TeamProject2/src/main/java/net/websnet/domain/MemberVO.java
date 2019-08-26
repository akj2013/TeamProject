package net.websnet.domain;

import lombok.Data;

@Data
public class MemberVO {
	private int idx; // 인덱스
	private String hifn; // 히라가나 성
	private String hiln; // 히라가나 이름
	private String hufn; // 후리가나 성
	private String huln; // 후리가나 이름
	private String email; // 이메일 [아이디]
	private String postf; // 우편번호 아ㅠ
	private String postb; // 우편번호 뒤
	private int ken; // 현
	private String address1; // 시구
	private String address2; // 번지
	private String address3; // 건물명
	private String phonef; // 전화번호 앞
	private String phonem; // 전화번호 가운데
	private String phoneb; // 전화번호 뒤
	private String gender; // 성별
	private int birthY; // 생일 년
	private int birthM; // 생일 월
	private int birthD; // 생일 일
	private String userpw; // 패스워드
	private String dmagree; // 다이렉트 메시지 동의
}
