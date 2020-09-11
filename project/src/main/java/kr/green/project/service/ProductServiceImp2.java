package kr.green.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.ProductDao;
import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductImageVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.vo.ProductRegisterVo;

@Service
public class ProductServiceImp2 implements ProductService2 {

	@Autowired
	ProductDao productDao;

	
	@Override
	public ArrayList<ProductListVo> getProductList(Criteria cri) {
		return productDao.selectProductList(cri);
	}
	
	@Override
	public ProductDetailVo getProductDetail(Integer code) {
		return productDao.selectProductDetail(code);
	}

	@Override
	public ArrayList<ProductPriceVo> getPriceList(Integer code) {
		return productDao.selectPriceList(code);
	}

	@Override
	public ProductImageVo getImage2(Integer code, Integer i) {
		return productDao.selectgetImage2(code,i);
	}

	@Override
	public ArrayList<ProductQuantityVo> getQuantity(Integer code, Integer weekend) {
		// TODO Auto-generated method stub
		return productDao.selectProductQuantity(code,weekend);
	}

	@Override
	public ArrayList<ProductQuantityVo> getQuantityNum(int code, int weekend, String round) {
		// TODO Auto-generated method stub
		return productDao.selectProductQuantityNum(code,weekend,round);
	}

	@Override
	public ArrayList<ProductPriceVo> getResPriceList(int code, int weekend) {
		// TODO Auto-generated method stub
		return  productDao.selectResPriceList(code,weekend);
	}

	@Override
	public void registerProduct(ProductRegisterVo register) {
		productDao.insertProductInfoTogoods(register);
		productDao.insertProductInfoTogoodsDetail(register);
		
	}

	@Override
	public void registerPrice(ProductPriceVo pprice) {
		productDao.insertPrice(pprice);
		
	}

	@Override
	public void registerQuantity(ProductQuantityVo pQuantity) {
		productDao.insertQuantity(pQuantity);
		
	}

	@Override
	public void registerImage(ProductImageVo image, int i) {
		int detailNum = productDao.selectInfoNum(i);
		image.setGoodsInfoNum(detailNum);
		productDao.insertImage(image);
		
	}

	

	@Override
	public PageMaker getPageMaker(Criteria cri) {
		PageMaker pm = new PageMaker();
		int totalCount = productDao.selectCountProduct();
		pm.setCriteria(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}

	@Override
	public ArrayList<ProductListVo> getProductList2(Criteria cri) {
		// TODO Auto-generated method stub
		return productDao.selectProductList2(cri);
	}
	
	@Override
	public PageMaker getPageMaker2(Criteria cri) {
		PageMaker pm = new PageMaker();
		int totalCount = productDao.selectCountProduct2();
		pm.setCriteria(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}

	@Override
	public ArrayList<ProductListVo> getSearchResultfromProduct(Criteria cri) {
		return productDao.selectSearchResultFromProduct(cri);
	}

	@Override
	public PageMaker getPageMaker3(Criteria cri) {
		PageMaker pm = new PageMaker();
		int totalCount = productDao.selectCountResultProduct(cri);
		pm.setCriteria(cri);
		pm.setTotalCount(totalCount);
		return pm;
	}



	
	
	
	

	
}
