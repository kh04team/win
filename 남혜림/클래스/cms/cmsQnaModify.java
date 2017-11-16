package cms;

import com.opensymphony.xwork2.ActionSupport;

import cms.qnaVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;
import java.util.*;


public class cmsQnaModify extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private qnaVO paramClass;
	private qnaVO resultClass;
	
	private int currentPage;
	
	Calendar today = Calendar.getInstance();
	
	private int no;
	private String id;
	private String subject;
	private String content;
	private String status;
	
	public cmsQnaModify() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		
		paramClass = new qnaVO();
		resultClass = new qnaVO();
		
		System.out.println(getNo());
		System.out.println(getId());
		System.out.println(getSubject());
		System.out.println(getContent());
		
		paramClass.setNo(getNo());
		paramClass.setId_admin(getId());
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent()); // db에 저장하는게 param. result : query의 결과값을 저장.
	
		
		sqlMapper.update("qna.updateQna",paramClass);
		
		resultClass = (qnaVO) sqlMapper.queryForObject("qna.selectOne",getNo()); // no로 비교해서 no에 일치하는 db의 한줄을 가져온다.
		
		
			
		return SUCCESS;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		cmsQnaModify.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		cmsQnaModify.sqlMapper = sqlMapper;
	}

	

	public qnaVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(qnaVO paramClass) {
		this.paramClass = paramClass;
	}

	public qnaVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(qnaVO resultClass) {
		this.resultClass = resultClass;
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

}
