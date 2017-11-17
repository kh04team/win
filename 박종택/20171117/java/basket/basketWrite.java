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

public class basketWrite extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private basket_bin paramClass;
	
	private String id;
	private int goods_no;
	private int goods_qty;
	private int goods_price;
	private int no;
	
	public basketWrite() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}	
	
	public String execute() throws Exception {
		
		paramClass = new basket_bin();
		paramClass.setGoods_no(getGoods_no());
		paramClass.setGoods_qty(getGoods_qty());
		paramClass.setGoods_price(getGoods_price());
		paramClass.setId((String)ActionContext.getContext().getSession().get("id"));
		
		sqlMapper.insert("basket.insertBasket", paramClass);
		
		return SUCCESS;
	}	

	public String delete() throws Exception
	{

		paramClass = new basket_bin();
		
		paramClass.setNo(getNo());
		
		sqlMapper.update("basket.deleteBasket", paramClass);		
		
		return SUCCESS;
		
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
