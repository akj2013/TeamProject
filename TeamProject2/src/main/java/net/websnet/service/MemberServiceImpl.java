package net.websnet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.domain.MemberVO;
import net.websnet.mapper.MemberMapper;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_=@Autowired)
	private MemberMapper mapper;
	
	@Override
	public void memberJoin(MemberVO vo) {
		mapper.memberJoin(vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		return mapper.memberLogin(vo);
	}

	@Override
	public MemberVO memberSelect(int idx) {
		return mapper.memberSelect(idx);
	}

	@Override
	public MemberVO emailCheck(String email) {
		return mapper.emailCheck(email);
	}



}
