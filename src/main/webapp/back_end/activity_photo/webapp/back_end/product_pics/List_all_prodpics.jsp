<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="p.com.productpics.model.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<% 
	Product_pics_Service prodcatSvc = new Product_pics_Service();
	List<Product_pics_VO> list = prodcatSvc.getAll();
    pageContext.setAttribute("list",list);
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/backend_product.css">
<title>Product_order_detail</title>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"> -->
<style>

/* =============================================== */
</style>

<style>
table {
	border-radius: 5px;
	position: relative;
	top:50px;
	background-color: rgb(253, 253, 253);
	box-shadow: 2px 2px 3px 3px #cccccc;
	width: 900px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 3px;
	text-align: center;
}

thead.thead>tr th:nth-child(2), thead.thead>tr th:nth-child(3) {
	width: 250px;
}

tbody.tbody tr:hover {
	content: attr(title);
	background-color: rgb(208, 255, 255);
}

.table {
	text-align: center;
	margin-top:-30px;
}

th, td, tr {
	border: 1px solid darkgray;
}

td > img{
	position:relative;
	width:200px;
	height:200px;
	left:80px;
	top:0px;
}

.Img{
	width:2%;
	height:5%;
	position:absolute;
	margin-top:-10px;
	margin-left:-11px;
}
.Img:hover{
	width:2.5%;
	height:5.5%;
}

a {
  color: black;
  text-decoration:underline;
  
}
input{
	border: 1px solid black;
	width:100px;
	background-color:white;
	cursor:pointer;
}
input:hover{
	background-color:black;
	color:white;
}

select{
	border:1px solid black;
	width:100px;
}
.back:hover{
	color:blue;
}
.selectFromPage2{
	border:1px solid black;
	font-size:14px;
	background-color:white;
}
</style>
</head>
<!-- -----------------------------------  ????????????  ----------------------------------- -->
<body>
    <header>
        <nav class="nav">

            <div class="logo">

                <a href="" class="logo_a">
                    <img src="<%=request.getContextPath() %>/images/logo.png" alt=""><!--  ../../images/logo.png-->
                </a>

                <a class="nav-top-a" href=""><img class="nav-top-chat" src="<%=request.getContextPath() %>/images/chat.png" alt=""></a>

                <a href="${pageContext.request.contextPath}/LogoutEmp" class="nav-top-sighout">${jobVO.job_name}/??????</a>
            </div>
            <div class="line"></div>

        </nav>
    </header>

    <aside class="aside">
        <nav class="nav">
            <div>
                <img src="<%=request.getContextPath() %>/images/group.png">
                <p>${employeeVO.emp_name}</p>
                <hr style="background-color:#757575 ;height:2px;">
            </div>
            <ul class="nav_list">
                
<!--                 <li> -->
<%--                     <img src="<%=request.getContextPath() %>/images/group (1).png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
                
<!--                 <li> -->
<%--                     <img src="<%=request.getContextPath() %>/images/social-group.png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/talking.png"><a href="#">????????????</a> --%>
                
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                     </ul>                 -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/bed.png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/camping.png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->

<!--                     </ul> -->
<!--                 </li> -->
                
                <li>
                    <img src="<%=request.getContextPath() %>/images/gift.png"><a href="#">???????????????</a>
                     <ul id="list">
                        <li><a href='<%=request.getContextPath() %>/back_end/product_order_detail/homepage.jsp'>??????????????????</a></li> 
                        <li><a href="<%=request.getContextPath() %>/back_end/product_category/Select_page.jsp">??????????????????</a></li>
                        <li><a href="<%=request.getContextPath() %>/back_end/product/Select_page.jsp">????????????</a></li>
                        <li><a href="<%=request.getContextPath() %>/back_end/product_pics/Select_page.jsp">??????????????????</a></li>
                    </ul>
                
                </li>
                
               
            </ul>
        </nav>
    </aside>
    
 <!-- ---------------------------------  ??????????????????  --------------------------------- -->     

<main>
<div>
<h1><a class="back" href="<%=request.getContextPath() %>/back_end/product_pics/Select_page.jsp">????????????????????????</a></h1>
</div>	
	
	<div style="position:relative; right:-400px;"><%@ include file="page1.file" %></div>
	<div>
	
	<table  style="position:relative;" class="table table-bordered">
	<tr>
		<th>??????????????????</th>		
		<th>????????????</th>
		<th>????????????</th>
		<th>??????</th>
		<th>??????</th>
	</tr>
 <c:forEach var="prodVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
<%-- 	<c:forEach var="prodVO" items="${list}" > --%>
		
		<tr>
		<td>${prodVO.product_photo_id}</td>
		<td>${prodVO.getProduct_VO().product_name}</td>
<%-- 		<td align="center"><img width="50px" height="50px" id ="product-img" src="<%=request.getContextPath()%>/prodpics_reader?product_photo_id=${prodVO.product_photo_id}"></td> --%>
<%-- 		                              src="<%=request.getContextPath()%>/prodpics_reader?product_photo_id=${prodVO.product_photo_id}" --%>
		<td><img class ="product-img" src="<%=request.getContextPath()%>/prodpics_reader?product_photo_id=${prodVO.product_photo_id}" width=250px height=70px></td>
<%-- 		<td>${prodVO.product_photo}</td>  --%>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/prodpics_Servlet" style="margin-bottom: 0px;">
			     <input type="submit" value="??????">
			     <input type="hidden" name="product_photo_id"  value="${prodVO.product_photo_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/prodpics_Servlet" style="margin-bottom: 0px;">
			     <input type="submit" value="??????">
			     <input type="hidden" name="product_photo_id"  value="${prodVO.product_photo_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
</div>
<br><br><br><br><br>
<!-- <div id="include_2" style="position:absolute; left:800px; bottom:700px;"> -->
<div id="include_2">
<%@ include file="page2.file" %>
</div>


		<!------------------- ?????????listALL -------------->
<%-- 		<jsp:include page="listAllProdpics.jsp" /> --%>

	</main>


</body>
</html>