package com.example.demo.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Doc_CareerVo {
	private int car_no;
	private Date car_sdate;
	private Date car_edate;
	private String car_content;
	private int doc_no;
}
