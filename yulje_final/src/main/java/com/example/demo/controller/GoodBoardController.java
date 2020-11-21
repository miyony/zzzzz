package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.GoodDao;
import com.example.demo.vo.Good_BoardVo;



@Controller
public class GoodBoardController {

	public static int pageSIZE = 10;
	public static int totalCount = 0;
	public static int totalPage = 1;

	@Autowired
	private GoodDao dao;

	public void setDao(GoodDao dao) {
		this.dao = dao;
	}

	@RequestMapping("/G_down.do")
	public ModelAndView down(HttpServletRequest request, String fname) {
		// file download controller
		// 실경로를 알아오기 위해 request씀
		String path = request.getRealPath("upload");
		File file = new File(path + "/" + fname);

		return new ModelAndView("down", "file", file);

	}

	@RequestMapping("/detailG_Board.do")
	public void detial(int no, Model model) {
		model.addAttribute("gb", dao.findByNo(no));
	}
	
	
	// 리스트~

	@RequestMapping("/listG_Board.do")
	public void list(Model model, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {

		totalCount = dao.getTotalCount();
		totalPage = (int) Math.ceil((double) totalCount / pageSIZE);
		int start = (pageNUM - 1) * pageSIZE + 1;
		int end = start + pageSIZE;
		if (end > totalCount) {
			end = totalCount;
		}

		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("title", "고마워요 율제병원");
		model.addAttribute("list", dao.findAll(map));

		model.addAttribute("totalPage", totalPage);

	}
	
	// 등록~

	@GetMapping("/insertG_Board.do")
	public void insert_form(@RequestParam(value = "no", defaultValue = "0") int no, Model model) {
		// 전달되는 것이 no, 전달되는 int no값이 없으면 기본 값이 0

		model.addAttribute("no", no);

		String title = "";
		String dept = "";

		if (no != 0) {
			title = "답글)" + dao.findByNo(no).getTitle();
		}

		model.addAttribute("title", title);
		
	}

	@PostMapping("/insertG_Board.do")
	public ModelAndView insert_submit(HttpServletRequest request, Good_BoardVo gb) {

		String path = request.getRealPath("upload");
		path = request.getServletContext().getRealPath("upload");
		System.out.println("path" + path);
		
		//System.out.println(gb.getDept_name());

		int pno = gb.getNo();
		int no = dao.getNextNo();

		int b_ref = no;
		int b_level = 0;
		int b_step = 0;
		// 일단 부모글로 봄

		if (pno != 0) {
			Good_BoardVo p = dao.findByNo(pno);
			b_ref = p.getB_ref();
			b_level = p.getB_level();
			b_step = p.getB_step();

			HashMap map = new HashMap();
			map.put("b_ref", b_ref);
			map.put("b_step", b_step);

			dao.updateStep(map);

			b_level++;
			b_step++;
		}

		gb.setNo(no);
		gb.setB_ref(b_ref);
		gb.setB_level(b_level);
		gb.setB_step(b_step);

		//System.out.println(gb);

		MultipartFile uploadFile = gb.getUploadFile();

		String fname = uploadFile.getOriginalFilename();

		byte[] data = null;
		// int fsize = 0;
		// 파일 크기

		if (fname != null && !fname.equals("")) {
			// 업로드 파일이 있다면
			// equals("")은 fname이 null일때 작동하지 않으므로 null부터 써줌
			fname = uploadFile.getOriginalFilename();

			try {
				data = uploadFile.getBytes();
				// fsize = data.length;
			} catch (Exception e) {
				System.out.println("예외발생" + e.getMessage());
			}

		} else {
			// 업로드 파일이 없다면
			fname = "";
		}

		gb.setFname(fname);
		// vo에 file이름을 실어줌

		ModelAndView mav = new ModelAndView("redirect:/listG_Board.do");

		int re = dao.insert(gb);
		if (re <= 0) {
			// 게시물 등록에 실패
			mav.addObject("msg", "게시물 등록에 실패하였습니다");
			mav.setViewName("error");
		} else {
			// 게시물 등록에 성공

			if (!fname.equals("")) {
				// file이 있을때와 없을때 구분해줘야함
				try {

					// file 복사~
					FileOutputStream fos = new FileOutputStream(path + "/" + fname);
					fos.write(data);
					fos.close();

				} catch (Exception e) {
					System.out.println("file처리" + e.getMessage());
				}
			}
		}

		return mav;

	}
	
	
	// 수정~
	
	@GetMapping("/updateG_Board.do")
	public void update_form(int no, Model model) {

		model.addAttribute("gb", dao.findByNo(no));

	}

	@PostMapping("/updateG_Board.do")
	public ModelAndView update_submit(HttpServletRequest request, Good_BoardVo gb) {

		// 원래(이전) file이름과 file크기를 담아둬야함
		String oldFname = gb.getFname();
		String oldDept_name=gb.getDept_name();
		
		System.out.println("oldFname: " + oldFname);
		System.out.println("oldDept_name: " + oldDept_name);
		
		String path = request.getRealPath("upload");
		System.out.println("path" + path);

		MultipartFile uploadFile = gb.getUploadFile();

		String fname = uploadFile.getOriginalFilename();
		// 업로드한 파일이 있는지 fname에 담아둠

		byte[] data = null;
		// int fsize = 0;
		// 파일 크기

		if (fname != null && !fname.equals("")) {
			System.out.println("파일도 수정합니다.");
			// 파일수정을 한다면
			// equals("")은 fname이 null일때 작동하지 않으므로 null부터 써줌
			// fname = uploadFile.getOriginalFilename();
			try {
				data = uploadFile.getBytes();
				// fsize = data.length;
			} catch (Exception e) {
				System.out.println("예외발생" + e.getMessage());
			}

		} else {
			System.out.println("파일은 수정하지않습니다.");
			// 파일수정을 안한다면
			fname = oldFname;

		}

		gb.setFname(fname);
		// vo에 file이름을 실어줌

		System.out.println("수정할 객체입니다");
		System.out.println(gb);

		ModelAndView mav = new ModelAndView("redirect:/listG_Board.do");

		int re = dao.update(gb);
		if (re <= 0) {
			// 게시물 수정에 실패
			mav.addObject("msg", "게시물 수정에 실패하였습니다");
			mav.setViewName("error");
		} else {
			// 게시물 수정에 성공

			// file이 있을때와 없을때 구분해줘야함
			if (!fname.equals("")) {
				// 업로드한 파일이 있음?
				try {

					// file 복사~
					FileOutputStream fos = new FileOutputStream(path + "/" + fname);
					fos.write(data);
					fos.close();

					if (oldFname != null) {
						// 수정하기 전 파일이 업로드 파일이 있음?
						File file = new File(path + "/" + oldFname);
						file.delete();
						// 있다면 삭제~
					}

				} catch (Exception e) {
					System.out.println("file처리" + e.getMessage());
				}
			}
		}

		return mav;

	}
	
	// 삭제~

	@GetMapping("/deleteG_Board.do")
	public void delete_form(int no, String title, Model model) {

		model.addAttribute("no", no);
		//model.addAttribute("title", title);
		

	}

	@PostMapping("/deleteG_Board.do")
	public ModelAndView delete_submit(HttpServletRequest request, int no, String pwd) {

		// 원래(이전) file이름과 file크기를 담아둬야함
		String oldFname = dao.findByNo(no).getFname();
		// int oldFsize = dao.findByNo(no).getFsize();

		String path = request.getRealPath("upload");
		System.out.println("path" + path);

		HashMap map = new HashMap();
		map.put("no", no);
		map.put("pwd", pwd);

		ModelAndView mav = new ModelAndView("redirect:/listG_Board.do");

		int re = dao.delete(map);
		if (re <= 0) {
			// 게시물 삭제에 실패
			mav.addObject("msg", "게시물 삭제에 실패하였습니다");
			mav.setViewName("error");
		} else {
			// 게시물 삭제에 성공

			if (oldFname != null) {
				// 업로드 파일이 있는 게시물이였음?
				File file = new File(path + "/" + oldFname);
				file.delete();
			}

		}

		return mav;

	}
}
