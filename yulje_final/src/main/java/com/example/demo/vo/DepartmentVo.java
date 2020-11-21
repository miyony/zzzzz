package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DepartmentVo {
	
	private int dept_no;
	private String dept_name;
	private String dept_group;
	private String dept_explain;
	private String icon;

}
