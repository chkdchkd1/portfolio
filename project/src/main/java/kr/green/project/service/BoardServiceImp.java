package kr.green.project.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.BoardDao;
import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.vo.CommentVo;
import kr.green.project.vo.NoticeVo;
import kr.green.project.vo.QnAVo;
import kr.green.project.vo.UserVo;

@Service
public class BoardServiceImp implements BoardService {

	@Autowired
	BoardDao boardDao;

	@Override
	public void registerNotice(NoticeVo notice) {
		boardDao.insertNotice(notice);
		
		
	}

	@Override
	public ArrayList<NoticeVo> getNoticeList(Criteria cri) {
		return boardDao.selectNoticeList(cri);
	}

	@Override
	public NoticeVo getNoticeDetail(Integer num) {
		NoticeVo notice = boardDao.selectNoticeByNum(num);
		if(notice != null) {
			notice.setOpenViews(notice.getOpenViews()+1);
			boardDao.updateNotice(notice);
		}
		return notice;
	}

	@Override
	public PageMaker getPageMaker(Criteria cri) {
		PageMaker pm = new PageMaker();
		int totalCount = boardDao.selectTotalCount(cri);
		pm.setCriteria(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}

	@Override
	public void updateNotice(NoticeVo notice) {
		boardDao.updateNotice(notice);
		
	}

	@Override
	public void registerQnA(QnAVo qna) {
		boardDao.insertQnA(qna);
		
	}

	@Override
	public ArrayList<QnAVo> getHelpList() {
		return boardDao.selectQnA();
	}

	@Override
	public QnAVo getHelpDetail(Integer num) {
		return boardDao.selectHelpByNum(num);
		
	}

	@Override
	public void updateQnA(QnAVo qna) {
		boardDao.updateQnA(qna);
	}

	@Override
	public ArrayList<CommentVo> getCommentList(Integer num) {
		return boardDao.selectCommentList(num);
	}

	@Override
	public void registerCommentFromQnA(CommentVo comment) {
		
		comment.setClassComment(0);
		comment.setOrder(0);
		boardDao.insertCommentFromQnA2(comment);
		boardDao.updateGroupNum(comment.getIndexComments());
		boardDao.updateQnaReplyCount(comment.getBoNum());
		

		
	}

	@Override
	public void registerReCommentFrom(CommentVo comment) {
		
		int orderCount = boardDao.selectCountOrderByGroupNum(comment.getGroupNum());
		comment.setClassComment(1);
		comment.setOrder(orderCount);
		boardDao.insertReCommentFromQnA(comment);
		boardDao.updateQnaReplyCount(comment.getBoNum());

		
		// 같은 그룹넘을 가지고있는 것들의 order 구하기 
		
	}

	@Override
	public void deleteComment(int indexComment, HttpServletRequest request) {
		
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		CommentVo comment = boardDao.selectcommentByindex(indexComment);
		if(user.getId().equals(comment.getMentWriter()) || user.getId().equals("admin")) {
			comment.setIsDel('Y');
			comment.setDelDateComment(new Date());
			boardDao.updateComment(comment);
			// updateComment MApper 마저 구현할 것  
		}
		
		
		
	}

	@Override
	public void ModifyQnA(QnAVo qna) {
		qna.setBoardDel('N');
		boardDao.updateQnA(qna);
		
	}

	@Override
	public int deleteQnA(Integer num, HttpServletRequest request) {
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		QnAVo qna = boardDao.selectHelpByNum(num);
		if(user.getId().equals(qna.getBoardWriter()) || user.getId().equals("admin")){
			qna.setBoardDel('Y');
			qna.setBoardDelDate(new Date());
			boardDao.updateQnA(qna);
			return 1;
		}else { 
			return 0;
		}
		
	
	}
	    

	




}
