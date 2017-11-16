package user;


import com.opensymphony.xwork2.ActionSupport;

import admin.adorderlistVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;


public class orderListViewAction extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private orderlistVO paramClass = new orderlistVO();
	private orderlistVO resultClass = new orderlistVO();
	private int no;
		
		
	public orderListViewAction() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper =	SqlMapClientBuilder.buildSqlMapClient(reader); 
		reader.close();
		
	}
	
	public String execute() throws Exception{
		
		resultClass = (orderlistVO) sqlMapper.queryForObject("orderListView.selectOne", getNo());
	
		return SUCCESS;
	}

	public orderlistVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(orderlistVO paramClass) {
		this.paramClass = paramClass;
	}

	public orderlistVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(orderlistVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}
	
	
	
}
