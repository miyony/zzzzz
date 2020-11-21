package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Doc_ScheduleVo {
	private int sche_no;
	private String workday;
	private String am_pm;
	private int doc_no;
}
