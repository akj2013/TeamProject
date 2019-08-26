package net.websnet.mapper;

import java.util.List;

import net.websnet.domain.NewsVO;

public interface NewsMapper {
	public List<NewsVO> newsList();
	public void newsInsert(NewsVO vo);
	public NewsVO newsView(NewsVO vo);
	public void newsDelete(NewsVO vo);
	public void newsModify(NewsVO vo);
	public void newsModifyUrl(NewsVO vo);
	public void timeModify(NewsVO vo);
}
