package event;

import com.opensymphony.xwork2.ActionSupport;

import cms.noticeVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;
import java.util.*;


public class adNoticeModify extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private noticeVO paramClass;
	private noticeVO resultClass;
	
	private int currentPage;
	
	Calendar today = Calendar.getInstance();
	
	private int no;
	private String id_admin;
	private String subject;
	private String content;
	private String status;
	
	public adNoticeModify() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		
		paramClass = new noticeVO();
		resultClass = new noticeVO();
		
		System.out.println(getNo());
		System.out.println(getId_admin());
		System.out.println(getSubject());
		System.out.println(getContent());
		
		paramClass.setNo(getNo());
		paramClass.setId_admin(getId_admin());
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent()); // db에 저장하는게 param. result : query의 결과값을 저장.
	
		
		sqlMapper.update("notice.updateNotice",paramClass);
		
		resultClass = (noticeVO) sqlMapper.queryForObject("notice.selectOne",paramClass); // no로 비교해서 no에 일치하는 db의 한줄을 가져온다.
		
		
			
		return SUCCESS;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public noticeVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(noticeVO paramClass) {
		this.paramClass = paramClass;
	}

	public noticeVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(noticeVO resultClass) {
		this.resultClass = resultClass;
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

	public String getId_admin() {
		return id_admin;
	}

	public void setId_admin(String id_admin) {
		this.id_admin = id_admin;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
}

	
