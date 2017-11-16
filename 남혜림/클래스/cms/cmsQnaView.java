package cms;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;


public class cmsQnaView extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//private List<qnaVO> commentlist = new ArrayList<qnaVO>(); 
	private qnaVO resultClass = new qnaVO();
	private qnaVO commentlist = new qnaVO();
	
	private int currentPage;
	
	private int no;
	
	public cmsQnaView() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		
		resultClass = (qnaVO) sqlMapper.queryForObject("qna.selectOne",getNo());
		commentlist = (qnaVO) sqlMapper.queryForObject("qna.listCom",getNo());
		
		return SUCCESS;
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

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public qnaVO getCommentlist() {
		return commentlist;
	}

	public void setCommentlist(qnaVO commentlist) {
		this.commentlist = commentlist;
	}



}
