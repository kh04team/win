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
    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����

                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample4_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                //document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
                if(data.autoRoadAddress) {
                    //����Ǵ� ���θ� �ּҿ� ������ �ּҸ� �߰��Ѵ�.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';

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
                        <h1>�ֹ��ϱ�</h1>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>�ֹ��ϱ�</li>
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
                                                <th colspan="2">��ǰ</th>
                                                <th>����</th>
                                                <th>����</th>
                                                <th>������</th>
                                                <th colspan="2">�հ�ݾ�</th>
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
                                                <td><fmt:formatNumber type="currency" currencySymbol="��" value="${order_price/order_qty}"  /></td>
                                                <td>��0</td>
                                                <td id="order_price_${no}"><fmt:formatNumber type="currency" currencySymbol="��" value="${order_price}"  /></td>
                                                <td><a href="javascript:delete_order(${no});"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>   
                                        </s:iterator>                                         
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">�հ�</th>
                                                <th colspan="2"><fmt:formatNumber type="currency" currencySymbol="��" value="${resultClass2.order_price_sum}"  /></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                       <div class="form-group">
                        <div style="text-align:left;" class="col-md-5 col-sm-9 col-xs-12" >
                          	�ֹ����̸�<input type="text" id="mem_name" name="mem_name" class="form-control" >
                        </div>                       
						<br/><br/><br/>
                        <div class="col-md-9 col-sm-9 col-xs-12">
	                       <input readonly type="text" id="sample4_postcode" name="zip_code" placeholder="�����ȣ" >
							<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��" ><br>
							<input type="text" id="sample4_roadAddress" name="address1" placeholder="�ּ�" readonly style="width:400px;margin-top:5px;"><br/>
							<input type="text" id="sample4_jibunAddress" name="address2" placeholder="���ּ�" style="width:250px;margin-top:5px;"><br/>
							<input type="text" id="phone" name="phone" placeholder="����ó" style="width:250px;margin-top:5px;">
							<select id="settle_type" name="settle_type">
								<option value="">==��������==</option>
								<option value="������">������</option>
								<option value="�ſ�ī��">�ſ�ī��</option>	
								<option value="������ü">������ü</option>							
							</select><br/>
							<textarea id="order_memo" name="order_memo" placeholder="��۸޸�" style="margin-top:6px;" cols="50" rows="5"></textarea>							
							<span id="guide" style="color:#999"></span>
						</div>
						</div>

                                </div>
                                <!-- /.table-responsive -->

							

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="/icase/goodslist.action" class="btn btn-default"><i class="fa fa-chevron-left"></i> ��Ӽ���</a>
                                    </div>
                                    <div class="pull-right">
                                        <button type="button" onclick="javascript:location.reload();" class="btn btn-default"><i class="fa fa-refresh"></i> �ֹ�â ���ΰ�ħ</button>
                                        <button id="settlActionButton" type="button" class="btn btn-template-main">�����ϱ� <i class="fa fa-chevron-right"></i>
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
                                <h3>�ֹ����</h3>
                            </div>
                            <p class="text-muted">��ۺ� �� �߰� ����� �Է� �� ���� ���� ���˴ϴ�.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>�ֹ��ݾ�</td>
                                            <th><fmt:formatNumber type="currency" currencySymbol="��" value="${resultClass2.order_price_sum}"  /></th>
                                        </tr>
                                        <tr>
                                            <td>��ۺ�</td>
                                            <th>��0</th>
                                        </tr>
                                        <tr>
                                            <td>����</td>
                                            <th>��0</th>
                                        </tr>
                                        <tr class="total">
                                            <td>�հ�ݾ�</td>
                                            <th><fmt:formatNumber type="currency" currencySymbol="��" value="${resultClass2.order_price_sum}"  /></th>
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

