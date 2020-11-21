package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DoctorVo {
	private int doc_no;
	private String position;
	private String doc_name;
	private String major;
	private String specialization;
	private int dept_no;
	private String doc_fname;
}
