package com.example.demo.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationVo {
	private int reser_no;
	private Date reser_date;
	private Date reser_time;
	private int member_no;
	private int doc_no;
	private int dept_no;
	private int sche_no;
	
}
