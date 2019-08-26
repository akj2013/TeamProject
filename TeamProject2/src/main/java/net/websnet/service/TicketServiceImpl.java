package net.websnet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import net.websnet.mapper.TicketMapper;

@Service
@AllArgsConstructor
public class TicketServiceImpl implements TicketService{

	@Setter(onMethod_=@Autowired)
	private TicketMapper mapper;
}
