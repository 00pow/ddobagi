package com.ddobagi.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class CustomAccessDeniedHandler implements AccessDeniedHandler{// 접근거부된걸 다룬다
	// 접근권한 없는 페이지 접근 시 처리하는 동작
	// => 추가적인 동작(세션정보 수정, 쿠키값 변경...)
	
	private static final Logger logger = LoggerFactory.getLogger(CustomAccessDeniedHandler.class);
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		logger.debug(" CustomAccessDeniedHandler_handler() 실행 ");
		logger.debug(" 접근권한이 없는 페이지 접근시에 실행 ");
		
		logger.debug(request.getRemoteAddr()+" 주소에서 접속 ");
		
		// 세션초기화
		HttpSession session = request.getSession();
		session.invalidate();
		
		// 페이지 강제 이동
		logger.debug(" 페이지 강제 이동 ");
		
		response.sendRedirect("/accessErr");
	}
			

}
