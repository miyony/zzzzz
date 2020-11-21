package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.Doc_CareerDao;
import com.example.demo.dao.Doc_EducationDao;
import com.example.demo.dao.Doc_ScheduleDao;
import com.example.demo.dao.DoctorDao;
import com.example.demo.vo.Doc_ScheduleVo;
import com.example.demo.vo.DoctorVo;

import lombok.Setter;

@Controller
@Setter
public class DoctorController {
	
	@Autowired
	private DoctorDao dao;
	@Autowired
	private Doc_ScheduleDao sdao;
	@Autowired
	private Doc_EducationDao edao;
	@Autowired
	private Doc_CareerDao cdao;
	
//	@RequestMapping("/detailDoctor")
	public ModelAndView detail(int doc_no) {
		ModelAndView mav = new ModelAndView();
		DoctorVo d = dao.findByNo(doc_no);
		mav.addObject("d", d);
//		mav.addObject("clist", cdao.findAllCar(doc_no));
//		mav.addObject("elist", edao.findAllEdu(doc_no));
//		
//		List<Doc_ScheduleVo> slist = sdao.findAllSche(doc_no);
//		for (Doc_ScheduleVo s : slist) {
//			if (s.getAm_pm().equals("오전")) {
//				if (s.getWorkday().equals("월")) {
//					mav.addObject("ma", 1);
//				}
//				if (s.getWorkday().equals("화")) {
//					mav.addObject("ta", 1);
//				}
//				if (s.getWorkday().equals("수")) {
//					mav.addObject("wa", 1);
//				}
//				if (s.getWorkday().equals("목")) {
//					mav.addObject("tha", 1);
//				}
//				if (s.getWorkday().equals("금")) {
//					mav.addObject("fa", 1);
//				}
//				if (s.getWorkday().equals("토")) {
//					mav.addObject("sa", 1);
//				}
//			}
//			if (s.getAm_pm().equals("오후")) {
//				if (s.getWorkday().equals("월")) {
//					mav.addObject("mp", 1);
//				}
//				if (s.getWorkday().equals("화")) {
//					mav.addObject("tp", 1);
//				}
//				if (s.getWorkday().equals("수")) {
//					mav.addObject("wp", 1);
//				}
//				if (s.getWorkday().equals("목")) {
//					mav.addObject("thp", 1);
//				}
//				if (s.getWorkday().equals("금")) {
//					mav.addObject("fp", 1);
//				}
//				if (s.getWorkday().equals("토")) {
//					mav.addObject("sp", 1);
//				}
//			}
//		}
//		
		return mav;
	}
	
	@RequestMapping("/detailDoctor")
	public void detail(int doc_no, Model model) {
		model.addAttribute("d", dao.findByNo(doc_no));
		model.addAttribute("dsche", sdao.findAllSche(doc_no));
		model.addAttribute("dcar", cdao.findAllCar(doc_no));
		model.addAttribute("dedu", edao.findAllEdu(doc_no));
	}
	
	
	
	@RequestMapping("/listDoctor")
	public void list() {}
	
	//의료진목록
	@RequestMapping("/listDoctor1")
	@ResponseBody
	public List<DoctorVo> listDept() {
		System.out.println("의료진목록 컨트롤러 동작");
		List<DoctorVo> list  = dao.findAll();
		return list;
	}
	
	@RequestMapping("/join")
	public void join() {}
	
	@RequestMapping("/join-allow")
	public void allow() {}
	
	@RequestMapping("/reserconfirm")
	public void confirm() {}
	
	@RequestMapping("/res")
	public void confirms() {}
}
