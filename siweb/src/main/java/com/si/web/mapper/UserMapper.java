package com.si.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.si.web.vo.User;

@Mapper
public interface UserMapper {
	// 회원가입
	int insertUser(User user);
	
	// 로그인
	User loginUser(String userId, String userPwd);
	
	// 메인페이지
	User index(String userId);
	
	// 내 정보
	User selectUserOne(String userId);
	
	// 아이디 중복 확인
	int idCheck(String userId);
	
}
