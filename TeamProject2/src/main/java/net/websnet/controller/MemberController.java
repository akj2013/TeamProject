package net.websnet.controller;

import java.util.HashMap;
import java.util.Map;

/*
 * 멤버 테이블
 * 
 * 1. 회원가입 폼 페이지 get
 *       a. 메인에서 회원가입 버튼 클릭 시 회원가입 페이지로 이동
 *       b. 회원가입 폼에 아이디 등 정보 입력
 *       c. '확인' 버튼 클릭 시 DB로 넘어가 insert 작업 실시
 *       d. 입력 오류 시 다시 회원가입 폼으로 history.back
 *       e. 입력 완료 시 로그인 폼으로 href 
 * 2. 회원가입 db 접속 post
 *       a. insert문이기 때문에 따로 return값은 없음
 *    
 * 3. 로그인 폼 페이지 get
 *       a. '메일[아이디]'와 '비밀번호' 입력
 *       b. 가능하다면, javascript로 유효성 검사 실시
 *       c. '확인' 버튼 클릭 시 db에서 select 문 실시
 *       d. '취소' 버튼 클릭 시 메인 페이지로 history.back
 * 4. 로그인 db 접속 post
 *       a. select문 : return값은 memberVO
 *       b. 아이디와 비밀번호 유효성 검사 실시
 *       c. 유효성 실패 시 로그인 폼으로 돌아가기
 *       d. 유효성 성공 시 로그인 session 만들고 메인으로 이동
 * 5. 로그아웃 db 접속 post
 *       a. '로그아웃 하시겠습니까?' alert 띄우기 ('네', '아니오')
 *       b. '네' 클릭 시 로그인 session을 invalidate하고 메인으로 이동
 *       c. '아니오' 클릭 시 alert 끄기
 * 6. 회원 정보수정 폼 페이지 get
 *       a. '비밀번호' 한 번 더 입력 alert창
 *       b. 
 * 7. 정보수정 db 접속 post
 * 8. 아이디 찾기 폼 get
 * 9. 아이디 찾기 db 접속 post
 * 10. 비밀번호 찾기 폼 get
 * 11. 비밀번호 찾기 db 접속 post
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import net.websnet.domain.MemberVO;
import net.websnet.service.MemberService;

@Controller
@RequestMapping("/Member/*")
@AllArgsConstructor
public class MemberController {

   private MemberService service;

   @GetMapping("join") // 회원가입 페이지
   public void join() {
      System.out.println("회원가입 페이지를 호출합니다.");
   }

   @PostMapping("join") // 회원가입 맵핑
   public String JoinPro(MemberVO vo) {
      System.out.println("회원가입을 진행합니다.");
      service.memberJoin(vo);
      System.out.println("회원가입이 완료되었습니다.");

      return "redirect:/Member/login";
   }

   @GetMapping("login") // 로그인 페이지
   public void login() {
      System.out.println("로그인 페이지를 호출합니다.");
   }

   @PostMapping("login") // 로그인 맵핑
   public String loginPro(MemberVO Login, Model model, HttpServletRequest request, HttpSession session) {
      session = request.getSession(); // 세션 객체 생성
      MemberVO vo = new MemberVO();
      vo = service.memberLogin(Login);
      if (vo == null) { // SQL문이 실패했을 때
         System.out.println("로그인 실패");
         return "Member/loginfail";
      } else { // SQL문이 성공했을 때
         System.out.println("로그인에 성공하였습니다.");
         session.setAttribute("Login", vo); //세션 생성
         
         MemberVO Login1 = new MemberVO();
         Login1 = (MemberVO)session.getAttribute("Login"); // Login에 들어있는 값을 가져옴
         System.out.println("!!!!");
         System.out.println(Login1.getEmail());
         System.out.println("새롭게 만들어진 세션 객체입니까? : " + session.isNew());
         
         if(session.isNew()) {
            System.out.println("생성되지 않은 세션");
         } else {
            System.out.println("이미 생성된 세션");
            System.out.println("세션이 생성된 시간 : " + session.getMaxInactiveInterval()); // 세션이 만들어진 시간
         }
         return "redirect:/index";
      }
   }

   @GetMapping("login_pro")
   public void loginPro() { // 로그인 유효성 검사

   }

   @GetMapping("logout") // 로그아웃
   public String logout(HttpSession session) {
      session.removeAttribute("Login");
      return "redirect:/index";
   }

   @GetMapping("findpassword")
   public void findpassword() {
      System.out.println("비밀번호 찾기 페이지를 호출합니다.");
   }
   
   //이메일 중복 검사
   @RequestMapping("eCheck.do")
   public @ResponseBody Map<String, Object> emailCheck(@RequestBody String email) {
      System.out.println(email);
      Map<String, Object> map = new HashMap<String, Object>(); // 맵 형식을 정의
      int Check = 0; // 이메일 체크시  = 0 이메일 중복 없을시 = 1
      if (service.emailCheck(email) != null) {
         Check = 0;
      } else {
         Check = 1;
      }
      map.put("result", Check); // result라는 key값에 Check 값을 넣는다
      return map;
   }
}