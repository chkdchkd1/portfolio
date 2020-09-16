package kr.green.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.project.pagination.Criteria;
import kr.green.project.vo.NoticeVo;
import kr.green.project.vo.QnAVo;

public interface BoardDao {

	void insertNotice(@Param("notice")NoticeVo notice);

	ArrayList<NoticeVo> selectNoticeList(@Param("cri")Criteria cri);

	NoticeVo selectNoticeByNum(@Param("num")Integer num);

	void updateNotice(@Param("notice")NoticeVo notice);

	int selectTotalCount(@Param("cri")Criteria cri);

	void insertQnA(@Param("qna")QnAVo qna);

	ArrayList<QnAVo> selectQnA();

	QnAVo selectHelpByNum(@Param("num")Integer num);

	void updateQnA(@Param("qna")QnAVo qna);

}
