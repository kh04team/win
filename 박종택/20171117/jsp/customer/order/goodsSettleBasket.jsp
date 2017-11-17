<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>     
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
                        <h1>주문하기</h1>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>주문하기</li>
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

                            <form id="order_settle_form" name="order_settle_form" method="post" action="shop-checkout1.html">

                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">상품</th>
                                                <th>수량</th>
                                                <th>가격</th>
                                                <th>할인율</th>
                                                <th colspan="2">합계금액</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <s:iterator value="list" status="stat">

                                        	<s:if test="#stat.index == 0">
                                        		<input type="hidden" id="order_no" name="order_no" value="${order_no}" />
                                        	</s:if>
                                            <tr>
                                                <td>
                                                    <a href="#">
                                                        <img src="/icase/customer/img/product/${main_img_save}" alt="${goods_name}">
                                                    </a>
                                                </td>
                                                <td><a href="#">${goods_name}</a>
                                                </td>
                                                <td>
                                                	${order_qty}
                                                    <!-- <input type="number" value="2" class="form-control"> -->
                                                </td>
                                                <td><fmt:formatNumber type="currency" currencySymbol="￦" value="${order_price/order_qty}"  /></td>
                                                <td>￦0</td>
                                                <td id="order_price_${no}"><fmt:formatNumber type="currency" currencySymbol="￦" value="${order_price}"  /></td>
                                                <td><a href="javascript:delete_order(${no});"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>   
                                        </s:iterator>                                         
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">합계</th>
                                                <th colspan="2"><fmt:formatNumber type="currency" currencySymbol="￦" value="${resultClass2.order_price_sum}"  /></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                       <div class="form-group">
                        <div style="text-align:left;" class="col-md-5 col-sm-9 col-xs-12" >
                          	주문자이름<input type="text" id="mem_name" name="mem_name" class="form-control" >
                        </div>                       
						<br/><br/><br/>
                        <div class="col-md-9 col-sm-9 col-xs-12">
	                       <input readonly type="text" id="sample4_postcode" name="zip_code" placeholder="우편번호" >
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ><br>
							<input type="text" id="sample4_roadAddress" name="address1" placeholder="주소" readonly style="width:400px;margin-top:5px;"><br/>
							<input type="text" id="sample4_jibunAddress" name="address2" placeholder="상세주소" style="width:250px;margin-top:5px;"><br/>
							<input type="text" id="phone" name="phone" placeholder="연락처" style="width:250px;margin-top:5px;">
							<select id="settle_type" name="settle_type">
								<option value="">==결제수단==</option>
								<option value="무통장">무통장</option>
								<option value="신용카드">신용카드</option>	
								<option value="계좌이체">계좌이체</option>							
							</select><br/>
							<textarea id="order_memo" name="order_memo" placeholder="배송메모" style="margin-top:6px;" cols="50" rows="5"></textarea>							
							<span id="guide" style="color:#999"></span>
						</div>
						</div>

                                </div>
                                <!-- /.table-responsive -->

							

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="/icase/goodslist.action" class="btn btn-default"><i class="fa fa-chevron-left"></i> 계속쇼핑</a>
                                    </div>
                                    <div class="pull-right">
                                        <button type="button" onclick="javascript:location.reload();" class="btn btn-default"><i class="fa fa-refresh"></i> 주문창 새로고침</button>
                                        <button id="settlActionButton" type="button" class="btn btn-template-main">결제하기 <i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>

                            </form>

                        </div>
                        <!-- /.box -->


                    </div>
                    <!-- /.col-md-9 -->

                    <div class="col-md-3">
                        <div class="box" id="order-summary">
                            <div class="box-header">
                                <h3>주문요약</h3>
                            </div>
                            <p class="text-muted">배송비 및 추가 비용은 입력 한 값에 따라 계산됩니다.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>주문금액</td>
                                            <th><fmt:formatNumber type="currency" currencySymbol="￦" value="${resultClass2.order_price_sum}"  /></th>
                                        </tr>
                                        <tr>
                                            <td>배송비</td>
                                            <th>￦0</th>
                                        </tr>
                                        <tr>
                                            <td>세금</td>
                                            <th>￦0</th>
                                        </tr>
                                        <tr class="total">
                                            <td>합계금액</td>
                                            <th><fmt:formatNumber type="currency" currencySymbol="￦" value="${resultClass2.order_price_sum}"  /></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>


                       

                    </div>
                    <!-- /.col-md-3 -->

                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

