package net.websnet.service;

import java.util.List;

import net.websnet.domain.MatchesVO;

public interface MatchesService{
	   public MatchesVO MatchesSelect(String mnum);
	   public void MatchesInsert(MatchesVO vo);
	   public void MatchesUpdate(MatchesVO vo);
	   public void MatchesDelete(int idx);
	   public List<MatchesVO> MatchesSelectAll();
}
