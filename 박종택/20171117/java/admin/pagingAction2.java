package admin;

public class pagingAction2 {
	
	
	private int currentPage;
	private int totalCount;
	private int totalPage;
	private int blockCount;
	private int blockPage;
	private int startCount;
	private int endCount;
	private int startPage;
	private int endPage;
	
	private StringBuffer pagingHtml;
	
	public pagingAction2(int currentPage, int totalCount, int blockCount, int blockPage, String isSearch)
	{
		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if(totalPage == 0)
		{
			totalPage = 1;
		}
		
		if(currentPage > totalPage)
		{
			currentPage = totalPage;
		}
		
		startCount = (currentPage - 1) * blockCount;
		endCount = startCount + blockCount-1;
		
		startPage = (int)((currentPage - 1)/blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;
		
		if(endPage > totalPage)
		{
			endPage = totalPage;
		}
			
		String disabled_text = "";
	
		pagingHtml = new StringBuffer();
		
		pagingHtml.append("<div class='dataTables_paginate paging_simple_numbers' id='datatable-buttons_paginate'>");
		pagingHtml.append("<ul class='pagination'>");		
		
		//if(currentPage > blockPage)
		//{
			if(currentPage == 1) disabled_text = "disabled";
			else disabled_text = "";
			
			if(isSearch != "")
			{
				if(disabled_text == "disabled") pagingHtml.append("<li class='paginate_button previous "+disabled_text+"' id='datatable-buttons_previous'><a aria-controls='datatable-buttons' data-dt-idx='0' tabindex='0' href='#'>");
				else pagingHtml.append("<li class='paginate_button previous "+disabled_text+"' id='datatable-buttons_previous'><a aria-controls='datatable-buttons' data-dt-idx='0' tabindex='0' href='adOrderList.action?currentPage=" + (currentPage - 1) + "&searchorder="+isSearch+">");
			}
			else
			{
				if(disabled_text == "disabled") pagingHtml.append("<li class='paginate_button previous "+disabled_text+"' id='datatable-buttons_previous'><a aria-controls='datatable-buttons' data-dt-idx='0' tabindex='0' href='#'>");
				else pagingHtml.append("<li class='paginate_button previous "+disabled_text+"' id='datatable-buttons_previous'><a aria-controls='datatable-buttons' data-dt-idx='0' tabindex='0' href='adOrderList.action?currentPage=" + (currentPage - 1) + "'>");
			}
				pagingHtml.append("이전");
				pagingHtml.append("</a></li>");
			
		//}
		
		//pagingHtml.append("&nbsp;|&nbsp;");
		
		for(int i = startPage;i<=endPage;i++)
		{
			if(i > totalPage)
			{
				break;
			}
			if(i == currentPage)
			{
				pagingHtml.append("<li class='paginate_button active'>");
				pagingHtml.append("<a href='#' aria-controls='datatable-buttons' data-dt-idx='"+i+"' tabindex='0'>"+i+"</a>");
				pagingHtml.append("</li>");
			}
			else
			{
				pagingHtml.append("<li class='paginate_button '><a href='adOrderList.action?currentPage=");
				pagingHtml.append(i);
				if(isSearch != "")
					pagingHtml.append("&searchorder="+isSearch);
				pagingHtml.append("' aria-controls='datatable-buttons' data-dt-idx='"+i+"' tabindex='0'>");
				pagingHtml.append(i);
				pagingHtml.append("</a></li>");
			}
			
			//pagingHtml.append("&nbsp;");
		}
		
		//pagingHtml.append("&nbsp;&nbsp;|&nbsp;&nbsp;");
		
		//if(totalPage - startPage >= blockPage)
		//{
			
			if(currentPage == endPage) disabled_text = "disabled";
			else disabled_text = "";			
			
			if(disabled_text == "disabled") pagingHtml.append("<li class='paginate_button next "+disabled_text+"' id='datatable-buttons_next'><a aria-controls='datatable-buttons' data-dt-idx='7' tabindex='0' href='#");
			else pagingHtml.append("<li class='paginate_button next "+disabled_text+"' id='datatable-buttons_next'><a aria-controls='datatable-buttons' data-dt-idx='7' tabindex='0' href='adOrderList.action?currentPage=");
			pagingHtml.append((currentPage+1));
			if(isSearch != "")
				pagingHtml.append("&searchorder="+isSearch);
			pagingHtml.append("'>");
			pagingHtml.append("다음");
			pagingHtml.append("</a></li></ul></div>");
		//}
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

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
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

	public int getStartCount() {
		return startCount;
	}

	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}

	public int getEndCount() {
		return endCount;
	}

	public void setEndCount(int endCount) {
		this.endCount = endCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public StringBuffer getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(StringBuffer pagingHtml) {
		this.pagingHtml = pagingHtml;
	}
	
	

}
