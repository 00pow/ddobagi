package com.ddobagi.domain;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;

// DTO <-> VO(Value Object) : 비슷한 개념. DTO 역할을 VO가 하도록하자. 우리는 이 두개가 같다고 본다
//DTO 값을 변경가능 / VO값을 변경 불가능
//DTO 계층간 정보전달 / VO는 의미있는 값(데이터객체)를 의미
//DTO 처리로직 포함X / VO 처리로직 포함O

@Data
//@Setter
//@Getter
//@ToString
//@AllArgsConstructor
public class MemberVO { /*MemberDTO*/
	
	private String userid;
	private String userpw;
	private String username;
	private String useremail;
	private boolean enabled;
	
	private Timestamp regdate;
	private Timestamp updatedate;
	
	private List<AuthVO> authList;
	
	// get/set메서드
	// toString메서드
	// 만들진 않을 거다. 다른 애가 만들어줄거기때문에.=>(롬복)
	
	
	

}
