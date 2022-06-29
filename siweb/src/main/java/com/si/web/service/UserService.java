package com.si.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.si.web.mapper.UserMapper;
import com.si.web.vo.User;

@Service
@Transactional
public class UserService {
	@Autowired
	UserMapper userMapper;

	// 회원가입
	public void insertUser(User user) {
		userMapper.insertUser(user);
	}

	// 로그인
	public User loginUser(String userId, String userPwd) {
		
		return userMapper.loginUser(userId, userPwd);
	}
	
	// 메인 페이지
	public User index(String userId) {
		
		return userMapper.index(userId);
	}
	
	// 내 정보
	public User selectUserOne(String userId) {
		
		return userMapper.selectUserOne(userId);
	}
	
	// 아이디 중복 확인
	
	public int idCheck(String userId) {
		
		int cnt = userMapper.idCheck(userId);
		
		System.out.println(userId);
		System.out.println(cnt);
		
		return cnt;
	}
	
	
	
	

}
