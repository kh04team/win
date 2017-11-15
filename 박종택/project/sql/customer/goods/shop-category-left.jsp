<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %>  
        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>상품리스트</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>상품리스트</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">


                    <!-- *** LEFT COLUMN ***
			_________________________________________________________ -->

                    <div class="col-sm-3">

                        <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                        <div class="panel panel-default sidebar-menu">


                            <div class="panel-heading">
                                <h3 class="panel-title">Search</h3>
                            </div>

                            <div class="panel-body">
                                <form id="goods_search" name="goods_search" role="search">
                                    <div class="input-group">
                                        <input type="text" id="searchKeyword" name="searchKeyword" class="form-control" placeholder="Search">
                                        <span class="input-group-btn">
		    								<button type="button" id="search_button" name="search_button" class="btn btn-template-main"  style="height:34px;"><i class="fa fa-search"></i></button>
										</span>
                                    </div>
                                </form>
                            </div>

                            <div class="panel-heading">
                                <h3 class="panel-title">카테고리</h3>
                            </div>

                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked category-menu">
	                                    <li>
	                                        <a href="/icase/goodslist.action">전체보기<span class="badge pull-right"><s:property value="ProductTotalCount" /></span></a>
	                                    </li>                                
                                	<s:iterator value="list_category" status="stat">
	                                    <li>
	                                        <a href="/icase/goodslist.action?category_no=<s:property value="category_no" />"><s:property value="category_name" /><span class="badge pull-right"><s:property value="cnt" /></span></a>
	                                    </li>
                                    </s:iterator>
                                    <!-- <li class="active">
                                        <a href="shop-category.html">Ladies  <span class="badge pull-right">123</span></a>
                                        <ul>
                                            <li><a href="shop-category.html">T-shirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Skirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Pants</a>
                                            </li>
                                            <li><a href="shop-category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="shop-category.html">Kids  <span class="badge pull-right">11</span></a>
                                        <ul>
                                            <li><a href="shop-category.html">T-shirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Skirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Pants</a>
                                            </li>
                                            <li><a href="shop-category.html">Accessories</a>
                                            </li>
                                        </ul> 
                                    </li> -->

                                </ul>

                            </div>
                        </div>

                        <%-- <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title">Brands</h3>
                                <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> <span class="hidden-sm">Clear</span></a>
                            </div>

                            <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Armani (10)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Versace (12)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Carlo Bruni (15)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Jack Honey (14)
                                            </label>
                                        </div>
                                    </div>

                                    <button class="btn btn-default btn-sm btn-template-main"><i class="fa fa-pencil"></i> Apply</button>

                                </form>

                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title clearfix">Colours</h3>
                                <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> <span class="hidden-sm">Clear</span></a>
                            </div>

                            <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour white"></span> White (14)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour green"></span> Green (20)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour red"></span> Red (10)
                                            </label>
                                        </div>
                                    </div>

                                    <button class="btn btn-default btn-sm btn-template-main"><i class="fa fa-pencil"></i> Apply</button>

                                </form>

                            </div>
                        </div> --%>

                        <!-- *** MENUS AND FILTERS END *** -->

                        <!-- <div class="banner">
                            <a href="shop-category.html">
                                <img src="/icase/customer/img/banner.jpg" alt="sales 2014" class="img-responsive">
                            </a>
                        </div> -->
                        <!-- /.banner -->

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** LEFT COLUMN END *** -->

                    <!-- *** RIGHT COLUMN ***
			_________________________________________________________ -->

                    <div class="col-sm-9">

                        <!-- <p class="text-muted lead">In our Ladies department we offer wide selection of the best products we have found and carefully selected worldwide. Pellentesque habitant morbi tristique senectus et netuss.</p> -->
						<s:if test="list.size() <= 0">
							<div class="pages">
								등록된 게시물이 없습니다.
							</div>	
						</s:if>	 
                        <div class="row products">
							<s:iterator value="list" status="stat">
	                            <div class="col-md-4 col-sm-6">
	                                <div class="product">
	                                    <div class="image">
	                                        <a href="/icase/shopdetail.action?goods_no=<s:property value="goods_no" />">
	                                            <img src="/icase/customer/img/product/<s:property value="main_img_save" />" alt="" class="img-responsive image1">
	                                        </a>
	                                    </div>
	                                    <!-- /.image -->
	                                    <div class="text">
	                                        <h3><a href="/icase/shopdetail.action?goods_no=<s:property value="goods_no" />"><s:property value="goods_name" /></a></h3>
	                                        <p class="price"><s:property value="goods_price" />원</p>
	                                        <p class="buttons">
	                                            <a href="/icase/shopdetail.action?goods_no=<s:property value="goods_no" />l" class="btn btn-default">상세보기</a>
	                                            <!-- <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
	                                        </p>
	                                    </div>
	                                    <!-- /.text -->	                                    
	                                </div>
	                                <!-- /.product -->
	                            </div>
							</s:iterator>
                        </div>
                        <!-- /.products -->

                       <!--  <div class="row">

                            <div class="col-md-12 banner">
                                <a href="#">
                                    <img src="/icase/customer/img/banner2.jpg" alt="" class="img-responsive">
                                </a>
                            </div>

                        </div> -->


                        <div class="pages">
							<s:property value="pagingHtml" escape="false" />
                           <!--  <p class="loadMore">
                                <a href="#" class="btn btn-template-main"><i class="fa fa-chevron-down"></i> Load more</a>
                            </p>

                            <ul class="pagination">
                                <li><a href="#">&laquo;</a>
                                </li>
                                <li class="active"><a href="#">1</a>
                                </li>
                                <li><a href="#">2</a>
                                </li>
                                <li><a href="#">3</a>
                                </li>
                                <li><a href="#">4</a>
                                </li>
                                <li><a href="#">5</a>
                                </li>
                                <li><a href="#">&raquo;</a>
                                </li>
                            </ul> -->
                        </div>


                    </div>
                    <!-- /.col-md-9 -->

                    <!-- *** RIGHT COLUMN END *** -->

                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->