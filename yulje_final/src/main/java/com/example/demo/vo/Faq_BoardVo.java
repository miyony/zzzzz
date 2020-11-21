package com.example.demo.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Faq_BoardVo {
	private int no;
	private String title;
	private String content;
	private Date regdate;
	private int hit;
	private String category;
	
}
