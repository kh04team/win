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

public class basketList extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private String id;

	private List<basket_bin> list = new ArrayList<basket_bin>();
	private basket_bin paramClass = new basket_bin();
	private basket_bin resultClass = new basket_bin();
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;	
	private int basket_cnt;
	
	public basketList() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}	
	
	public String execute() throws Exception {
		
		list = sqlMapper.queryForList("basket.selectBasketAll", (String)ActionContext.getContext().getSession().get("id"));
		
		int totalCount = list.size();
		
		setBasket_cnt(totalCount);
		
		int lastCount = totalCount;
		
		list = list.subList(0, lastCount);
		
		paramClass = new basket_bin();
		paramClass.setId((String)ActionContext.getContext().getSession().get("id"));
		
		resultClass = (basket_bin) sqlMapper.queryForObject("basket.selectBasketPriceSum", paramClass);		
		
		
		
		return SUCCESS;
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
