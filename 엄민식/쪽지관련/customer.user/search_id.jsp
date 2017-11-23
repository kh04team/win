<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
    window.jQuery || document.write('<script src="/icase/customer/js/jquery-1.11.0.min.js"><\/script>')

	function searchIdAction()    
    {
       var checkedSet = "";
   	   $('#check_id:checked').each(function() { 
   		 checkedSet = checkedSet + $(this).val() + ",";
   	   });
    	
       $("#recive_id", opener.document).val(checkedSet);
       
       self.close();
    }
    
    function checkedAllNot()
    {
    	
    	
    	
   	   $("input:checkbox[id='check_id']").each(function() { 
   		   
   		   
	   	   	if($(this).prop("checked") == true)
	   	   	{
	   	   		$(this).prop("checked", false);
	   	   	}
	   	   	else
	   	   	{
	   	   		$(this).prop("checked", true);   	   		
	   	   	}
   		   
   	   });    	
    }
    
    function searchAction()
    {
    	var form = document.searchForm;
    	if(form.search_id.value == "")
    	{
    		alert("���̵� �Է����ּ���.");
    		$("#search_id").focus();
    		return;
    	}
    	
    	form.action = "/icase/memoSearch.action";
    	form.submit();
    }
    
    function Enter_Check(){
    	var f = document.searchForm;
    	
    	  if(event.keyCode == 13){
    	f.action="/icase/memoSearch.action";
    	f.submit();
    	}
    }
</script>
<title>�޴»�� �˻�</title>
</head>
<body>
<form id="searchForm" name="searchForm" >
	<input type="text" id="search_id" name="search_id"  onkeydown="JavaScript:Enter_Check();" /> 
	<input type="button" onclick="javascript:searchAction();" value="���̵�˻�" /> 
</form>
<table>
	<tr>
		<td>
			<input type="checkbox" id="check-all" name="check-all" onclick="javascript:checkedAllNot();"/>
		</td>
		<td>
			���̵�
		</td>
	</tr>
<s:if test="list.size() <= 0">
	<tr>
		<td colspan="2" align="center">���� ����� �����ϴ�.</td>
	</tr>
 </s:if>
 <s:else>
 	<s:iterator value="list" status="stat">
		<tr>
			<td>
				<input type="checkbox" id="check_id" name="check_id" value="${id}" />
			</td>
			<td>
				${id}
			</td>
		</tr>		
	 </s:iterator>
 </s:else>
 	<tr>
		<td colspan="2" align="center">
			<input type="button" value="�����»������" onclick="javascript:searchIdAction();"/>
		</td>
	</tr>
 </table>	
</body>
</html>