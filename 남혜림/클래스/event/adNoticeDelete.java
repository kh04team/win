package event;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import cms.noticeVO;

import java.io.Reader;
import java.io.IOException;

public class adNoticeDelete extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private noticeVO paramClass;
	private noticeVO resultClass;
	
	private int currentPage;
	
	private int no;
	
	public adNoticeDelete() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		
		paramClass = new noticeVO();
		resultClass = new noticeVO();
		
		System.out.println(getNo());
		
		// 해당 번호의 글 가져오기.
		paramClass.setNo(getNo());
		// 삭제할 항목은 no.
		
		sqlMapper.update("notice.deleteNotice",paramClass);
		// 삭제 쿼리 실행.
		
		return SUCCESS;
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
	
	

}
