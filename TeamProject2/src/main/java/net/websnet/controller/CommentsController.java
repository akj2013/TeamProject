package net.websnet.controller;
/*
 * 코멘트 테이블
 * 
 * 1. 코멘트 페이지 get
 * 2. 코멘트 작성 폼 페이지 get
 * 3. 코멘트 작성 db 접속 post
 * 
 */

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import net.websnet.domain.CommentsDTO;
import net.websnet.domain.CommentsVO;
import net.websnet.service.CommentsService;

@RestController
@RequestMapping("/Comments")
@AllArgsConstructor
public class CommentsController {


	private CommentsService cService;
	
	
	@GetMapping(value = "/pages/{mnumc}/{team}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<CommentsDTO> CommentsSelectAll(@PathVariable("mnumc") String mnumc, @PathVariable("team") String team, Model model){
		Map<String,String> map = new HashMap<String, String>();
		map.put("mnumc",mnumc);
		map.put("team",team);
		
		return new ResponseEntity<>(cService.getListPage(map), HttpStatus.OK);
	}
	
	
//	@GetMapping(value = "/pages/{mnumc}/{team}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
//	public ResponseEntity<List<CommentsVO>> CommentsSelectAll(@PathVariable("mnumc") String mnumc, @PathVariable("team") String team, Model model){
//		Map<String,String> map = new HashMap<String, String>();
//		map.put("mnumc",mnumc);
//		map.put("team",team);
//		return new ResponseEntity<>(cService.CommentsSelectAll(map), HttpStatus.OK);
//	}
	
	
	@RequestMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> CommentsInsert(@RequestBody CommentsVO vo) {
		System.out.println("CommentsVO: " + vo);
		
		int insertCount = cService.CommentsInsert(vo);
		System.out.println("Comments Insert Count: " + insertCount);

		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}


	@RequestMapping(method = { RequestMethod.PUT,
			RequestMethod.PATCH }, value = "/{idx}", consumes = "application/json", produces = {
					MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> CommentsUpdate(@RequestBody CommentsVO vo, @PathVariable("idx") int idx) {
		vo.setIdx(idx);
		System.out.println("idx: " + idx);
		System.out.println("modify: " + vo);

		return cService.CommentsUpdate(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}


	@DeleteMapping(value = "/{idx}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> CommentsDelete(@PathVariable("idx") int idx) {
		System.out.println("remove: " + idx);

		return cService.CommentsDelete(idx) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
