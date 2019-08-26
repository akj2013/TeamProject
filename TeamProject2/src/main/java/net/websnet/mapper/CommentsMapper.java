package net.websnet.mapper;

import java.util.List;
import java.util.Map;

import net.websnet.domain.CommentsVO;

public interface CommentsMapper {
	public int CommentsCount(Map<String,String>map);
	public List<CommentsVO> CommentsSelectAll(Map<String,String> map);
	public int CommentsInsert(CommentsVO vo);
	public int CommentsUpdate(CommentsVO vo);
	public int CommentsDelete(int idx);
	
}
