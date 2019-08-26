package net.websnet.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import net.websnet.domain.NewsVO;
import net.websnet.service.NewsService;

/*
 * 뉴스 테이블
 * 
 * 1. 뉴스 보기 페이지
 * 2. 뉴스 보기 db 접속
 * 3. 뉴스 상세보기 페이지
 * 4. 뉴스 등록, 수정, 삭제 페이지 및 폼
 */

@Controller
@RequestMapping("/News/*")
@AllArgsConstructor
public class NewsController {

	private NewsService service;

	@GetMapping("news")
	public void news() {
		System.out.println("news 페이지를 호출합니다.");
	}
	
	@GetMapping("news1")
	public void news1() {
		System.out.println("news1 페이지를 호출합니다.");
	}
	
	@GetMapping("news2")
	public void news2() {
		System.out.println("news2 페이지를 호출합니다.");
	}
	
	@GetMapping("news3")
	public void news3() {
		System.out.println("news3 페이지를 호출합니다.");
	}
	
	@GetMapping("news4")
	public void news4() {
		System.out.println("news4 페이지를 호출합니다.");
	}
	
	@GetMapping("news5")
	public void news5() {
		System.out.println("news5 페이지를 호출합니다.");
	}
	
	@GetMapping("news6")
	public void news6() {
		System.out.println("news6 페이지를 호출합니다.");
	}
	
	
	// News DB 프로세스 진행중
	
	@GetMapping("newsList") // 뉴스 전체 리스트
	public void newsList(Model model) {
		System.out.println("newsList 페이지를 호출합니다.");
		model.addAttribute("list", service.newsList());
	}
	
	@GetMapping("newsView") // 뉴스 상세보기
	public void newsView(HttpServletRequest request, NewsVO vo, Model model) {
		System.out.println("newsView 페이지를 호출합니다.");
		int idx = Integer.parseInt(request.getParameter("idx"));
		vo.setIdx(idx);
		vo = service.newsView(vo);
		
		/*
		 * 1. 추가된 사진의 개수를 구한다.
		 * 2. 그것보다 +1 만큼 텍스트를 나눈다.
		 * 3. 첫번째 부분에서 lastIndexOf로 마지막 문장의 끝까지를 첫번째 서브스트링으로 만든다.
		 * 4. 그 다음부터 시작해서 다음 LIO까지를 
		 */
		String text = vo.getUrl();
		String end = "||";
		int FirstIndex = 0;
		int LastIndex = 0;
		String[] sub = new String[10]; // 이미지 파일 이름
		int count=0; // 사진 수
		boolean stop = true;
		do {
			
			if(text.indexOf(end)!=-1) {
				LastIndex = text.indexOf(end);
				sub[count] = text.substring(FirstIndex, LastIndex);
				text = text.substring(LastIndex+2); // 끝난 부분에서 두번 건너뛴다.
				count += 1;
			}else {
				sub[count] = text;
				stop = false;
			}

		}while(stop);
		int i ;
		for(i=0; i<=count; i++) {
			System.out.println("pictures : "+sub[i]);
		}
		
		/*
		 * 사진의 갯수보다 +1 해서 글을 나눈다.
		 * 
		 */
		String content = vo.getContext();
		String[] subContent = new String[count+1]; // 문단은 사진 수보다 하나 더 많이 만든다.
		stop = true;
		end = ". ";
		int index=0;
		do {
			if(index != count ) { // 마지막 문장이 올 때 까지
				LastIndex = content.length()/(count); // 남은 글을 절반으로 자른다.
				subContent[index] = content.substring(LastIndex, content.length()); // 뒷 부분을 담는다.
				LastIndex = LastIndex + subContent[index].indexOf(end); // 뒷 부분의 온점이 오는 부분까지를 마지막 인덱스로 잡는다.
				subContent[index] =content.substring(FirstIndex, LastIndex+1); // 문장의 처음부터 온점까지를 배열에 담는다.
				content = content.substring(LastIndex+1); // 남은 부분을 다시 콘텐트에 담는다.
				index += 1; // 배열의 인덱스를 하나 올린다.
			}else {
				subContent[index] = content;
				stop = false;
			}	
		}while(stop);
		
		for(i=0; i<=index; i++) {
			System.out.println("content : "+subContent[i]);
		}
		model.addAttribute("vo", vo);
		model.addAttribute("pictures", sub);
		model.addAttribute("contexts", subContent);
		
	}
	
	@GetMapping("newsInsert") // 뉴스 등록 페이지
	public void newsInsert() {
		System.out.println("newsInsert 페이지를 호출합니다.");
	}
	
	@PostMapping("newsInsert") // 뉴스 등록 POST
	public String newsInsert_pro(MultipartFile[] uploadFile, NewsVO vo) {
		System.out.println("뉴스 등록을 진행합니다.");
		String uploadFolder = "C:\\Users\\akjak\\OneDrive\\바탕 화면\\중간 다운로드 지점\\7월 스프링 프로젝트\\0805 2337 호성\\TeamProject2\\src\\main\\webapp\\resources\\news"; 
		
		// 파일 업로드 메서드
		String Url = "";
		for(MultipartFile multipartFile : uploadFile) {
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);	 //IE has file path : 익스플로러 버전에 따라 오류날 수 있다.

			// 중복 방지를 위한 UUID 적용
			UUID uuid=UUID.randomUUID();
			uploadFileName=uuid + "_" + uploadFileName;
			
			File saveFile = new File(uploadFolder, uploadFileName);
			Url = Url + "||" + uploadFileName;
			try {
				multipartFile.transferTo(saveFile);
				System.out.println("파일 업로드를 완료했습니다.");
			}catch(Exception e) {
				System.out.println(vo.getUrl());
				System.out.println("파일 업로드를 실패했습니다.");
				
			}
		}
		vo.setUrl(Url); // 업로드한 파일을 vo의 url로 넣어준다.
		service.newsInsert(vo); // DB에 넣어준다.
		return "redirect:/News/newsList";
	}
	
	@GetMapping("newsDelete") // 뉴스 삭제하기
	public String newsDelete(HttpServletRequest request, NewsVO vo, @RequestParam(value="idx") int idx) {
		System.out.println("뉴스 삭제를 진행합니다.");
		
		// view에서 넘어온 idx로 객체 가져오기
		vo.setIdx(idx);
		vo = service.newsView(vo);
		
		// 업로드폴더 주소
		String uploadFolder = "C:\\Users\\akjak\\OneDrive\\바탕 화면\\중간 다운로드 지점\\7월 스프링 프로젝트\\0805 2337 호성\\TeamProject2\\src\\main\\webapp\\resources\\news";

		// 파일 이름을 하나씩 꺼내오는 메서드
		String text = vo.getUrl();
		String end = "||";
		int FirstIndex = 0;
		int LastIndex = 0;
		String[] sub = new String[10];
		int count=0;
		boolean stop = true;
		do {
			
			if(text.indexOf(end)!=-1) {
				LastIndex = text.indexOf(end);
				sub[count] = text.substring(FirstIndex, LastIndex);
				text = text.substring(LastIndex+2);
				count += 1;
			}else {
				sub[count] = text;
				stop = false;
			}
		}while(stop);
		
		// 꺼내 온 파일들을 하나씩 지우는 메서드
		for(String fileName : sub) {
			File delFile = new File(uploadFolder + "/" + fileName);
			if(delFile.isFile()) {
				System.out.println(delFile.getName() + "을/를 삭제합니다.");
				delFile.delete();
			}else {
				System.out.println("삭제할 파일이 없습니다.");
			}
		}
		
		service.newsDelete(vo);
		
		return "redirect:/News/newsList";
	}
	
	/*
	 * 뉴스 업데이트 페이지 호출 getMapping
	 * 
	 * 1. 상세보기 페이지에서 넘어온 idx 값을 매개변수로 받는다.
	 * 2. idx 값으로 DB에서 모든 값이 들어있는 VO 객체를 꺼내온다.
	 * 3. vo객체를 모델 객체로 넘겨서 원래 값이 출력되도록 보여준다.
	 * 4. 
	 */
	@GetMapping("newsModify")
	public void newsModify(NewsVO vo, @RequestParam(value="idx") int idx, Model model) {
		System.out.println("뉴스 업데이트 페이지를 호출합니다.");
		vo.setIdx(idx); // 생성된 vo객체에 상세보기 페이지에서 넘어온 idx값만 넣어준다.
		vo = service.newsView(vo); // idx값이 들어있는 vo객체가 들어가서 모든 값을 꺼내와 다시 vo객체에 넣어준다.
		model.addAttribute("vo", vo); // model 객체로 vo를 넘겨준다.
	}
	
	/*
	 * 뉴스 업데이트 로직 구현 DB 접속 postMapping
	 * 
	 * 1. 업데이트 페이지에서 vo의 속성값들과 업로드파일이 넘어왔다.
	 * 2. idx 값은 그대로 넘어와서 request 객체로 받아준다.
	 * 3. newsVO 객체의 기존 내용은 modify 해주는 mapper를 이용해서 수정해준다. 이때 url은 일단 제외하고 수정한다.
	 * 4. 업로드파일은 기존에 있던 파일들을 전부 삭제해준다.
	 * 5. 그리고 새로 업로드한 파일들을 저장해준다.
	 * 6. 리턴으로 View 페이지를 보여준다.  
	 */
	
	@PostMapping("newsModify")
	public String newsModify_pro(HttpServletRequest request, NewsVO vo, MultipartFile[] uploadFile) {
		System.out.println("뉴스 업데이트를 진행합니다.");
		int idx = Integer.parseInt(request.getParameter("idx"));
		vo.setIdx(idx);
		service.newsModify(vo); // newsVO 내용들부터 우선 수정시킨다. url은 제외.
		service.timeModify(vo); // 최종 수정 시간을 수정해준다.
		// 기존 파일을 삭제한다.
		vo = service.newsView(vo);
			// 업로드폴더 주소
				String uploadFolder = "C:\\Users\\akjak\\OneDrive\\바탕 화면\\중간 다운로드 지점\\7월 스프링 프로젝트\\0805 2337 호성\\TeamProject2\\src\\main\\webapp\\resources\\news";

				// 파일 이름을 하나씩 꺼내오는 메서드
				String text = vo.getUrl();
				String end = "||";
				int FirstIndex = 0;
				int LastIndex = 0;
				String[] sub = new String[10];
				int count=0;
				boolean stop = true;
				do {
					
					if(text.indexOf(end)!=-1) {
						LastIndex = text.indexOf(end);
						sub[count] = text.substring(FirstIndex, LastIndex);
						text = text.substring(LastIndex+2);
						count += 1;
					}else {
						sub[count] = text;
						stop = false;
					}
				}while(stop);
				
				// 꺼내 온 파일들을 하나씩 지우는 메서드
				for(String fileName : sub) {
					File delFile = new File(uploadFolder + "/" + fileName);
					if(delFile.isFile()) {
						System.out.println(delFile.getName() + "을/를 삭제합니다.");
						delFile.delete(); // 파일을 하나씩 삭제
					}else {
						System.out.println("삭제할 파일이 없습니다.");
					}
				}
		
		// 신규 파일을 업로드한다.
				// 파일 업로드 메서드
				String Url = "";
				for(MultipartFile multipartFile : uploadFile) {
					String uploadFileName = multipartFile.getOriginalFilename();
					uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);	 //IE has file path : 익스플로러 버전에 따라 오류날 수 있다.
					
					// 중복 방지를 위한 UUID 적용
					UUID uuid=UUID.randomUUID();
					uploadFileName=uuid + "_" + uploadFileName;
					
					File saveFile = new File(uploadFolder, uploadFileName);
					Url = Url + "||" + uploadFileName;
					try {
						multipartFile.transferTo(saveFile);
						System.out.println("파일 업로드를 완료했습니다.");
					}catch(Exception e) {
						System.out.println(vo.getUrl());
						System.out.println("파일 업로드를 실패했습니다.");
						
					}
				}
				vo.setUrl(Url); // 업로드한 파일을 vo의 url로 넣어준다.
				
		// url을 업데이트해준다.
		service.newsModifyUrl(vo);
		
		return "redirect:/News/newsView?idx="+vo.getIdx();
	}
	
	@GetMapping("test")
	public String test(HttpServletRequest request, NewsVO vo) {
		System.out.println("최종 수정 시간 업데이트를 진행합니다.");
		int idx = Integer.parseInt(request.getParameter("idx"));
		vo.setIdx(idx);
		
		service.timeModify(vo); // 최종 수정 시간을 수정해준다.
		
		return "redirect:/News/newsList";
	}
}
