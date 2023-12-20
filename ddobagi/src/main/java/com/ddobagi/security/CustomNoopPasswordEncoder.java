package com.ddobagi.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;

public class CustomNoopPasswordEncoder implements PasswordEncoder{
	
	private static final Logger logger = LoggerFactory.getLogger(CustomNoopPasswordEncoder.class);
	@Override
	public String encode(CharSequence rawPassword) {
		// 비밀번호 암호화 처리하는 메서드
		logger.debug("암호화 처리 완료");
		return rawPassword.toString();
	}
	
	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		// 암호화된 비밀번호가 같은지 비교
		logger.debug("rawPassword : "+rawPassword);
		logger.debug("encodedPassword : "+encodedPassword);
		return rawPassword.toString().equals(encodedPassword);
	}
}
