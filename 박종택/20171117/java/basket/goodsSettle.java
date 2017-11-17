package basket;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import goods.goods_bin;
import goods.pagingAction;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.net.*;
import java.text.SimpleDateFormat;

public class goodsSettle extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private String id;

	private List<basket_bin> list = new ArrayList<basket_bin>();
	private basket_bin paramClass = new basket_bin();
	private order_bin paramClass2 = new order_bin();
	private basket_bin resultClass = new basket_bin();
	private order_bin resultClass2 = new order_bin();
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;	
	private int basket_cnt;
	private int no;
	private String settle_type;
	private String mem_name;
	private String zip_code;
	private String address1;
	private String address2;
	private String order_no;
	private String phone;
	private String order_memo;
	private int goods_no;
	private String goods_name;
	private int goods_qty;
	private int order_qty;
	private String goods_color;
	private int category_no;
	private int goods_price;
	private int one_goods_price;

	public goodsSettle() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}	
	
	public String execute() throws Exception {	
		
		paramClass = new basket_bin();
		paramClass.setId((String)ActionContext.getContext().getSession().get("id"));
		sqlMapper.update("basket.updateBasketStatus", paramClass);		
		
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyyMMddHHmmss", Locale.KOREA ); 
		Date currentTime = new Date(); 
		String dTime = formatter.format ( currentTime ); 
		sqlMapper.insert("basket.insertOrderNo", 1);
		
		resultClass2 = (order_bin) sqlMapper.queryForObject("basket.selectOrderNoMax", 1);
		int order_key = resultClass2.getNo();
		String order_key_set = String.valueOf(order_key);		
		String order_number = dTime + order_key_set;
		
		paramClass2 = new order_bin();
		paramClass2.setOrder_no(order_number);
		paramClass2.setGoods_no(getGoods_no());
		paramClass2.setGoods_name(getGoods_name());
		paramClass2.setOrder_qty(getGoods_qty());
		paramClass2.setOrder_price(getOne_goods_price()*getGoods_qty());
		paramClass2.setGoods_color(getGoods_color());
		paramClass2.setCategory_no(getCategory_no());
		paramClass2.setId((String)ActionContext.getContext().getSession().get("id"));
		paramClass2.setOrder_status("결제준비");
    	
    	sqlMapper.insert("basket.insertBasketOrder", paramClass2);
    	
		return SUCCESS;
	}
	
	public int getOne_goods_price() {
		return one_goods_price;
	}

	public void setOne_goods_price(int one_goods_price) {
		this.one_goods_price = one_goods_price;
	}	
	
	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}	
	
	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getGoods_qty() {
		return goods_qty;
	}

	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}

	public int getOrder_qty() {
		return order_qty;
	}

	public void setOrder_qty(int order_qty) {
		this.order_qty = order_qty;
	}

	public String getGoods_color() {
		return goods_color;
	}

	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}

	public int getCategory_no() {
		return category_no;
	}

	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}	
	
	public int getGoods_no() {
		return goods_no;
	}

	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}	
	
	public String getOrder_memo() {
		return order_memo;
	}

	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getOrder_no() {
		return order_no;
	}

	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	
	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
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

	public String getSettle_type() {
		return settle_type;
	}

	public void setSettle_type(String settle_type) {
		this.settle_type = settle_type;
	}	
	
	public order_bin getParamClass2() {
		return paramClass2;
	}

	public void setParamClass2(order_bin paramClass2) {
		this.paramClass2 = paramClass2;
	}

	public order_bin getResultClass2() {
		return resultClass2;
	}

	public void setResultClass2(order_bin resultClass2) {
		this.resultClass2 = resultClass2;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}	
	
	public int getBasket_cnt() {
		return basket_cnt;
	}

	public void setBasket_cnt(int basket_cnt) {
		this.basket_cnt = basket_cnt;
	}
	
	public basket_bin getParamClass() {
		return paramClass;
	}

	public void setParamClass(basket_bin paramClass) {
		this.paramClass = paramClass;
	}

	public basket_bin getResultClass() {
		return resultClass;
	}

	public void setResultClass(basket_bin resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public pagingAction getPage() {
		return page;
	}

	public void setPage(pagingAction page) {
		this.page = page;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}	
	
	public List<basket_bin> getList() {
		return list;
	}

	public void setList(List<basket_bin> list) {
		this.list = list;
	}


}
