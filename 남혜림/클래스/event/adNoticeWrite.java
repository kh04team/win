package event;

import com.opensymphony.xwork2.ActionSupport;

import cms.noticeVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;



public class adNoticeWrite extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private noticeVO paramClass; // 파라미터를 저장할 객체
	
	private int currentPage;
	
	Calendar today = Calendar.getInstance();
	
	private int no;
	private String id_admin;
	private String subject;
	private String content;
	private String status;
	
	public adNoticeWrite() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		
		reader.close();
	}
	
	// 공지사항 등록 처리
	public String execute() throws Exception{
	
		paramClass = new noticeVO(); 
		
		System.out.println(getId_admin());
		System.out.println(getSubject());
		System.out.println(getContent());
		System.out.println(today.getTime());
		
		paramClass.setId_admin(getId_admin());
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent());
		paramClass.setReg_date(today.getTime());
		
		
		sqlMapper.insert("notice.insertNotice",paramClass);
		
		return SUCCESS;
		
		
	}

	
	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public noticeVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(noticeVO paramClass) {
		this.paramClass = paramClass;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getId_admin() {
		return id_admin;
	}

	public void setId_admin(String id_admin) {
		this.id_admin = id_admin;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

}
