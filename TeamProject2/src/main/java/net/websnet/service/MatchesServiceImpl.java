package net.websnet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.domain.MatchesVO;
import net.websnet.mapper.MatchesMapper;

@Service
@AllArgsConstructor
public class MatchesServiceImpl implements MatchesService{

	@Setter(onMethod_ = @Autowired)
	private MatchesMapper mapper;

	@Override
	public MatchesVO MatchesSelect(String mnum) {
		return mapper.MatchesSelect(mnum);
	}

	@Override
	public void MatchesInsert(MatchesVO vo) {
		mapper.MatchesInsert(vo);
	}

	@Override
	public void MatchesUpdate(MatchesVO vo) {
		mapper.MatchesUpdate(vo);
	}

	@Override
	public void MatchesDelete(int idx) {
		mapper.MatchesDelete(idx);
	}

	@Override
	public List<MatchesVO> MatchesSelectAll() {
		return mapper.MatchesSelectAll();
		
	}
}
