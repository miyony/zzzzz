package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//약품 

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MedicineVo {
	private int medi_no;			//약품번호
	private String medi_name;		//약품이름
	private String medi_detail;		//약품효과
	private String medi_fname;			//약품사진
	private String caution;			//약품주의사항
	
}
