<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
                                                <th colspan="2">��ǰ</th>
                                                <th>��ǰ��</th>
                                                <th>��ǰ����</th>
                                                <th>�ֹ�����</th>
                                                                                               
                                             
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
                                                <th colspan="5">�����ݾ�</th>
                                                <th colspan="2"><s:property value="resultClass.total_price"/></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                       <div class="form-group">
                        <div style="text-align:left;" class="col-md-5 col-sm-9 col-xs-12" >
                          	�ֹ����̸�<input type="text" class="form-control" >
                        </div>                       
						<br/><br/><br/>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                       <input readonly type="text" id="sample4_postcode" name="sample4_postcode" placeholder="�����ȣ" >
						<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��" ><br>
						<input type="text" id="sample4_roadAddress" name="sample4_roadAddress" placeholder="�ּ�" readonly style="width:400px;margin-top:5px;"><br/>
						<input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" placeholder="���ּ�" style="width:250px;margin-top:5px;">
						<span id="guide" style="color:#999"></span>
						</div>
						</div>

                                </div>
                                <!-- /.table-responsive -->

							

                                <div class="box-footer">
                                    
                                    <div class="pull-right">
                                        <a href="/icase/goods/goodsList.action" class="btn btn-default"> �ֹ����</a>
                                        <button type="submit" id="pay" name="pay" class="btn btn-template-main">�����ϱ� <i class="fa fa-chevron-right"></i>
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

