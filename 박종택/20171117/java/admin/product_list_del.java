package admin;

import com.opensymphony.xwork2.ActionSupport;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;

public class product_list_del extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private goods_bin paramClass;
	private goods_bin resultClass;
	
	private int goods_no;
	
	private String product_selected_list;
	
	public int nowSelectedNum;
	
	public product_list_del() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}		
	
	public String execute() throws Exception {
		
        StringTokenizer st = new StringTokenizer(getProduct_selected_list(),"||");
        while(st.hasMoreTokens()){  
        	String token = st.nextToken();
        	nowSelectedNum = Integer.parseInt(token);        	
			sqlMapper.update("goods.deleteGoods", nowSelectedNum);
        }
		
		return SUCCESS;
	}	
	
	public int getGoods_no() {
		return goods_no;
	}

	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}		
	public String getProduct_selected_list() {
		return product_selected_list;
	}

	public void setProduct_selected_list(String product_selected_list) {
		this.product_selected_list = product_selected_list;
	}	
	
		
}

