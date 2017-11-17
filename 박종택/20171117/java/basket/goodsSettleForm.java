package basket;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import goods.goods_bin;
import goods.pagingAction;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.Map;
import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.net.*;

public class goodsSettleForm extends ActionSupport {

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

	public goodsSettleForm() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}	
	
	public String execute() throws Exception {

		setId((String)ActionContext.getContext().getSession().get("id"));
		list = sqlMapper.queryForList("basket.selectOrderWaitInformAll", getId());
		
		int totalCount = list.size();
		
		int lastCount = totalCount;
		
		list = list.subList(0, lastCount);

		if(totalCount == 0)
		{
			return ERROR;			
		}
		
		paramClass2 = new order_bin();
		paramClass2.setId((String)ActionContext.getContext().getSession().get("id"));
		
		resultClass2 = (order_bin) sqlMapper.queryForObject("basket.selectOrderPriceSum", paramClass2);		
		
		return SUCCESS;

	}

	public String delete() throws Exception
	{

		paramClass2 = new order_bin();
			
		paramClass2.setNo(getNo());
		
		sqlMapper.update("basket.deleteOrder", paramClass2);		
		
		return SUCCESS;
		
	}	
	
	public String orderSettle() throws Exception {
		
		paramClass2 = new order_bin();
		paramClass2.setOrder_no(getOrder_no());
		paramClass2.setMem_name(getMem_name());
		paramClass2.setAddress1(getAddress2());
		paramClass2.setAddress2(getAddress2());
		paramClass2.setPhone(getPhone());
		paramClass2.setOrder_memo(getOrder_memo());
		paramClass2.setSettle_type(getSettle_type());
		paramClass2.setZip_code(getZip_code());
		sqlMapper.update("basket.updateOrderStatus", paramClass2);			
		
		return SUCCESS;
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
