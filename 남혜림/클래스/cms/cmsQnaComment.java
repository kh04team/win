package cms;

import com.opensymphony.xwork2.ActionSupport;

import cms.qnaVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

public class cmsQnaComment extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private qnaVO paramClass; // 파라미터를 저장할 객체
	private qnaVO resultClass;
	
	private int currentPage;
	
	Calendar today = Calendar.getInstance();
	
	private int no;
	private String com;
	private String id_admin;
	private String status;
	
	
	public cmsQnaComment() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	// qna 코멘트 처리
	public String execute() throws Exception{
		
		paramClass = new qnaVO();
		
		System.out.println(getNo());
		System.out.println(getId_admin());
		System.out.println(getCom());
		System.out.println(today.getTime());
		
		paramClass.setNo(getNo());
		paramClass.setId_admin(getId_admin());
		paramClass.setCom(getCom());
		paramClass.setCom_reg_date(today.getTime());
		
		sqlMapper.update("qna.updateCom",paramClass);
		
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



	
	
	
	

}
