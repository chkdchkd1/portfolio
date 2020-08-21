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

	ArrayList<ProductQuantityVo> selectProductQuantity(@Param("id")Integer code, @Param("weekend")String weekend);

}
