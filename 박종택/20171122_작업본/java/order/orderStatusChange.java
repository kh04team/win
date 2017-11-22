package order;

import com.opensymphony.xwork2.ActionSupport;

import admin.adorderlistVO;

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

public class orderStatusChange extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;	
	
	private order_bin paramClass;
	private order_Status_bin paramClass2;
	private order_bin resultClass;
	private String orderStatus;
	private int no;
	private String orderText;
	private int goods_no;
	private String reason;
	private String order_status;
	private int back_no;
	private int refund_no;	
	private int change_no;	
	private String admin_memo;

	public orderStatusChange() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}		
	
	public String execute() throws Exception {
		
		paramClass = new order_bin();
		paramClass.setNo(getNo());
		sqlMapper.update("orderSet.updateOrderCancel", paramClass);			
		
		return SUCCESS;
	}
	
	public String backForm() throws Exception
	{
		setOrderText("반품");
		
		paramClass = new order_bin();
		paramClass.setNo(getNo());
		
		resultClass = (order_bin) sqlMapper.queryForObject("orderSet.selectInform", paramClass);
		
		return SUCCESS;
	}

	public String refundForm() throws Exception
	{
		setOrderText("환불");		
		
		paramClass = new order_bin();
		paramClass.setNo(getNo());
		
		resultClass = (order_bin) sqlMapper.queryForObject("orderSet.selectInform", paramClass);		
		
		return SUCCESS;
	}	

	public String changeForm() throws Exception
	{
		setOrderText("교환");		
		
		paramClass = new order_bin();
		paramClass.setNo(getNo());
		
		resultClass = (order_bin) sqlMapper.queryForObject("orderSet.selectInform", paramClass);		
		
		return SUCCESS;
	}	
	
	public String back() throws Exception
	{
		
		paramClass2 = new order_Status_bin();
		paramClass2.setBack_no(getNo());
		paramClass2.setOrder_status("반품신청");
		paramClass2.setReason(reason);
		sqlMapper.insert("orderSet.insertBack", paramClass2);
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getNo());
		paramClass2.setOrder_status("반품신청");		
		sqlMapper.update("orderSet.updateOrderStatus",paramClass2);			
		
		return SUCCESS;

	}

	public String refund() throws Exception
	{
		
		paramClass2 = new order_Status_bin();
		paramClass2.setRefund_no(getNo());
		paramClass2.setOrder_status("환불신청");
		paramClass2.setReason(reason);
		sqlMapper.insert("orderSet.insertRefund", paramClass2);
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getNo());
		paramClass2.setOrder_status("환불신청");		
		sqlMapper.update("orderSet.updateOrderStatus",paramClass2);					
		
		return SUCCESS;
	}	

	public String change() throws Exception
	{
		
		paramClass2 = new order_Status_bin();
		paramClass2.setChange_no(getNo());
		paramClass2.setOrder_status("교환신청");
		paramClass2.setReason(reason);
		sqlMapper.insert("orderSet.insertChange", paramClass2);
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getNo());
		paramClass2.setOrder_status("교환신청");		
		sqlMapper.update("orderSet.updateOrderStatus",paramClass2);				
		
		return SUCCESS;
	}	
	
	public String admin_back() throws Exception
	{
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getNo());
		paramClass2.setOrder_status(getOrder_status());		
		paramClass2.setAdmin_memo(getAdmin_memo());		
		sqlMapper.update("orderSet.updateOrderBackStatus", paramClass2);						
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getBack_no());
		paramClass2.setOrder_status(getOrder_status());	
		sqlMapper.update("orderSet.updateOrderStatus", paramClass2);				
		
		return SUCCESS;
	}			

	public String admin_refund() throws Exception
	{
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getNo());
		paramClass2.setOrder_status(getOrder_status());		
		paramClass2.setAdmin_memo(getAdmin_memo());		
		sqlMapper.update("orderSet.updateOrderRefundStatus", paramClass2);						
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getRefund_no());
		paramClass2.setOrder_status(getOrder_status());	
		sqlMapper.update("orderSet.updateOrderStatus", paramClass2);				
		
		return SUCCESS;
	}			
	
	public String admin_change() throws Exception
	{
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getNo());
		paramClass2.setOrder_status(getOrder_status());		
		paramClass2.setAdmin_memo(getAdmin_memo());		
		sqlMapper.update("orderSet.updateOrderChangeStatus", paramClass2);						
		
		paramClass2 = new order_Status_bin();
		paramClass2.setNo(getChange_no());
		paramClass2.setOrder_status(getOrder_status());	
		sqlMapper.update("orderSet.updateOrderStatus", paramClass2);				
		
		return SUCCESS;
	}		
	
	public String getAdmin_memo() {
		return admin_memo;
	}

	public void setAdmin_memo(String admin_memo) {
		this.admin_memo = admin_memo;
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
	
	public order_bin getResultClass() {
		return resultClass;
	}

	public void setResultClass(order_bin resultClass) {
		this.resultClass = resultClass;
	}	
	
	public String getOrderText() {
		return orderText;
	}

	public void setOrderText(String orderText) {
		this.orderText = orderText;
	}	
	
	public order_bin getParamClass() {
		return paramClass;
	}

	public void setParamClass(order_bin paramClass) {
		this.paramClass = paramClass;
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