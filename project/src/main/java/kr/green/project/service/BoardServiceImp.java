package kr.green.project.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.BoardDao;
import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
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
	    

	




}
