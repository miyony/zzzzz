package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MedicalTVVo {
	private int tv_no;
	private String tv_title;
	private String tv_img;
	private String tv_url;

}
