package com.si.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.si.web.mapper.AdminMapper;
import com.si.web.vo.User;

@Service
@Transactional
public class AdminService {
	@Autowired AdminMapper adminMapper;
	
	public Map<String, Object> selectUserList(int currentPage, int ROW_PER_PAGE) {
		
		Map<String, Object> map = new HashMap<>();
		
		int beginRow = (currentPage - 1) * ROW_PER_PAGE;
		
		map.put("beginRow", beginRow);
		map.put("ROW_PER_PAGE", ROW_PER_PAGE);
		
		// 유저 리스트
		List<User> userList = adminMapper.selectUserList(map);
		
		//페이징
		Map<String, Object> returnMap = new HashMap<>();
		
		int lastPage = 0;
		int totalCount = adminMapper.selectUserCount();
		
		lastPage = totalCount / ROW_PER_PAGE;
		
		if(totalCount % ROW_PER_PAGE != 0) {
			lastPage += 1;
		}
		
		returnMap.put("userList", userList);
		returnMap.put("lastPage", lastPage);
		
		return returnMap;
		
	}
	
	// 유저 삭제
	public int deleteUser(String userId) {
		return adminMapper.deleteUser(userId);
	}
	
	// 유저 권한 변경
	public int updateLv(String userId, int userLv) {
		return adminMapper.updateLv(userId, userLv);
	}
	
	
	
	
	
	
	
	
	
	
	
}
