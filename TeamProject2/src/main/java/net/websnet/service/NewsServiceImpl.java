package net.websnet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.domain.NewsVO;
import net.websnet.mapper.NewsMapper;

@Service
@AllArgsConstructor
public class NewsServiceImpl implements NewsService {
	
	@Setter(onMethod_=@Autowired)
	private NewsMapper mapper;
	
	@Override
	public List<NewsVO> newsList() {
		return mapper.newsList();
	}

	@Override
	public void newsInsert(NewsVO vo) {
		mapper.newsInsert(vo);
	}

	@Override
	public NewsVO newsView(NewsVO vo) {
		return mapper.newsView(vo);
	}

	@Override
	public void newsDelete(NewsVO vo) {
		mapper.newsDelete(vo);		
	}

	@Override
	public void newsModify(NewsVO vo) {
		mapper.newsModify(vo);
	}

	@Override
	public void newsModifyUrl(NewsVO vo) {
		mapper.newsModifyUrl(vo);
	}

	@Override
	public void timeModify(NewsVO vo) {
		mapper.timeModify(vo);
	}

}
