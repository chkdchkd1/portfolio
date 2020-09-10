package kr.green.project.dao;


import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.project.vo.ReviewVo;

public interface ReviewDao {

	ReviewVo selectReviewByRvNum(@Param("rvNum")String rvNum);

	void insertReview(@Param("review")ReviewVo review);

	ArrayList<ReviewVo> selectReviewBycode(@Param("code")Integer code);

	int selectReviewLike(@Param("reviewNum")int reviewNum, @Param("user")String id);

	void insertReviewLike(@Param("reviewNum")int reviewNum, @Param("user")String id);

	void updateReviewBylike(@Param("reviewNum")int reviewNum);

	ReviewVo selectReviewByreviewNum(@Param("reviewNum")int reviewNum);

	void updateReview(@Param("review")ReviewVo review1);

	int selectReviewCount(@Param("code")Integer code);




}
