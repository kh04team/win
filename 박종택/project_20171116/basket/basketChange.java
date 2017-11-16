package basket;

import com.opensymphony.xwork2.ActionSupport;

import category.category_bin;

import com.opensymphony.xwork2.ActionContext;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.Map;
import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;

public class basketChange extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private basket_bin paramClass;
	private basket_bin resultClass;
	private basket_bin resultClass2;
	private basket_bin resultClass3;
	private basket_bin resultClass4;
	
	private String id;
	private int goods_no;
	private int goods_qty;
	private int goods_price;
	private int no;
	
	public basketChange() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}	
	
	public String execute() throws Exception {
		
		paramClass = new basket_bin();
		paramClass.setGoods_no(getGoods_no());
		resultClass = (basket_bin) sqlMapper.queryForObject("basket.selectGoodsPriceChoice", paramClass);
		
		int goods_price_one = resultClass.getGoods_price();		
		int total_goods_price = goods_price_one * getGoods_qty();
			
		paramClass = new basket_bin();
		paramClass.setNo(getNo());
		paramClass.setGoods_qty(getGoods_qty());
		paramClass.setGoods_price(total_goods_price);		
		
		sqlMapper.update("basket.updateBasketPrice", paramClass);
		
		paramClass = new basket_bin();
		paramClass.setNo(getNo());
		resultClass2 = (basket_bin) sqlMapper.queryForObject("basket.selectBasketPriceChoice", paramClass);		
		
		paramClass = new basket_bin();
		paramClass.setId((String)ActionContext.getContext().getSession().get("id"));
		resultClass3 = (basket_bin) sqlMapper.queryForObject("basket.selectBasketPriceSum", paramClass);			
		
		return SUCCESS;
	}	

	public String delete() throws Exception
	{

		paramClass = new basket_bin();
		
		paramClass.setNo(getNo());
		
		sqlMapper.update("basket.deleteBasket", paramClass);		
		
		return SUCCESS;
		
	}
	
	public basket_bin getResultClass4() {
		return resultClass4;
	}

	public void setResultClass4(basket_bin resultClass4) {
		this.resultClass4 = resultClass4;
	}	
	
	public basket_bin getResultClass3() {
		return resultClass3;
	}

	public void setResultClass3(basket_bin resultClass3) {
		this.resultClass3 = resultClass3;
	}	
	
	public basket_bin getResultClass() {
		return resultClass;
	}

	public void setResultClass(basket_bin resultClass) {
		this.resultClass = resultClass;
	}

	public basket_bin getResultClass2() {
		return resultClass2;
	}

	public void setResultClass2(basket_bin resultClass2) {
		this.resultClass2 = resultClass2;
	}	
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}	
	
	public basket_bin getParamClass() {
		return paramClass;
	}

	public void setParamClass(basket_bin paramClass) {
		this.paramClass = paramClass;
	}

	public int getGoods_no() {
		return goods_no;
	}

	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}

	public int getGoods_qty() {
		return goods_qty;
	}

	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}	
	
}
