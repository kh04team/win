  <%@ page contentType="text/html;charset=euc-kr" %>
  <!--
    Ÿ���� ���̺귯���� ����ϱ� ���� �±� ���̺귯�� ����
  -->
  <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
  <html>
   <body>
    <table width="800" align="center" border="1">
     <tr height="50">
      <td><tiles:insertAttribute name="/shop/universal/header.jsp"/></td>
     </tr>
     <tr height="500">
      <td><tiles:insertAttribute name="/shop/universal/body.jsp"/></td>
     </tr>
     <tr height="50">
      <td><tiles:insertAttribute name="/shop/universal/footer.jsp"/></td>
     </tr>
    </table>
   </body>
  </html>
