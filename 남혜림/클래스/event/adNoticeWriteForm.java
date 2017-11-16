package event;

import com.opensymphony.xwork2.ActionSupport;

import cms.noticeVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;


public class adNoticeWriteForm extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	
	public adNoticeWriteForm() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		
		reader.close();
	}
	
	// °øÁö»çÇ× Æû
	public String execute() throws Exception{
	
		return SUCCESS;
		
		
	}

	
	

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		adNoticeWriteForm.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		adNoticeWriteForm.sqlMapper = sqlMapper;
	}



	
	
	

}
