package kr.green.project.controller;


import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.service.BoardService;
import kr.green.project.utils.UploadFileUtils;
import kr.green.project.vo.NoticeVo;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardService;
	
//	@Resource
	private String uploadPath = "C:\\Users\\Administrator\\Desktop\\upload";
	
	@RequestMapping(value = "/notice/Register", method = RequestMethod.GET)
	public ModelAndView noticeRegister(ModelAndView mv) throws Exception{
	    mv.setViewName("/admin/noticeRegister");

	    
	    return mv;
	}
	
	
	@RequestMapping(value = "/admin/notice", method = RequestMethod.GET)
	public ModelAndView adminNotice(ModelAndView mv,  Criteria cri) throws Exception {
		
		cri.setPerPageNum(10);
		PageMaker pm = boardService.getPageMaker(cri);

		ArrayList<NoticeVo> noticelist = boardService.getNoticeList(cri);
		System.out.println(noticelist);
		System.out.println(cri.getSearch());
		
		mv.setViewName("/admin/adminNotice");
	    mv.addObject("list", noticelist);
	    mv.addObject("pm", pm);

		 
		return mv;
	}
	
	@RequestMapping(value = "/notice/Register", method = RequestMethod.POST)
	public ModelAndView BoardRegisterPost(ModelAndView mv, NoticeVo notice, MultipartFile file1) throws Exception {
		
		System.out.println(notice);
		
		// mv.setViewName("redirect:/admin/noticeRegister"); // 저 위치와 연결 

		 String fileName = UploadFileUtils.uploadFile(uploadPath,file1.getOriginalFilename(),file1.getBytes());
		 notice.setOpenImage(fileName);
		 boardService.registerNotice(notice);
		 mv.setViewName("redirect:/notice/list");

		 
		return mv;
	}
	
	
	@RequestMapping(value = "/notice/list", method = RequestMethod.GET)
	public ModelAndView noticeList(ModelAndView mv,  Criteria cri) throws Exception{
	    
		cri.setPerPageNum(10);
		PageMaker pm = boardService.getPageMaker(cri);

		ArrayList<NoticeVo> noticelist = boardService.getNoticeList(cri);
		System.out.println(noticelist);
		System.out.println(cri.getSearch());
		
		mv.setViewName("/board/noticeList");
	    mv.addObject("list", noticelist);
	    mv.addObject("pm", pm);

	    
	    return mv;
	}
	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public ModelAndView noticeDetail(ModelAndView mv, Integer num) throws Exception{
	    
		NoticeVo notice = boardService.getNoticeDetail(num);
		mv.setViewName("/board/notice");
	    mv.addObject("notice", notice);
	    
	    return mv;
	}
	
	
	
	
	
	
	
	
	
	
}
