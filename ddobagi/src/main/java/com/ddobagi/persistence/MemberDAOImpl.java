package com.ddobagi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.ddobagi.domain.MemberVO;

//@Repository : 스프링이 해당객체를 DAO로 인식하도록 함 
@Repository(value = "memberDAO")
public class MemberDAOImpl{

	@Inject
	private SqlSession sqlSession;
	
	// 회원정보 조회 (+권한정보 조회) 메서드 생성 
	public MemberVO getMemberAuth(String userid) {
		
		return sqlSession.selectOne("com.ddobagi.mapper.MemberMapper.getMemberAuth", userid);
	}
	
	
}