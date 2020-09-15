package kr.green.project.service;

import java.util.ArrayList;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
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



}
