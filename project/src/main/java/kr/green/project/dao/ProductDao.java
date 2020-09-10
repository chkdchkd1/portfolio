package kr.green.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.project.pagination.Criteria;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.vo.ProductRegisterVo;
import kr.green.project.vo.ProductImageVo;

public interface ProductDao {

	ArrayList<ProductListVo> selectProductList(@Param("cri")Criteria cri);

	ProductDetailVo selectProductDetail(@Param("code")Integer code);

	ArrayList<ProductPriceVo> selectPriceList(@Param("code")Integer code);

	ProductImageVo selectgetImage2(@Param("code")Integer code, @Param("location")Integer i);

	ArrayList<ProductQuantityVo> selectProductQuantity(@Param("code")Integer code, @Param("weekend")Integer weekend);

	ArrayList<ProductQuantityVo> selectProductQuantityNum(@Param("code")int code,@Param("weekend")int weekend, @Param("round") String round);

	ArrayList<ProductPriceVo> selectResPriceList(@Param("code")int code, @Param("weekend")int weekend);

	void insertProductInfoTogoods(@Param("register")ProductRegisterVo register);

	void insertProductInfoTogoodsDetail(@Param("register")ProductRegisterVo register);

	void insertPrice(@Param("pprice")ProductPriceVo pprice);

	void insertQuantity(@Param("Quantity")ProductQuantityVo pQuantity);

	int selectInfoNum(@Param("code")int i);

	void insertImage(@Param("image")ProductImageVo image);

	ArrayList<ProductListVo> selectProductList2();

	int selectCountProduct();



}
