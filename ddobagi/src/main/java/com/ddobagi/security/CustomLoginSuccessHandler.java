package com.ddobagi.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.ddobagi.controller.CommonsController;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	private static final Logger logger = LoggerFactory.getLogger(CustomLoginSuccessHandler.class);

	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
	
		logger.debug(" CustomLoginSuccessHandler_onAuthenticationSuccess() 호출 ");
		logger.debug(" 인증 성공시(로그인 성공)에 처리하는 동작 제어 ");

		// 사용자가 가진 권한이 무엇인지 정보 불러오자
		
		// 인증정보(+권한정보)를 저장하는 리스트
		List<String> roleNames = new ArrayList<String>();
		
		// 인증정보(+권한정보)를 저장
		authentication.getAuthorities().forEach(authority -> {
		roleNames.add(authority.getAuthority());
		});
		
		logger.debug(" 인증(권한) 확인 : "+roleNames);
		// 인증정보 (+권한정보)를 저장
		//authentication.getAuthorities().forEach(authority -> {roleNames.add(authority.getAuthority());});
		
		// 사용자 아이디 권한에 따른 페이지 이동
		// contains -> 특정문자가 포함되어있는지 확인해줌
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/sec/admin");
			return;
		}
		
		if(roleNames.contains("ROLE_MANAGER")) {
			response.sendRedirect("/sec/member");
			return;
		}
		
		response.sendRedirect("sec/all");
	}

}
