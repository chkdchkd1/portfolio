package kr.green.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.ProductDao;
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
	public ArrayList<ProductListVo> getProductList() {
		return productDao.selectProductList();
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



	
	
	
	

	
}
