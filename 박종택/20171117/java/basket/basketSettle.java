package basket;

import com.opensymphony.xwork2.ActionSupport;

import category.category_bin;

import goods.goods_bin;

import com.opensymphony.xwork2.ActionContext;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.text.*; 

import java.io.File;
import org.apache.commons.io.FileUtils;

public class basketSettle extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private order_bin paramClass;
	private basket_bin paramClass2;
	private order_bin resultClass;
	
	private String id;
	private int goods_no;
	private int goods_qty;
	private int goods_price;
	private int no;
	private String choice_basket_no_list;
	private String zip_code;
	private String address1;
	private String address2;
	private String order_memo;
	private String settle_type;
	
	public basketSettle() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}	
	
	public String execute() throws Exception {
		
		paramClass2 = new basket_bin();
		paramClass2.setId((String)ActionContext.getContext().getSession().get("id"));
		sqlMapper.update("basket.updateBasketStatus", paramClass2);

		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA ); 
		Date currentTime = new Date(); 
		String dTime = formatter.format ( currentTime ); 
		sqlMapper.insert("basket.insertOrderNo", 1);
		
		resultClass = (order_bin) sqlMapper.queryForObject("basket.selectOrderNoMax", 1);
		int order_key = resultClass.getNo();
		String order_key_set = String.valueOf(order_key);		
		String order_number = dTime + order_key_set;
	
        StringTokenizer st = new StringTokenizer(getChoice_basket_no_list(),"||");
        while(st.hasMoreTokens()){  
        	String token = st.nextToken();
        	int nowSelectedNum = Integer.parseInt(token);        	
			
    		resultClass = (order_bin) sqlMapper.queryForObject("basket.selectBasketInformAll", nowSelectedNum);        	
        	
    		paramClass = new order_bin();
    		paramClass.setOrder_no(order_number);
    		paramClass.setGoods_no(resultClass.getGoods_no());
    		paramClass.setGoods_name(resultClass.getGoods_name());
    		paramClass.setOrder_qty(resultClass.getOrder_qty());
    		paramClass.setOrder_price(resultClass.getOrder_price());
    		paramClass.setGoods_color(resultClass.getGoods_color());
    		paramClass.setCategory_no(resultClass.getCategory_no());
    		paramClass.setId(resultClass.getId()); 
    		paramClass.setOrder_status("결제준비");
    		
    		sqlMapper.insert("basket.insertBasketOrder", paramClass);
    		
        	//sqlMapper.update("goods.deleteGoods", nowSelectedNum);
        }		
		
		//paramClass = new order_bin();		
		//paramClass.setId((String)ActionContext.getContext().getSession().get("id"));
		
		//sqlMapper.insert("basket.insertBasket", paramClass);
		
		return SUCCESS;
	}	

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getOrder_memo() {
		return order_memo;
	}

	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}

	public String getSettle_type() {
		return settle_type;
	}

	public void setSettle_type(String settle_type) {
		this.settle_type = settle_type;
	}	
	
	public order_bin getResultClass() {
		return resultClass;
	}

	public void setResultClass(order_bin resultClass) {
		this.resultClass = resultClass;
	}	
	
	public String getChoice_basket_no_list() {
		return choice_basket_no_list;
	}

	public void setChoice_basket_no_list(String choice_basket_no_list) {
		this.choice_basket_no_list = choice_basket_no_list;
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
	
	public order_bin getParamClass() {
		return paramClass;
	}

	public void setParamClass(order_bin paramClass) {
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
