  <%@ page contentType="text/html;charset=euc-kr" %>
  <!--
    타일즈 라이브러리를 사용하기 위한 태그 라이브러리 선언
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
