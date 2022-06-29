package com.si.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(value={"/register","/login"})
public class UserFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		System.out.println("UserFilter 정상 작동");
		
		HttpSession session = ((HttpServletRequest) request).getSession();

		if (session.getAttribute("loginUserId") != null) {
			System.out.println("강제이동 : 이미 로그인 된 계정");
			((HttpServletResponse) response).sendRedirect(((HttpServletRequest) request).getContextPath() + "/");
			return;
		}

		chain.doFilter(request, response);
	}

}
