package com.example.demo.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Advice_BoardVo {
	private int no;
	private int member_no;
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private int hit;
	private int b_ref;
	private int b_level;
	private int b_step;
	private String fname;
	private String dept_name;
	private String doc_name;
	private MultipartFile uploadFile;
}
