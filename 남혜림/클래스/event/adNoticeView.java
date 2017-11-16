package event;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import cms.noticeVO;
import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.net.*;

public class adNoticeView  extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private noticeVO query = new noticeVO(); // Äõ¸® °á°ú °ª ÀúÀåÇÒ °´Ã¼
	
	private int currentPage;
	
	private int no;
	
	private noticeVO resultClass;
	private noticeVO paramClass;	
	
	public adNoticeView() throws IOException {
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	
	public String execute() throws Exception{
		
		paramClass = new noticeVO();
		
		paramClass.setNo(getNo());		
		
		query = (noticeVO) sqlMapper.queryForObject("notice.selectOne",paramClass);
		
		return SUCCESS;
	}

	public noticeVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(noticeVO resultClass) {
		this.resultClass = resultClass;
	}

	public noticeVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(noticeVO paramClass) {
		this.paramClass = paramClass;
	}

	public noticeVO getQuery() {
		return query;
	}

	public void setQuery(noticeVO query) {
		this.query = query;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

}
