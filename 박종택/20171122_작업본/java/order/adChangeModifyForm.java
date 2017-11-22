package order;

import com.opensymphony.xwork2.ActionSupport;

import admin.adorderlistVO;
import admin.goods_bin;

import com.opensymphony.xwork2.ActionContext;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;

public class adChangeModifyForm extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;	
	
	private order_Status_bin paramClass;
	private order_Status_bin paramClass2;
	private order_Status_bin resultClass;
	private String orderStatus;
	private int no;
	private String orderText;
	private int goods_no;
	private String reason;
	private String order_status;
	private int back_no;
	private int refund_no;	
	private int change_no;		

	private List<order_Status_bin> list = new ArrayList<order_Status_bin>();
	
	public adChangeModifyForm() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}		
	
	public String execute() throws Exception {
		
		paramClass = new order_Status_bin();
		paramClass.setNo(getNo());
		resultClass = (order_Status_bin) sqlMapper.queryForObject("orderSet.selectOneChange", paramClass);	
		
		return SUCCESS;
	}
	
	public List<order_Status_bin> getList() {
		return list;
	}

	public void setList(List<order_Status_bin> list) {
		this.list = list;
	}

	public void setParamClass(order_Status_bin paramClass) {
		this.paramClass = paramClass;
	}

	public void setResultClass(order_Status_bin resultClass) {
		this.resultClass = resultClass;
	}	
	
	public int getBack_no() {
		return back_no;
	}

	public void setBack_no(int back_no) {
		this.back_no = back_no;
	}

	public int getRefund_no() {
		return refund_no;
	}

	public void setRefund_no(int refund_no) {
		this.refund_no = refund_no;
	}

	public int getChange_no() {
		return change_no;
	}

	public void setChange_no(int change_no) {
		this.change_no = change_no;
	}	

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}	
	
	public order_Status_bin getParamClass2() {
		return paramClass2;
	}

	public void setParamClass2(order_Status_bin paramClass2) {
		this.paramClass2 = paramClass2;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}	
	
	public int getGoods_no() {
		return goods_no;
	}

	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}	
	

	public String getOrderText() {
		return orderText;
	}

	public void setOrderText(String orderText) {
		this.orderText = orderText;
	}	
	
	public order_Status_bin getParamClass() {
		return paramClass;
	}

	public order_Status_bin getResultClass() {
		return resultClass;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}	
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}	
	
}