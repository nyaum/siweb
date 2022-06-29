package com.si.web.controller;

import java.time.LocalDate;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.si.web.service.AdminService;
import com.si.web.vo.User;

@Controller
public class AdminController {
	@Autowired AdminService adminService;
	
	private final int ROW_PER_PAGE = 10;
	
	// 유저 리스트
	@GetMapping("/admin/selectUser")
	public String userList(Model model, @RequestParam(defaultValue = "1") int currentPage) {
		
		Map<String, Object> map = adminService.selectUserList(currentPage, ROW_PER_PAGE);
		
		LocalDate now = LocalDate.now();
		
		int year = now.getYear();
		
		model.addAttribute("userList", map.get("userList"));
		model.addAttribute("year", year);
		model.addAttribute("lastPage", map.get("lastPage"));
		model.addAttribute("currentPage", currentPage);
		
		System.out.println(map.get("userList") + " <<< userList");
		System.out.println(year + " <<< year");
		System.out.println(map.get("lastPage") + " <<< lastPage");
		System.out.println(currentPage + " <<< currentPage");
		
		return "/admin/selectUser";
		
	}
	
	@GetMapping("/admin/deleteUser")
	public String deleteUser(User user) {
		
		String userId = user.getUserId();
		adminService.deleteUser(userId);
		
		return "redirect:/admin/selectUser";
	}
	
	@GetMapping("/admin/updateLv")
	public String updateLv(User user) {
		
		String userId = user.getUserId();
		int userLv = user.getUserLv();
		
		System.out.println(userId);
		
		adminService.updateLv(userId, userLv);
		
		return "redirect:/admin/selectUser"; 
		
	}
}



















