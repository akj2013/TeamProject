package net.websnet.service;

import java.util.List;
import java.util.Map;

import net.websnet.domain.CommentsDTO;
import net.websnet.domain.CommentsVO;

public interface CommentsService {
//	public int CommentsCount(Map<String,String> map);
	public List<CommentsVO> CommentsSelectAll(Map<String,String> map);
	public int CommentsInsert(CommentsVO vo);
	public int CommentsUpdate(CommentsVO vo);
	public int CommentsDelete(int idx);
	
	public CommentsDTO getListPage(Map<String,String> map);
}
