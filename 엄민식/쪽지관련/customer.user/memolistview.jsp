<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
                                <!-- ========== FULL WIDTH MEGAMENU END ================== -->

                             

        <!-- *** LOGIN MODAL END *** -->

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>쪽지내용확인</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li>쪽지내용확인</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container" id="contact">

                <div class="row">
                    <div class="col-md-8">

                        <section>

                           <form>
                               <%--  <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">받을사람</label>
                                         <input type="text" id="recive_id" name="recive_id" value='<s:property value="resultClass.recive_id" />' class="form-control" readonly="readonly"  />
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">보내는사람</label>
                                            <input type="text" id="send_id" name="send_id" value='<s:property value="resultClass.send_id" />' class="form-control" readonly="readonly"  />
                                        </div>
                                    </div> --%>
                                    
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">제목</label>
                                           <input type="text" id="subject" name="subject" value='<s:property value="resultClass.subject" />' class="form-control" readonly="readonly"  />
                                        </div>
                                    </div>
                                    
                                        <div class="form-group">
                                           <label for="message">내용</label><br>
                                           <div class="col-md-6 col-sm-6 col-xs-12">
                                            <textarea id="content" name="content" required="required" rows="20" cols="50" ><s:property value="resultClass.content" /></textarea>
                                           </div>
                                           <%-- <input type="text" id="content" name="content" value='<s:property value="resultClass.content" />' class="form-control" readonly="readonly"  /> --%>
                                        </div>
                                     <br><br>
                                    <div class="col-md-6 col-sm-12 col-xs-12 text-center">
                                        <input type="button" class="btn btn-template-main" value="확인" onClick="javascript:location.href='memolist.action'">
         								<!-- <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-5"> -->
                                    </div>
                                </div>
                                <!-- /.row -->
                            </form>

                        </section>

                    </div>

                    

                </div>
                <!-- /.row -->


            </div>
            <!-- /#contact.container -->
        </div>
        <!-- /#content -->

        <div id="map">
        </div>

        <!-- *** GET IT ***
_________________________________________________________ -->


</html>