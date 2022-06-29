package com.si.web.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.si.web.service.UserService;
import com.si.web.vo.User;

@Controller
public class UserController {
	@Autowired UserService userService;
	
	@GetMapping(value={"/","/index"})
	public String index(HttpSession session , Model model) {
		System.out.println("Index Page");
		
		// session에 값이 있을때만 실행
		if (session.getAttribute("loginUserId") != null) {
			String userId = (String) session.getAttribute("loginUserId");
			
			User user = userService.index(userId);
			
			model.addAttribute("userLv", user.getUserLv());
		}
		
		System.out.println(model);
		
		return "index";
	}
	
	// 회원가입 페이지
	@GetMapping("/register")
	public String getInsertUser(User user) {
		System.out.println("Sign in Page");
		return "insertUser";
		
	}
	
	@PostMapping("/register")
	public String postInsertUser(User user) {
		
		userService.insertUser(user);
		
		System.out.println("Sign in > Index    " + user);
		
		return "redirect:/index";
		
	}
	
	// 로그인 페이지
	@GetMapping("/login")
	public String getLoginUser() {
		System.out.println("Login Page");
		return "login";
	}
	
	@PostMapping("/login")
	public String postLoginUser(HttpSession session, String userId, String userPwd) {
		User loginUser = userService.loginUser(userId, userPwd);
		
		System.out.println(userId);
		System.out.println(userPwd);
		
		if(loginUser == null) {
			return "redirect:/login";
		}
		
		session.setAttribute("loginUserId", loginUser.getUserId());
		session.setAttribute("loginUserLv", loginUser.getUserLv());
		
		System.out.println(session.getAttribute("loginUserId") + "<<< Id");
		System.out.println(session.getAttribute("loginUserLv") + "<<< Lv");
		
		return "redirect:/index";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/index";
	}
	
	// 내 정보
	@GetMapping("/account")
	public String selectUserOne(HttpSession session, Model model) {
		
		String userId = (String)session.getAttribute("loginUserId");
		User user = userService.selectUserOne(userId);
		
		LocalDate now = LocalDate.now();
		
		int year = now.getYear();
		
		System.out.println(user);
		System.out.println(userId);
		
		model.addAttribute("user", user);
		model.addAttribute("year", year);
		
		
		return "/selectUserOne";
	}
	
	// 아이디 중복 확인
	@ResponseBody
	@PostMapping("/idCheck")
	public int idCheck(String userId, Model model) {
		
		int cnt = userService.idCheck(userId);
		
		System.out.println(cnt);
		System.out.println(userId);
		
		return cnt;
	}
	
	
	
	
	
	
	
	
	
}
