package admin;


import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

	public class adOrderViewAction extends ActionSupport {
	    
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private adorderlistVO paramClass = new adorderlistVO();
	private adorderlistVO resultClass = new adorderlistVO();
	private int no;
	
	private List<order_status_bin> list = new ArrayList<order_status_bin>();
		
	public adOrderViewAction() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper =	SqlMapClientBuilder.buildSqlMapClient(reader); 
		reader.close();
		
	}
	
	public String execute() throws Exception{
		
		//System.out.println("1111111");
		
		list = sqlMapper.queryForList("adorderlist.selectOrderStatusAll");
		
		int totalCount = list.size();
		
		list = list.subList(0, totalCount);
		
		resultClass = (adorderlistVO) sqlMapper.queryForObject("adOrderView.selectOne", getNo());
	
		return SUCCESS;
	}
	
	
	
	
	public List<order_status_bin> getList() {
		return list;
	}

	public void setList(List<order_status_bin> list) {
		this.list = list;
	}

	public adorderlistVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(adorderlistVO paramClass) {
		this.paramClass = paramClass;
	}

	public adorderlistVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(adorderlistVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}

}
