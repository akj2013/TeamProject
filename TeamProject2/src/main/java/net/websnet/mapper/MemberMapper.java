package net.websnet.mapper;

import net.websnet.domain.MemberVO;

public interface MemberMapper {
	public void memberJoin(MemberVO vo); // 회원가입
	public MemberVO memberLogin(MemberVO vo); // 로그인
	public MemberVO memberSelect(int idx);
	public MemberVO emailCheck(String email);
}
