package kr.green.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.vo.ProductImageVo;

public interface ProductDao {

	ArrayList<ProductListVo> selectProductList();

	ProductDetailVo selectProductDetail(@Param("code")Integer code);

	ArrayList<ProductPriceVo> selectPriceList(@Param("code")Integer code);

	ProductImageVo selectgetImage2(@Param("code")Integer code, @Param("location")Integer i);

	ArrayList<ProductQuantityVo> selectProductQuantity(@Param("code")Integer code, @Param("weekend")Integer weekend);

	ArrayList<ProductQuantityVo> selectProductQuantityNum(@Param("code")int code,@Param("weekend")int weekend, @Param("round") String round);

	ArrayList<ProductPriceVo> selectResPriceList(@Param("code")int code, @Param("weekend")int weekend);



}
