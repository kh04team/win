package user;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import admin.pagingAction;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;



public class orderlistAction extends ActionSupport  {
        
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<orderlistVO> list = new ArrayList<orderlistVO>();
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;
	private String id;
	

	public orderlistAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	public String execute() throws Exception{
		
		setId((String)ActionContext.getContext().getSession().get("id"));
		list = sqlMapper.queryForList("orderlist.selectAll", getId());
		
		totalCount = list.size();
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, "");
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);		
		
		return SUCCESS;
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}	
	public List<orderlistVO> getList() {
		return list;
	}
	public void setList(List<orderlistVO> list) {
		this.list = list;
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
	
}
