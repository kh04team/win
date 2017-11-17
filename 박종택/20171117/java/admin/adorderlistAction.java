package admin;


import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;
import admin.pagingAction2;


public class adorderlistAction extends ActionSupport {
       
	
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<adorderlistVO> list = new ArrayList<adorderlistVO>();
	
	private String searchorder;
	private int searchNum;
	

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction2 page;
	private int num = 0;
	
	public adorderlistAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	public String execute() throws Exception{
		
		
		if(getSearchorder() != null)
		{
			return search();
		}
		
				
		list = sqlMapper.queryForList("adorderlist.selectAll");
		
			
		totalCount = list.size();
		page = new pagingAction2(currentPage, totalCount, blockCount, blockPage, "");
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);	
		
		return SUCCESS;
		
	}
	public String search() throws Exception{
		
         list = sqlMapper.queryForList("adorderlist.selectsearch", "%"+getSearchorder()+"%");
		
         setSearchorder(getSearchorder());
		
		totalCount = list.size();
		page = new pagingAction2(currentPage, totalCount, blockCount, blockPage, getSearchorder());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		
			
		return SUCCESS;
	}
	
	
	
	public String getSearchorder() {
		return searchorder;
	}
	public void setSearchorder(String searchorder) {
		this.searchorder = searchorder;
	}
	public int getSearchNum() {
		return searchNum;
	}
	public void setSearchNum(int searchNum) {
		this.searchNum = searchNum;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	
	public pagingAction2 getPage() {
		return page;
	}
	
	public void setPage(pagingAction2 page) {
		this.page = page;
	}
	
	public List<adorderlistVO> getList() {
		return list;
	}
	
	public void setList(List<adorderlistVO> list) {
		this.list = list;
	}
	
}
