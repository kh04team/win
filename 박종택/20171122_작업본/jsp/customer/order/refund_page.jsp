<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>${orderText} ��û ������</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">

                            <li><a href="index.html">Home</a>
                            </li>
                            <li>${orderText} ��û ������</li>
                        </ul>
                    </div>
                </div>
            </div>
</div>
<div id="content" class="clearfix">

            <div class="container">

                <div class="row">

                    <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                    <div class="col-md-9 clearfix" id="customer-account">

                        <div class="box">

                            <div class="heading">
                                <h3 class="text-uppercase">${orderText} ��û</h3>
                            </div>

                            <form id="refundForm" name="refundForm">
                            	<input type="hidden" id="no" name="no" value="${no}"/>
                            	<input type="hidden" id="goods_no" name="goods_no" value="${resultClass.goods_no}"/>                            	
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>${orderText} ��ǰ : </label>
												<strong>${resultClass.goods_name}</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="password_1">${orderText} ����</label>
                                            <textarea id="reason" name="reason" class="form-control" cols="30" rows="10"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                <div class="text-left">
                                    <button type="button" class="btn btn-template-main" onclick="javascript:${orderStatus}Request();"><i class="fa fa-save"></i> ${orderText}��û</button>
                                </div>
                            </form>

                        </div>
                        <!-- /.box -->
                        
                    </div>
                    <!-- /.col-md-9 -->

                    <!-- *** LEFT COLUMN END *** -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
</div>