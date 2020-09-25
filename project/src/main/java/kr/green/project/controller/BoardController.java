package kr.green.project.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonIgnore;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.service.BoardService;
import kr.green.project.utils.UploadFileUtils;
import kr.green.project.vo.CommentVo;
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
	
	
	
	// 고객센터 게시판 
	@RequestMapping(value = "/help/list", method = RequestMethod.GET)
	public ModelAndView helpList(ModelAndView mv,HttpServletRequest request) throws Exception{
	    
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		ArrayList<QnAVo> qna = boardService.getHelpList();
		mv.addObject("qna", qna);
		mv.addObject("user", user);
		mv.setViewName("/board/qnaList");
	  	    
	    return mv;
	}
	
	@RequestMapping(value = "/help/checkBoardPw", method = RequestMethod.GET)
	public ModelAndView checkBoardPw(ModelAndView mv, Integer num ) throws Exception{
		
			mv.addObject("num", num);
			mv.setViewName("/board/qnaPwForm");
	
	  	    
	    return mv;
	}
	
	
	@RequestMapping(value ="/checkBoardPw", method = RequestMethod.POST)
	@ResponseBody
	public int checkBoardPw(@RequestBody @RequestParam int num, @RequestParam String pw, HttpServletRequest request){ 		

		HttpSession session = request.getSession();
		String sucess = "sucess";
		String fail ="fail";
		QnAVo qna = boardService.getHelpDetail(num);
		if(pw.equals(qna.getBoardPw())) {
			session.setAttribute("check", sucess);
			System.out.println(session.getAttribute("check"));
			return qna.getBoardNum();			
		} else {
			session.setAttribute("check", fail);
			System.out.println(session.getAttribute("check"));
			return -1;
		}
		//세션에 정보를 저장  
		
	
	}
	
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public ModelAndView helpDetail(ModelAndView mv,Integer num, HttpServletRequest request) throws Exception{
		
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		
		/*
		 if(user == null) { mv.setViewName("redirect:/help/list"); } else {
		 */
		 
			
				String check = null;
				QnAVo qna = boardService.getHelpDetail(num);
				// 댓글불러오기 
				ArrayList<CommentVo> ment = boardService.getCommentList(num);
				
				HttpSession session = request.getSession();
				check = (String)session.getAttribute("check");
				
				if(!user.getId().equals("admin") && !qna.getBoardWriter().equals(user.getId()) && qna.getUsePw() == 'Y') {
					if(check == null|| check.equals("fail")) {
						//null을 걸 때 or을 걸려면 순서를 잘 걸어야 한다. 앞이 참이면 무조건 뒤에도 참으로 들어가기 때문에, 여기 같은 경우는 equals fail이 false이기 때문에 null을 걸러주지 못함! 
						mv.setViewName("redirect:/help/list");
						
					} else {
						qna.setViews(qna.getViews()+1);
						boardService.updateQnA(qna);
						mv.setViewName("/board/qna");
					  	mv.addObject("qna", qna);
					  	mv.addObject("comment", ment);
					  	mv.addObject("user", user);

					}
			
				}  else {
				
				qna.setViews(qna.getViews()+1);
				boardService.updateQnA(qna);
				mv.setViewName("/board/qna");
			  	mv.addObject("qna", qna);
			  	mv.addObject("comment", ment);
			  	mv.addObject("user", user);


				
				}
		
	  	
		
		
	    return mv;
	}
	
	
	
	
	@RequestMapping(value = "/help/register", method = RequestMethod.GET)
	public ModelAndView helpRegister(ModelAndView mv, HttpServletRequest request) throws Exception{
	    
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		if(user == null ) {
			mv.setViewName("redirect:/help/list");
		} else
		mv.setViewName("/board/qnaRegister");

	    return mv;
	}
	

	//글 등록
	@RequestMapping(value = "/help/register", method = RequestMethod.POST)
	public ModelAndView helpRegisterPost(ModelAndView mv, QnAVo qna, HttpServletRequest request) throws Exception{
	    
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		qna.setBoardWriter(user.getId());
		boardService.registerQnA(qna);
		mv.setViewName("redirect:/help/list");
	
	    return mv;
	}
	
	//글 수정
	
	@RequestMapping(value = "/help/modify", method = RequestMethod.GET)
	public ModelAndView helpModifyGet(ModelAndView mv, Integer num, HttpServletRequest request) throws Exception{
	    
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		QnAVo qna = boardService.getHelpDetail(num);		
		if(!user.getId().equals(qna.getBoardWriter())) {
			mv.setViewName("redirect:/help/list");
		} else {
		mv.addObject("qna", qna);
		mv.setViewName("/board/qnaModify");
		}
	
	    return mv;
	}
	
	
	@RequestMapping(value = "/help/modify", method = RequestMethod.POST	)
	public ModelAndView helpModifyPost(ModelAndView mv, QnAVo qna) throws Exception{	    
		boardService.ModifyQnA(qna);
		mv.setViewName("redirect:/help/list");
	
	    return mv;
	}
	
	
	//글삭제 
	
	@RequestMapping(value = "/help/delete", method = RequestMethod.GET)
	public ModelAndView helpDeleteGet(ModelAndView mv, Integer num, HttpServletRequest request) throws Exception{	    
		
		int delete = boardService.deleteQnA(num, request);
	
		if(delete == 0) {
			mv.setViewName("redirect:/help/list");
		} else {
		mv.setViewName("redirect:/help/list");
		}
	
	    return mv;
	}
	
	
	
	
	
	//댓글등록 
	@RequestMapping(value ="/help/commentRegister")
	@ResponseBody
	public int commentRegister(@RequestBody CommentVo comment){
		boardService.registerCommentFromQnA(comment);	
		return 1;
	}
	
	//댓글리스트 읽어오기 
	@RequestMapping(value ="/help/commentList")
	@ResponseBody
	public ArrayList<CommentVo> commentList(@RequestBody int boNum){
		
		ArrayList<CommentVo> list = boardService.getCommentList(boNum);
		return list;
	}
	
	//대댓글등록 
	@RequestMapping(value ="/help/commentReplyRegister")
	@ResponseBody
	
	public int commentReplyRegister(@RequestBody CommentVo comment){
		boardService.registerReCommentFrom(comment);	
		return 1;
	}
	
	
	//댓글삭제 (삭제버튼 작성자만 보이도록) 
	@RequestMapping(value ="/help/commentDelete")
	@ResponseBody
	public int commentDelete(@RequestBody int indexComment , HttpServletRequest request){
		
		boardService.deleteComment(indexComment,request);
		
		return 1;
	}	
	
	
	
	
	
	
	
	
	
	
	
}
