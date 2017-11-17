<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 

<s:if test="#session.id == null">
	<script type="text/javascript">
		alert("�α������ּ���.");
		location.href = "/icase/main.action";
	</script>
</s:if>
   
        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>��ٱ���</h1>
                    </div>
                    <div class="col-md-6">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>��ٱ���</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <p class="text-muted lead">īƮ�� ${basket_cnt}���� ��ǰ�� ����ֽ��ϴ�.</p>
                    </div>


                    <div class="col-md-9 clearfix" id="basket">

                        <div class="box">

                            <form id="basket_form" name="basket_form" method="post" >
								<input type="hidden" id="choice_basket_no_list" name="choice_basket_no_list" />
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                            	<th style="text-align:center;vertical-align:middle;">
                                            		<input type="checkbox" id="basket_check_all" name="basket_check_all" checked="checked" />
                                            	</th>
                                                <th colspan="2">��ǰ</th>
                                                <th>����</th>
                                                <th>����</th>
                                                <th>������</th>
                                                <th colspan="2">�հ�ݾ�</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <s:iterator value="list" status="stat">
                                            <tr>
                                                <td style="text-align:center;vertical-align:middle;">
                                                	<input type="checkbox" id="basket_no" name="basket_no" value="${no}" checked="checked" />
                                                </td>                                            
                                                <td>
                                                    <a href="#">
                                                        <img src="/icase/customer/img/product/${main_img_save}" alt="${goods_name}">
                                                    </a>
                                                </td>
                                                <td><a href="#">${goods_name}</a>
                                                </td>
                                                <td>
                                                    <input type="number" id="goods_qty_${no}" name="goods_qty_${no}" value="${goods_qty}" class="form-control" onclick="javascript:qty_value_set('goods_qty_${no}',this.value,${no},${goods_no});" onkeyup="javascript:qty_value_change('goods_qty_${no}',this.value,${no},${goods_no},event);">
                                                </td>
                                                <td><fmt:formatNumber type="currency" currencySymbol="��" value="${goods_price/goods_qty}"  /></td>
                                                <td>��0</td>
                                                <td id="goods_price_${no}"><fmt:formatNumber type="currency" currencySymbol="��" value="${goods_price}"  /></td>
                                                <td><a href="javascript:delete_basket(${no});"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                         </s:iterator>
                                            <!-- <tr>
                                                <td>
                                                    <a href="#">
                                                        <img src="img/basketsquare.jpg" alt="Black Blouse Armani">
                                                    </a>
                                                </td>
                                                <td><a href="#">Black Blouse Armani</a>
                                                </td>
                                                <td>
                                                    <input type="number" value="1" class="form-control">
                                                </td>
                                                <td>$200.00</td>
                                                <td>$0.00</td>
                                                <td>$200.00</td>
                                                <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr> -->
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">�հ�</th>
                                                <th colspan="2" id="total_sum_1"><fmt:formatNumber type="currency" currencySymbol="��" value="${resultClass.goods_price_sum}"  /></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>
                                <!-- /.table-responsive -->

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="/icase/goodslist.action" class="btn btn-default"><i class="fa fa-chevron-left"></i> ��Ӽ���</a>
                                    </div>
                                    <div class="pull-right">
                                        <button class="btn btn-default" onclick="javascript:location.reload();"><i class="fa fa-refresh"></i> ��ٱ��� ���ΰ�ħ</button>
                                        <button type="button" class="btn btn-template-main" onclick="javascript:choice_settle();">���ð��� <i class="fa fa-chevron-right"></i>                                 
                                        <!-- <button style="margin-left:3px;" type="button" class="btn btn-template-main" onclick="javascript:alert('�ֹ��ϱ� �����Ϸ�� �����ϰڽ��ϴ�.');">��ü���� <i class="fa fa-chevron-right"></i> -->
                                        </button>
                                    </div>
                                </div>

                            </form>

                        </div>
                        <!-- /.box -->

                        <div class="row">
                            <div class="col-md-3">
<!--                                 <div class="box text-uppercase">
                                    <h3>You may also like these products</h3>
                                </div> -->
                            </div>

                            <div class="col-md-3">
                                <!--  <div class="product">
                                   <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143</p>

                                    </div>
                                </div> -->
                                <!-- /.product -->
                            </div>

                            <div class="col-md-3">
<!--                                 <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143</p>
                                    </div>
                                </div> -->
                                <!-- /.product -->
                            </div>

                            <div class="col-md-3">
<!--                                 <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143</p>
                                    </div>
                                </div> -->
                                <!-- /.product -->
                            </div>

                        </div>

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
                                            <th id="total_sum_2"><fmt:formatNumber type="currency" currencySymbol="��" value="${resultClass.goods_price_sum}"  /></th>
                                        </tr>
                                        <tr>
                                            <td>��ۺ�</td>
                                            <th><fmt:formatNumber type="currency" currencySymbol="��" value="0.00"  /></th>
                                        </tr>
                                        <tr>
                                            <td>����</td>
                                            <th><fmt:formatNumber type="currency" currencySymbol="��" value="0.00"  /></th>
                                        </tr>
                                        <tr class="total">
                                            <td>�հ�ݾ�</td>
                                            <th id="total_sum_3"><fmt:formatNumber type="currency" currencySymbol="��" value="${resultClass.goods_price_sum}"  /></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>


<%--                         <div class="box">
                            <div class="box-header">
                                <h4>Coupon code</h4>
                            </div>
                            <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                            <form>
                                <div class="input-group">

                                    <input type="text" class="form-control">

                                    <span class="input-group-btn">

					    <button class="btn btn-template-main" type="button"><i class="fa fa-gift"></i></button>

					</span>
                                </div>
                                <!-- /input-group -->
                            </form>
                        </div> --%>

                    </div>
                    <!-- /.col-md-3 -->

                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->