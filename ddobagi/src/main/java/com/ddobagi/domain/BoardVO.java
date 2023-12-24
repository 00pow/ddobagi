package com.ddobagi.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardVO {

	private Integer bno; //bno 글번호- 주로 데이터를 다니고 다닐 것이다.
	private String title;
	private String content;
	private String writer;
	private int viewcnt; // 조회수 - db에 있는 값 단순히 가져오기만 한다.
	private Timestamp regdate;
	
}
