<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                //document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>

        

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Shopping cart</h1>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>Shopping cart</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">
                   


                    <div class="col-md-9 clearfix" id="basket">

                        <div class="box">

                            <form name="paypay" id="paypay" method="post" action="shop-checkout1.html">

                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">상품</th>
                                                <th>상품명</th>
                                                <th>상품색상</th>
                                                <th>주문수량</th>
                                                                                               
                                             
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                          
                                                <td>
                                                    <img src='<s:property value="resultClass.main_img_save"/>' >
                                                </td>
                                                <td><s:property value="resultClass.goods_name"/></td>
                                                <td><s:property value="goods_color"/></td>
                                                <td>
                                                    <input type="number" value='<s:property value="goods_qty"/>' class="form-control" readonly="readonly">
                                                </td>
                                                
                                              
                                          
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">결제금액</th>
                                                <th colspan="2"><s:property value="resultClass.total_price"/></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                       <div class="form-group">
                        <div style="text-align:left;" class="col-md-5 col-sm-9 col-xs-12" >
                          	주문자이름<input type="text" class="form-control" >
                        </div>                       
						<br/><br/><br/>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                       <input readonly type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호" >
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ><br>
						<input type="text" id="sample4_roadAddress" name="sample4_roadAddress" placeholder="주소" readonly style="width:400px;margin-top:5px;"><br/>
						<input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" placeholder="상세주소" style="width:250px;margin-top:5px;">
						<span id="guide" style="color:#999"></span>
						</div>
						</div>

                                </div>
                                <!-- /.table-responsive -->

							

                                <div class="box-footer">
                                    
                                    <div class="pull-right">
                                        <a href="/icase/goods/goodsList.action" class="btn btn-default"> 주문취소</a>
                                        <button type="submit" id="pay" name="pay" class="btn btn-template-main">결제하기 <i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>

                            </form>

                        </div>
                        <!-- /.box -->


                    </div>
                    <!-- /.col-md-9 -->

                 
                        </div>


                       

                    </div>
                    <!-- /.col-md-3 -->

                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

