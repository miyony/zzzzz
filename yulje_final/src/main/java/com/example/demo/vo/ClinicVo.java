package com.example.demo.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ClinicVo {
	private int cli_no;
	private Date cli_date;
	private String cli_content; 
	private int medi_no;
	private int regi_no;
	private int dept_no;
	private int doc_no;
	private int member_no;
}
