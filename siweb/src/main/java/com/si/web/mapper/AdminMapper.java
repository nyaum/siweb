package com.si.web.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.si.web.vo.User;

@Mapper
public interface AdminMapper {
	
	// 회원 리스트
	List<User> selectUserList(Map<String, Object> map);
	
	// 페이징
	int selectUserCount();
	
	// 유저 삭제
	int deleteUser(String userId);
	
	// 유저 권한 변경
	int updateLv(String userId, int userLv);
}
