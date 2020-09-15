package kr.green.project.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
import kr.green.project.vo.QnAVo;
import kr.green.project.vo.UserVo;


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
	
	@RequestMapping(value = "/notice/noticeRegister", method = RequestMethod.GET)
	public ModelAndView noticeRegister(ModelAndView mv) throws Exception{
	    mv.setViewName("/admin/noticeRegister");

	    
	    return mv;
	}
	
	@RequestMapping(value = "/admin/noticeRegister", method = RequestMethod.POST)
	public ModelAndView noticeRegisterPost(ModelAndView mv, NoticeVo notice, MultipartFile file1) throws Exception {
		
		System.out.println(notice);
		
		// mv.setViewName("redirect:/admin/noticeRegister"); // 저 위치와 연결 

		 String fileName = UploadFileUtils.uploadFile(uploadPath,file1.getOriginalFilename(),file1.getBytes());
		 notice.setOpenImage(fileName);
		 boardService.registerNotice(notice);
		 mv.setViewName("redirect:/admin/notice");


		return mv;
	}
	
	@RequestMapping(value = "/admin/noticeModify", method = RequestMethod.GET)
	public ModelAndView noticeModifyGet(ModelAndView mv, Integer num) throws Exception {
		
		NoticeVo notice = boardService.getNoticeDetail(num);
		mv.addObject("notice", notice);
		mv.setViewName("/admin/noticeModify");

		return mv;
	}
	
	@RequestMapping(value = "/admin/noticeModify", method = RequestMethod.POST)
	public ModelAndView noticeModifyPost(ModelAndView mv, NoticeVo notice, MultipartFile file1) throws Exception {
		
		
		if(file1.getOriginalFilename().length() != 0) {
			String fileName = UploadFileUtils.uploadFile(uploadPath,file1.getOriginalFilename(),file1.getBytes()); 
			notice.setOpenImage(fileName);
			} else if (notice.getOpenImage().length() == 0) {
				notice.setOpenImage(null);
				}
		
		System.out.println(notice);
		boardService.updateNotice(notice);
		 mv.setViewName("redirect:/admin/notice");
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
	
	
	
	
	@RequestMapping(value = "/help/list", method = RequestMethod.GET)
	public ModelAndView helpList(ModelAndView mv) throws Exception{
	    
		ArrayList<QnAVo> qna = boardService.getHelpList();
		System.out.println(qna);

		mv.setViewName("/board/qnaList");
	  	    
	    return mv;
	}
	
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public ModelAndView helpDetail(ModelAndView mv,Integer num) throws Exception{
	    
		mv.setViewName("/board/qna");
	  	    
	    return mv;
	}
	
	
	@RequestMapping(value = "/help/register", method = RequestMethod.GET)
	public ModelAndView helpRegister(ModelAndView mv) throws Exception{
	    
		mv.setViewName("/board/qnaRegister");
	  
	    
	    return mv;
	}
	

	@RequestMapping(value = "/help/register", method = RequestMethod.POST)
	public ModelAndView helpRegisterPost(ModelAndView mv, QnAVo qna, HttpServletRequest request) throws Exception{
	    
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		qna.setBoardWriter(user.getId());
		boardService.registerQnA(qna);
		mv.setViewName("redirect:/help/list");
	
	    return mv;
	}
	
	
	
	/*
	 * ->
		게시판 클릭(유저 정보 받고) 유저정보랑 글쓴 이가 다른사람이면 redirect로 비밀번호 입력을 받는다
		비밀번호가 맞으면 해당 게시물로 이동 다르면 alert 띄우고 리스트로 돌아가기 
		-> 제목에 비밀글 표시
		-> 댓글 달리면 총 갯수 카운트해서 제목옆에 표시 
		-> 댓글 계층형으로 구현할 것
	 */
	
	
	
}
