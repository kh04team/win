package admin;

import com.opensymphony.xwork2.ActionSupport;

import admin.goods_bin;
import category.category_bin;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;

public class adGoodsWriteForm extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private goods_bin paramClass;
	
	private int totalCount;
	
	private List<goods_bin> list = new ArrayList<goods_bin>();
	
	public adGoodsWriteForm() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}	
	
	public String execute() throws Exception {
		
		list = sqlMapper.queryForList("goods.selectCategoryAll");
		
		totalCount = list.size();
		
		int lastCount = totalCount;
		
		list = list.subList(0, lastCount);
		
		return SUCCESS;
	}

	public List<goods_bin> getList() {
		return list;
	}

	public void setList(List<goods_bin> list) {
		this.list = list;
	}		
	
}
