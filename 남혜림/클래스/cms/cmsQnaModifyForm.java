package cms;

import com.opensymphony.xwork2.ActionSupport;

import cms.noticeVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;



public class cmsQnaModifyForm extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private int no;
	private qnaVO resultClass;


	public cmsQnaModifyForm() throws IOException{
		
		reader = Resources.getResourceAsReader ("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		
		resultClass = (qnaVO) sqlMapper.queryForObject("qna.selectOne",getNo());
		// 글 번호에 해당하는 내용을 불러오기.
		return SUCCESS;
	}

	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public qnaVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(qnaVO resultClass) {
		this.resultClass = resultClass;
	}



	
	
}
