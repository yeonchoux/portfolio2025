package com.suyeon.shopProject.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/member")
@Controller
public class MemberController {
	
	final MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@GetMapping("/signup")
	public String SignupPage (){
		return "member/signup";
	}
	
	@PostMapping("/signup")
	public String SignupSubmit(MemberDTO memberDTO) {
		memberService.insertMember(memberDTO);
		return "redirect:/member/login";
	}
	
	@GetMapping("/login")
	public String LoginPage() {
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(Model model, @RequestParam String email, @RequestParam String password, HttpSession session) {
		
		MemberDTO member = memberService.findByMember(email);
		
		if (member != null && member.getPassword().equals(password)) {
			session.setAttribute("loginUser", member);
			return "redirect:/member/mypage";
		} else {
			model.addAttribute("error", "이메일 혹은 비밀번호가 일치하지 않습니다.");
			return "member/login";
		}
	}
	
	@GetMapping("/logout")
	public String LogoutPage(HttpSession session) {
		session.invalidate();
		return "redirect:/member/main";
		
	}
	
	@GetMapping("/mypage")
	public String myPage(HttpSession session, Model model) {
		
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
		
		
		if (loginUser == null) {
		return "redirect:/member/login";
	}
		
		model.addAttribute("member", loginUser);
		return "member/mypage";
	
	}
	
	@GetMapping("/main")
	public String mainPage() {
		return "member/main";
	}
	



}
