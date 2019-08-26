package net.websnet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.domain.NationVO;
import net.websnet.mapper.NationMapper;

@Service
@AllArgsConstructor
public class NationServiceImpl implements NationService{

	@Setter(onMethod_ = @Autowired)
	private NationMapper mapper;

	@Override
	public NationVO NationSelect(String nname) {
		System.out.println(mapper.NationSelect(nname));
		return mapper.NationSelect(nname);
	}

}
