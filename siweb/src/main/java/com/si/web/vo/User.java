package com.si.web.vo;

import java.util.Date;

import lombok.Data;

@Data
public class User {
	private String userId;
	private String userPwd;
	private String userBirth;
	private String userEmail;
	private int userLv;
	private int userStatus;
	private Date createDate;
	private Date updateDate;
}	
