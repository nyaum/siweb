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


@WebFilter("/admin/*")
public class AdminFilter implements Filter {
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("AdminFilter 실행");
		HttpSession session = ((HttpServletRequest)request).getSession();
		System.out.println(session.getAttribute("loginUserId") + " session확인");
		System.out.println(session.getAttribute("loginUserLv") + " session확인");
		
		if(session.getAttribute("loginUserId") == null) {
			System.out.println("강제이동 : 세션값 없음");
			((HttpServletResponse)response).sendRedirect(((HttpServletRequest)request).getContextPath()+"/login");
			return;
		} else if (session.getAttribute("loginUserLv").equals(0)) {
			System.out.println("강제이동 : 권한 없음");
			((HttpServletResponse)response).sendRedirect(((HttpServletRequest)request).getContextPath()+"/");
			return;
		}
		
		chain.doFilter(request, response);
	}
}
