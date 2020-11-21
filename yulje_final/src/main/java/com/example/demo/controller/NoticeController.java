package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.NoticeDao;
import com.example.demo.vo.Good_BoardVo;
import com.example.demo.vo.Notice_BoardVo;



@Controller
public class NoticeController {

	@Autowired
	private NoticeDao dao;
	
	
	
	public void setDao(NoticeDao dao) {
		this.dao = dao;
	}

	public static int pageSIZE = 10;
	public static int totalCount = 0;
	public static int totalPage = 1;
	
	@RequestMapping("/N_down.do")
	public ModelAndView down(HttpServletRequest request, String fname) {
		// file download controller
		// 실경로를 알아오기 위해 request씀
		String path = request.getRealPath("upload");
		File file = new File(path + "/" + fname);

		return new ModelAndView("down", "file", file);

	}
	
	
	
	@RequestMapping("/listNotice")
	public ModelAndView listNotice(Model model,@RequestParam(defaultValue = "1") int pageNUM) {
		ModelAndView mav = new ModelAndView();
				
			
		totalCount = dao.getTotalCount();
		totalPage = (int) Math.ceil((double) totalCount / pageSIZE);
		int start = (pageNUM - 1) * pageSIZE + 1;
		int end = start + pageSIZE;
		if (end > totalCount) {
			end = totalCount;
		}
		
		HashMap map = new HashMap<>();
		map.put("end", end);
		map.put("start", start);
		mav.addObject("list", dao.findAllNotice(map));
		model.addAttribute("totalPage", totalPage);
		
//		String pageStr = "";
//		if (startPage > 1) {
//			pageStr += "<a href='listNotice.do?pageNUM=" + (startPage - 1) + "'>[이전]</a>";
//		}
//		for (int i = startPage; i <= endPage; i++) {
//			pageStr += "<a href='listNotice.do?pageNUM=" + i + "'>" + i + "</a> ";
//		}
//		if (endPage < totalPage) {
//			pageStr += "<a href='listNotice.do?pageNUM=" + (endPage + 1) + "'>[다음]</a>";
//		}
//		mav.addObject("pageStr", pageStr);
		
		return mav;
	}
	
	@RequestMapping("/detailNotice")
	public ModelAndView detailNotice(int no) {
		ModelAndView mav = new ModelAndView();
		dao.updateHit(no);
		mav.addObject("n", dao.findByNo(no));	
		return mav;
	}
	
	@RequestMapping(value = "/insertNotice", method = RequestMethod.GET)
	public void insertNoticeForm(@RequestParam(defaultValue = "0")int no,Model model) {
		model.addAttribute("no", no);
		
	}
	
	@PostMapping("/insertNotice")
	public ModelAndView insertNoticeSubmit(HttpServletRequest request, Notice_BoardVo n) {
		String path = request.getRealPath("upload");
		path = request.getServletContext().getRealPath("upload");
		System.out.println("path" + path);
		System.out.println(dao.getNextNo());
		
		//System.out.println(gb.getDept_name());
		
		
		int no = dao.getNextNo();
				
		MultipartFile uploadFile = n.getUploadFile();

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
		n.setNo(no);
		n.setFname(fname);
		// vo에 file이름을 실어줌

		ModelAndView mav = new ModelAndView("redirect:/listNotice");

		int re = dao.insert(n);
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
	
	@GetMapping("/updateNotice")
	public void update_form(int no, Model model) {
		model.addAttribute("n", dao.findByNo(no));
	}
	
	
	@PostMapping("/updateNotice")
	public ModelAndView update_submit(HttpServletRequest request, Notice_BoardVo n ) {
		String oldFname = n.getFname();
		
		
		System.out.println("oldFname: " + oldFname);
		
		
		String path = request.getRealPath("upload");
		System.out.println("path" + path);

		MultipartFile uploadFile = n.getUploadFile();

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

		n.setFname(fname);
		// vo에 file이름을 실어줌

		System.out.println("수정할 객체입니다");
		System.out.println(n);

		ModelAndView mav = new ModelAndView("redirect:/listNotice");

		int re = dao.update(n);
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
	
	
	@GetMapping("/deleteNotice")
	public void delete_form(int no, String title, Model model) {
		model.addAttribute("no",no);
		System.out.println("get no"+no);
		
		
	}
	
	
	@PostMapping("/deleteNotice")
	public ModelAndView delete_submit(HttpServletRequest request, Notice_BoardVo nb, int no) {
		
		
		String oldFname = nb.getFname();
		
		String path = request.getRealPath("upload");
		System.out.println("path"+path);
		
		ModelAndView mav = new ModelAndView("redirect:/listNotice");
		
		no = nb.getNo();
		System.out.println("post no"+no);
		int re = dao.delete(no);
		
		if(re <= 0) {
			mav.addObject("msg", "게시물 삭제에 실패하였습니다.");
			mav.setViewName("error");
		}else {
			if(oldFname != null) {
				File file = new File(path+"/"+oldFname);
				file.delete();
			}
		}
		
		
		
		return mav;
	}
	
	
	@GetMapping("/isMember")
	@ResponseBody
	public String isMember(HttpSession session) {
//		String r = (String)session.getAttribute("roles");
		String r = "ADMIN";
		return r;
	}
}
