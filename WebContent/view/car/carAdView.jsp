<%@page import="car.bean.CarBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	CarBean car = (CarBean)request.getAttribute("car");
    String nowPage = (String)request.getAttribute("page");
%>

<!DOCTYPE html>
<html>
<head>
 <title>Mycar ๋ ํฐ์นด</title>
 
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard-dynamic-subset.css" class="svelte-p5qu1m" data-svelte="svelte-1yifjfe">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
#imgstyle{filter: drop-shadow(5px 5px 5px #000)}
body {
    font-family: pretendard;
    font-size: 14px;
    
    color: #333;
    background-color: #fff;
}
.btn-default {
    color: #fff !important;
    background-color: #1e1a1b!important;
    border-color: #1e1a1b !important;
}
</style>
<script>
   window.onload = function test(){
	var cPrice = "<c:out value = "${car.cPrice}"/>";
	var sangpumPrice = cPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "์";
	document.getElementById("cPrice").value = sangpumPrice;
	}
</script>
 
<body><jsp:include page="/view/main/mycarAdHeader.jsp"></jsp:include>
	
  <div class="container text-center">    
  <h2>์์ธ ์ ๋ณด</h2>
  <br>
  <div class="row">
    <div class="col-sm-6">
    &nbsp;<br/>&nbsp;<br/>&nbsp;<br/>&nbsp;<br/>&nbsp;<br/>
    <div class="form-group">
    <div>
    <img>
    <img src="image/${car.cFile}" width="105%" alt =" ์ํ์ ๋ณด" title="์ฐจ๋ ์์ด์ฝ" id="imgstyle">
    </div>
    </div>
    </div>
	
	<div class="col-sm-6">
    <div class="well"  style="background-color: #FFFFFF;">
     <form class="form-horizontal" role="form"  method="POST" name = "modifyform">
                 <div id="legend"style="text-align: center;">
    
                <div class="form-group" style="text-align: center;" title="์ฝ๋">
                    <label for="cCode"class="col-sm-4 control-label" >์ฝ๋ :</label>
                    <div class="col-sm-6" >
                 <input type="text" id="cCode" name="cCode" class="form-control" value="${car.cCode}" onclick="test7()" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cType" class="col-sm-4 control-label" title="์ฅ๊ธฐ/๋จ๊ธฐ">์ฅ๊ธฐ/๋จ๊ธฐ :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cType" name="cType" class="form-control"  value="${car.cType}" onclick="test7()" readonly>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="cSize" class="col-sm-4 control-label" title="์ฐจ๋ํฌ๊ธฐ">์ฐจ๋ ํฌ๊ธฐ :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cSize" name="cSize" value="${car.cSize}" class="form-control"onclick="test7()" readonly >
                    </div>
                </div>
                 <div class="form-group">
                    <label for="cName" class="col-sm-4 control-label" title="์ฐจ์ข">์ฐจ ์ข :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cName" name="cName"  class="form-control" value="${car.cName}" onclick="test7()" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cPrice" class="col-sm-4 control-label" title="๊ฐ๊ฒฉ">๊ฐ๊ฒฉ :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cPrice" name="cPrice"  class="form-control" value="${car.cPrice}" onclick="test7()" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cGear" class="col-sm-4 control-label" title="๊ธฐ์ด">๊ธฐ์ด :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cGear" name="cGear"  class="form-control" value="${car.cGear}" onclick="test7()" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cFuel" class="col-sm-4 control-label" title="์ฐ๋ฃ">์ฐ๋ฃ :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cFuel" name="cFuel"  class="form-control" value="${car.cFuel}" onclick="test7()"readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cSeat" class="col-sm-4 control-label" title="์น์ฐจ์ธ์">์น์ฐจ์ธ์  :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cSeat" name="cSeat"class="form-control" value="${car.cSeat}"onclick="test7()" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cFile" class="col-sm-4 control-label" title="์ฐจ๋์ฌ์ง">์ฐจ๋ ์ฌ์ง :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cFile" name="cFile" class="form-control" value="${car.cFile}"onclick="test7()"readonly>
                         </div>
                </div>
                <button type="button"onclick="location.href='carAdSearchList.ca?page=${param.page}&&fieldName=${param.fieldName}&&word=${param.word}'"class="btn btn-default" title="๋์๊ฐ๊ธฐ">๋์๊ฐ๊ธฐ</button>           
                <button type="button"onclick="location.href='./carAdDetailPro.ca?cCode=${car.cCode}&&page=${param.page}&&fieldName=${param.fieldName}&&word=${param.word}'"class="btn btn-default" title="์์ ">์์ </button>
               
             </div>
            </form> <!-- /form -->
            </div>
            </div>
            </div>
            
            </div>
   <script>
   function test7() {
	  alert("์์ธ ํ์ด์ง์์  ์์ ํ ์์์ต๋๋ค.");

	}
</script>
<jsp:include page="../main/mycarFooter.jsp"></jsp:include>

        </body>