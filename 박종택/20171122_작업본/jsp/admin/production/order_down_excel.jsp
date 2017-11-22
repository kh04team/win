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
	
	String filename = "�ֹ�����_"+today+".xls";
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
    // �������� ����
    //WritableWorkbook workbook = Workbook.createWorkbook(new File("text.xls"));

	String filepath = "D:\\source\\java\\project\\icase\\WebContent\\admin\\production\\excel\\temp\\";

	File file = new File(filepath+filename);
	if(!file.exists()) { file.createNewFile(); }
	WritableWorkbook newExcel = Workbook.createWorkbook(file); 

 
    // ��Ʈ ����
    WritableSheet sheet1 = newExcel.createSheet("sheet 1",  0);
    WritableSheet sheet2 = newExcel.createSheet("sheet 2",  1);
   
    // Label ��ü ���� (��, ��, ����)
    Label label1 = new Label(0, 0, "�ֹ���ȣ");
    Label label2 = new Label(1, 0, "�ֹ����̸�");    
    Label label3 = new Label(2, 0, "�ֹ�����");
    Label label4 = new Label(3, 0, "��������");
    Label label5 = new Label(4, 0, "�����ݾ�");

    // ���� �� �߰�        
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

    // ���� �� �߰�        
    sheet1.addCell(label1_1);
    sheet1.addCell(label2_1);
    sheet1.addCell(label3_1);
    sheet1.addCell(label4_1);
    sheet1.addCell(label5_1);	

    z++;
    
}
%>
<%

    // ����
    newExcel.write();
   
    // �ݱ�
    newExcel.close();
%>
<% 
//������� ȭ�� �ٿ�ε� â�� �ڵ����� �߰� �ϱ� ���� �ڵ�(�ӽ�ȭ���� ��Ʈ������ ����)
File file2 = new File (filepath+filename); //�ش� ����� ���� ��ü�� �����. 
byte[] bytestream = new byte[(int)file2.length()]; //���� ��Ʈ���� �����ϱ� ���� ����Ʈ �迭 ����. 
FileInputStream filestream = new FileInputStream(file2); //���� ��ü�� ��Ʈ������ �ҷ��´�. 
int i = 0, j = 0; //���� ��Ʈ���� ����Ʈ �迭�� �ִ´�.
while((i = filestream.read()) != -1) { 
    bytestream[j] = (byte)i;
    j++;
}
filestream.close(); //FileInputStream�� �ݾ���� file�� �����ȴ�.
try{
    boolean success = file2.delete();//ȭ���� ������ ���ÿ� byte[]�迭�� �Է��� ȭ���� ����
    if(!success) System.out.println("<script>alert('not success')</script>"); 
} catch(IllegalArgumentException e){ 
    System.err.println(e.getMessage()); 
}

//response.setContentType("application/x-msdownload;charset=EUC-KR"); //���� ����� Content-Type�� �����Ѵ�. 
response.setHeader("Content-Disposition","attachment; filename="+new String(filename.getBytes("euc-kr"),"8859_1")); //Content-Disposition ����� ���� �̸� ����.
OutputStream outStream = response.getOutputStream(); // ���� ��Ʈ�� ��ü�� �����Ѵ�. 
outStream.write(bytestream); // ���� ��Ʈ���� ���� ����Ʈ �迭�� ����. 
outStream.close();
%>

</body>
</html>