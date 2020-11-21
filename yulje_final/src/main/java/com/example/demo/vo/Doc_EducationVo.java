package com.example.demo.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Doc_EducationVo {
	private int edu_no;
	private Date edu_sdate;
	private Date edu_edate;
	private String edu_content;
	private int doc_no;
}
