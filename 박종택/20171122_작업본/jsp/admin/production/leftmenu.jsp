<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %> 
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="/icase/admin/production/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
<!-- ������ �̸� property�� �����;��� -->                
                <h2>Woo sung</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Administrator</h3>
                <ul class="nav side-menu">
                  <li><a href="/icase/adMain.action"><i class="fa fa-home"></i>Home</a>
                  </li>
                  <li><a><i class="fa fa-child"></i> ȸ�� ���� <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html"> ȸ����ϰ��� </a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-gift"></i> ��ǰ ����<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/icase/adCategory.action">ī�װ�����</a></li>
                      <li><a href="/icase/adGoodsList.action">��ǰ����</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-credit-card"></i> �ֹ� ���� <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/icase/adOrderList.action"> �ֹ��������� </a></li>
                      <li><a href="/icase/adBackList.action"> ��ǰ����Ʈ </a></li>
					  <li><a href="/icase/adRefundList.action"> ȯ�Ҹ���Ʈ </a></li>                      
					  <li><a href="/icase/adChangeList.action"> ��ȯ����Ʈ </a></li>                      					  
                    </ul>
                  </li>
                  <li><a><i class="fa fa-star"></i> �̺�Ʈ ���� <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/icase/adEventList.action"> �̺�Ʈ��ϰ��� </a></li>
                      <li><a href="/icase/adEventWriteForm.action"> �̺�Ʈ���۵�� </a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-file-text"></i> ������ ���� <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/icase/adnotice_list.action"> �������׸�ϰ��� </a></li>
                      <li><a href="/icase/adqna_list.action"> Q&A���� </a></li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
            
          </div>
        </div>            