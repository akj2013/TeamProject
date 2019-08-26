package net.websnet.service;

import net.websnet.domain.MemberVO;

public interface MemberService {
	public void memberJoin(MemberVO vo); // 회원가입
	public MemberVO memberLogin(MemberVO vo); // 로그인
	public MemberVO memberSelect(int idx); // 하나의 VO 생성
	public MemberVO emailCheck(String email);//이메일 확인후 카운트 리턴
}
