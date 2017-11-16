package cms;

import com.opensymphony.xwork2.ActionSupport;

import cms.qnaVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

public class cmsQnaWrite extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private qnaVO paramClass; // 파라미터를 저장할 객체
	
	private int currentPage;
	
	Calendar today = Calendar.getInstance();
	
	private int no;
	private String id;
	private String subject;
	private String content;
	private String status;
	private String com;
	private String id_admin;
	

	
	public cmsQnaWrite() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	// qna 글 처리
	public String execute() throws Exception{
		
		paramClass = new qnaVO();
		
		System.out.println(getId());
		System.out.println(getSubject());
		System.out.println(getContent());
		System.out.println(today.getTime());
		
		paramClass.setId(getId());
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent());
		paramClass.setReg_date(today.getTime());
		paramClass.setCom(getCom());
		paramClass.setCom_reg_date(today.getTime());
		
		sqlMapper.insert("qna.insertQna",paramClass);
		
		return SUCCESS;
	}


	public qnaVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(qnaVO paramClass) {
		this.paramClass = paramClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCom() {
		return com;
	}

	public void setCom(String com) {
		this.com = com;
	}

	public String getId_admin() {
		return id_admin;
	}

	public void setId_admin(String id_admin) {
		this.id_admin = id_admin;
	}
	
	
	
	

}
