package event;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import cms.qnaVO;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import cms.pagingAction;

public class adQnaList extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<qnaVO> list = new ArrayList<qnaVO>();
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;
	private int num = 0;
	
	public adQnaList() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	// qna �Խ��� �׼�
	public String execute() throws Exception {
		// ��� ���� ������ list�� �ִ´�.
		list = sqlMapper.queryForList("qna.adselectAll");

		totalCount = list.size(); // ��ü �� ������ ���Ѵ�.
		// pagingAction ��ü ����.
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, num, ""); 
		pagingHtml = page.getPagingHtml().toString(); // ������ HTML ����.

		// ���� ���������� ������ ������ ���� ��ȣ ����.
		int lastCount = totalCount;

		// ���� �������� ������ ���� ��ȣ�� ��ü�� ������ �� ��ȣ���� ������ 
		//lastCount�� +1 ��ȣ�� ����.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
		list = list.subList(page.getStartCount(), lastCount);
		// System.out.println(list.size());
		return SUCCESS;
	}

	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public static Reader getReader() {
		return reader;
	}

	public List<qnaVO> getList() {
		return list;
	}

	public void setList(List<qnaVO> list) {
		this.list = list;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public pagingAction getPage() {
		return page;
	}

	public void setPage(pagingAction page) {
		this.page = page;
	}
	
	
	
}
