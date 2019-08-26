package net.websnet.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.domain.CommentsDTO;
import net.websnet.domain.CommentsVO;
import net.websnet.mapper.CommentsMapper;

@Service
@AllArgsConstructor
public class CommentsServiceImpl implements CommentsService {

	@Setter(onMethod_ = @Autowired)
	private CommentsMapper mapper;
	
//	@Override
//	public int CommentsCount(Map<String,String> map) {
//		System.out.println("comments count");
//		return mapper.CommentsCount(map);
//	}

	// prmt 추가가 필요할 수도 String team... 이 필요할 수 있음!
	@Override
	public List<CommentsVO> CommentsSelectAll(Map<String,String> map) {
		System.out.println("all select..");
		
		return mapper.CommentsSelectAll(map);
	}

	@Override
	public int CommentsInsert(CommentsVO vo) {
		System.out.println("register..");
		return mapper.CommentsInsert(vo);
	}

	@Override
	public int CommentsUpdate(CommentsVO vo) {
		System.out.println("update..");
		return mapper.CommentsUpdate(vo);
	}

	@Override
	public int CommentsDelete(int idx) {
		System.out.println("delete..");
		return mapper.CommentsDelete(idx);
	}

	@Override
	public CommentsDTO getListPage(Map<String, String> map) {
		System.out.println("mapper... DTO...");
		return new CommentsDTO(mapper.CommentsCount(map), mapper.CommentsSelectAll(map));
	}
}
