package com.example.demo.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.FaqDao;
import com.example.demo.vo.Advice_BoardVo;
import com.example.demo.vo.Faq_BoardVo;

@Controller
public class FaqBoardController {

	public static int pageSIZE = 10;
	public static int totalCount = 0;
	public static int totalPage = 1;

	@Autowired
	private FaqDao dao;

	public void setDao(FaqDao dao) {
		this.dao = dao;
	}

	@RequestMapping("/F_down.do")
	public ModelAndView down(HttpServletRequest request, String fname) {
		// file download controller
		// 실경로를 알아오기 위해 request씀
		String path = request.getRealPath("upload");
		File file = new File(path + "/" + fname);

		return new ModelAndView("down", "file", file);

	}

//	@RequestMapping("/detailS_Board.do")
//	public void detial(int no, Model model) {
//		model.addAttribute("sb", dao.findByNo(no));
//	}

//	@RequestMapping("/listFaq.do")
//	public void list(Model model, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {
//
//		totalCount = dao.getTotalCount();
//		totalPage = (int) Math.ceil((double) totalCount / pageSIZE);
//		int start = (pageNUM - 1) * pageSIZE + 1;
//		int end = start + pageSIZE;
//		if (end > totalCount) {
//			end = totalCount;
//		}
//
//		HashMap map = new HashMap();
//		map.put("start", start);
//		map.put("end", end);
//
//		model.addAttribute("title", "게시물 목록");
//		model.addAttribute("list", dao.findAll(map));
//
//		model.addAttribute("totalPage", totalPage);
//
//	}
//	
	
	@GetMapping("/listFaq.do")
	public void listFaq(Model model) {
		
		model.addAttribute("title", "FAQ");
	}
	
	
	@GetMapping("/listFaq")
	@ResponseBody
	public List<Faq_BoardVo> list(Model model, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM, @RequestParam HashMap map) {

		totalCount = dao.getTotalCount();
		totalPage = (int) Math.ceil((double) totalCount / pageSIZE);
		int start = (pageNUM - 1) * pageSIZE + 1;
		int end = start + pageSIZE;
		if (end > totalCount) {
			end = totalCount;
		}

//		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<Faq_BoardVo> list = dao.findAll(map);

		model.addAttribute("title", "게시물 목록");
		model.addAttribute("list", list);

		model.addAttribute("totalPage", totalPage);
		
		return list;

	}

	@GetMapping("/insertFaq.do")
	public void insert_form(@RequestParam(value = "no", defaultValue = "0") int no, Model model) {
		// 전달되는 것이 no, 전달되는 int no값이 없으면 기본 값이 0
		model.addAttribute("no", no);
	}

	@PostMapping("/insertFaq.do")
	public ModelAndView insert_submit(HttpServletRequest request, Faq_BoardVo fb) {

		ModelAndView mav = new ModelAndView("redirect:/listFaq.do");
		int no = dao.getNextNo();
		
		fb.setNo(no);
		
		int re = dao.insert(fb);

		if (re <= 0) {
			mav.setViewName("error");
		}

		return mav;
	}

	@GetMapping("/updateFaq.do")
	public void update_form(int no, Model model) {

		model.addAttribute("fb", dao.findByNo(no));

	}

	@PostMapping("/updateFaq.do")
	public ModelAndView update_submit(HttpServletRequest request, Faq_BoardVo fb) {

		ModelAndView mav = new ModelAndView("redirect:/listS_Board.do");

		return mav;

	}

	@GetMapping("/deleteFaq.do")
	public void delete_form(int no, Model model) {

		model.addAttribute("no", no);
		System.out.println("get no" + no);

	}

	@PostMapping("/deleteFaq.do")
	public ModelAndView delete_submit(HttpServletRequest request, Faq_BoardVo fb, int no) {

		ModelAndView mav = new ModelAndView("redirect:/listNotice");

		no = fb.getNo();
		System.out.println("post no" + no);

		return mav;

	}
}
