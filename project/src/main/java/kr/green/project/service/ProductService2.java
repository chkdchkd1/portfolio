package kr.green.project.service;

import java.util.ArrayList;

import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductImageVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;

public interface ProductService2 {

	ArrayList<ProductListVo> getProductList();
	
	ProductDetailVo getProductDetail(Integer code);
	
	ArrayList<ProductPriceVo> getPriceList(Integer code);
	
	ProductImageVo getImage2(Integer code, Integer i);

	ArrayList<ProductQuantityVo> getQuantity(Integer code, String weekend);


}
