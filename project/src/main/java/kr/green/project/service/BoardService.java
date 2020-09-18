package kr.green.project.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.vo.CommentVo;
import kr.green.project.vo.NoticeVo;
import kr.green.project.vo.QnAVo;

public interface BoardService {

	void registerNotice(NoticeVo notice);

	ArrayList<NoticeVo> getNoticeList(Criteria cri);

	NoticeVo getNoticeDetail(Integer num);

	PageMaker getPageMaker(Criteria cri);

	void updateNotice(NoticeVo notice);

	void registerQnA(QnAVo qna);

	ArrayList<QnAVo> getHelpList();

	QnAVo getHelpDetail(Integer num);

	void updateQnA(QnAVo qna);

	ArrayList<CommentVo> getCommentList(Integer num);

	void registerCommentFromQnA(CommentVo comment);

	void registerReCommentFrom(CommentVo comment);

	void deleteComment(int indexComment, HttpServletRequest request);

	void ModifyQnA(QnAVo qna);

	int deleteQnA(Integer num, HttpServletRequest request);



}
