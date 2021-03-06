package kr.green.project.service;

import java.util.ArrayList;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.vo.ChartVo;
import kr.green.project.vo.ProductChartVo;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductImageVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.vo.ProductRegisterVo;

public interface ProductService2 {

	ArrayList<ProductListVo> getProductList(Criteria cri);
	
	ProductDetailVo getProductDetail(Integer code);
	
	ArrayList<ProductPriceVo> getPriceList(Integer code);
	
	ProductImageVo getImage2(Integer code, Integer i);

	ArrayList<ProductQuantityVo> getQuantity(Integer code, Integer weekend);

	ArrayList<ProductQuantityVo> getQuantityNum(int code, int weekend, String round);

	ArrayList<ProductPriceVo> getResPriceList(int code, int weekend);

	void registerProduct(ProductRegisterVo register);

	void registerPrice(ProductPriceVo pprice);

	void registerQuantity(ProductQuantityVo pQuantity);

	void registerImage(ProductImageVo image, int i);

	ArrayList<ProductListVo> getProductList2(Criteria cri);

	PageMaker getPageMaker(Criteria cri);

	PageMaker getPageMaker2(Criteria cri);

	ArrayList<ProductListVo> getSearchResultfromProduct(Criteria cri);

	PageMaker getPageMaker3(Criteria cri);

	ArrayList<ProductListVo> getProductListforAdmin(Criteria cri);

	void SetBlockpurchase(Integer code);

	PageMaker getPageMakerForAdmin(Criteria cri);

	ArrayList<ChartVo> getChartReservation();

	ArrayList<ProductChartVo> getProductChart();




}
