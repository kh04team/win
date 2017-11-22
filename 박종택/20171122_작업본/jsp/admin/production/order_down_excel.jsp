<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="admin.adorderlistVO"%>
<%@ page import="java.util.*"%>	
<%@ page import="java.io.File" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="jxl.Workbook" %>
<%@ page import="jxl.write.*" %>
<%@ page import="jxl.*, jxl.write.*, jxl.format.*" %>
<%@ page import="jxl.NumberCell" %>
<%@ page import="jxl.format.CellFormat" %>
<%@ page import="jxl.write.biff.NumberRecord" %>
<%@ page import="java.text.*" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
	String today = formatter.format(new java.util.Date());
	
	String filename = "주문내역_"+today+".xls";
	//filename = new String(filename.getBytes("iso-8859-1"), "euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
    // 엑셀파일 생성
    //WritableWorkbook workbook = Workbook.createWorkbook(new File("text.xls"));

	String filepath = "D:\\source\\java\\project\\icase\\WebContent\\admin\\production\\excel\\temp\\";

	File file = new File(filepath+filename);
	if(!file.exists()) { file.createNewFile(); }
	WritableWorkbook newExcel = Workbook.createWorkbook(file); 

 
    // 시트 생성
    WritableSheet sheet1 = newExcel.createSheet("sheet 1",  0);
    WritableSheet sheet2 = newExcel.createSheet("sheet 2",  1);
   
    // Label 객체 생성 (행, 열, 내용)
    Label label1 = new Label(0, 0, "주문번호");
    Label label2 = new Label(1, 0, "주문자이름");    
    Label label3 = new Label(2, 0, "주문상태");
    Label label4 = new Label(3, 0, "결제정보");
    Label label5 = new Label(4, 0, "결제금액");

    // 셀에 라벨 추가        
    sheet1.addCell(label1);
    sheet1.addCell(label2);
    sheet1.addCell(label3);
    sheet1.addCell(label4);
    sheet1.addCell(label5);    
    
%>
<%
List list = (List)request.getAttribute("list");

int z = 1;
for (int y=0,n=list.size();y<n;y++){
	adorderlistVO element = (adorderlistVO) list.get(y);
	
	DecimalFormat df = new DecimalFormat("###,###");
	String dfMoney = df.format(element.getOrder_price());
	
	//String to = Integer.toString(dfMoney);
	
	Label label1_1 = new Label(0, z, element.getOrder_no());
	Label label2_1 = new Label(1, z, element.getMem_name());    
	Label label3_1 = new Label(2, z, element.getOrder_status());
	Label label4_1 = new Label(3, z, element.getSettle_type());
	Label label5_1 = new Label(4, z, dfMoney);

    // 셀에 라벨 추가        
    sheet1.addCell(label1_1);
    sheet1.addCell(label2_1);
    sheet1.addCell(label3_1);
    sheet1.addCell(label4_1);
    sheet1.addCell(label5_1);	

    z++;
    
}
%>
<%

    // 쓰기
    newExcel.write();
   
    // 닫기
    newExcel.close();
%>
<% 
//여기부터 화일 다운로드 창이 자동으로 뜨게 하기 위한 코딩(임시화일을 스트림으로 저장)
File file2 = new File (filepath+filename); //해당 경로의 파일 객체를 만든다. 
byte[] bytestream = new byte[(int)file2.length()]; //파일 스트림을 저장하기 위한 바이트 배열 생성. 
FileInputStream filestream = new FileInputStream(file2); //파일 객체를 스트림으로 불러온다. 
int i = 0, j = 0; //파일 스트림을 바이트 배열에 넣는다.
while((i = filestream.read()) != -1) { 
    bytestream[j] = (byte)i;
    j++;
}
filestream.close(); //FileInputStream을 닫아줘야 file이 삭제된다.
try{
    boolean success = file2.delete();//화일을 생성과 동시에 byte[]배열에 입력후 화일은 삭제
    if(!success) System.out.println("<script>alert('not success')</script>"); 
} catch(IllegalArgumentException e){ 
    System.err.println(e.getMessage()); 
}

//response.setContentType("application/x-msdownload;charset=EUC-KR"); //응답 헤더의 Content-Type을 세팅한다. 
response.setHeader("Content-Disposition","attachment; filename="+new String(filename.getBytes("euc-kr"),"8859_1")); //Content-Disposition 헤더에 파일 이름 세팅.
OutputStream outStream = response.getOutputStream(); // 응답 스트림 객체를 생성한다. 
outStream.write(bytestream); // 응답 스트림에 파일 바이트 배열을 쓴다. 
outStream.close();
%>

</body>
</html>