package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVo {
	private int member_no;
	private String name;
	private String id;
	private String pwd;
	private String rr_no;
	private String tel;
	private String email;
	private String addr;
	private String roles;
	private String emailReceive;
	private String smsReceive;
}
