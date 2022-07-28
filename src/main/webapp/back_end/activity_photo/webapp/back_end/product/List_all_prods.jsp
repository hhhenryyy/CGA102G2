<%@page import="p.com.product.model.Product_VO"%>
<%@page import="p.com.product.model.Product_Service"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="p.com.product.model.*"%>
 
<%
	Product_Service prodSvc = new Product_Service();
    List<Product_VO> list = prodSvc.getAll();
    pageContext.setAttribute("list",list);
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/backend_product.css">
<title>List all products here</title>
<style>
table {
	border-radius: 5px;
	position: relative;
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

table {
	position: relative;
	top:20px;
/* 	top:-10px; */
}

a {
  color: blue;
  text-decoration:underline;
  }
  
td {
    height:100px;
}
</style>


</head>
<body>
    <header>
        <nav class="nav">

            <div class="logo">

                <a href="" class="logo_a">
                    <img src="<%=request.getContextPath() %>/images/logo.png" alt=""><!--  ../../images/logo.png-->
                </a>

                <a class="nav-top-a" href=""><img class="nav-top-chat" src="<%=request.getContextPath() %>/images/chat.png" alt=""></a>

               <a href="${pageContext.request.contextPath}/LogoutEmp" class="nav-top-sighout">${jobVO.job_name}/登出</a>
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
<%--                     <img src="<%=request.getContextPath() %>/images/group (1).png"><a href="#">員工管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>員工資料</a></li> -->
<!--                         <li><a href=''>員工權限</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
                
<!--                 <li> -->
<%--                     <img src="<%=request.getContextPath() %>/images/social-group.png"><a href="#">會員管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>會員資料</a></li> -->
<!--                         <li><a href=''>會員通知管理</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/talking.png"><a href="#">消息管理</a> --%>
                
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>媒體報導管理</a></li> -->
<!--                         <li><a href=''>最新消息發布</a></li> -->
<!--                     </ul>                 -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/bed.png"><a href="#">房務管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>住宿訂單管理</a></li> -->
<!--                         <li><a href=''>訂單明細管理</a></li> -->
<!--                         <li><a href=''>房型管理</a></li> -->
<!--                         <li><a href=''>房間管理</a></li> -->
<!--                         <li><a href=''>房型圖片管理</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/camping.png"><a href="#">活動管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>活動項目管理</a></li> -->
<!--                         <li><a href=''>活動訂單管理</a></li> -->
<!--                         <li><a href=''>活動場次管理</a></li> -->

<!--                     </ul> -->
<!--                 </li> -->
                
                <li>
                    <img src="<%=request.getContextPath() %>/images/gift.png"><a href="#">伴手禮管理</a>
                     <ul id="list">
                        <li><a href='<%=request.getContextPath() %>/back_end/product_order_detail/homepage.jsp'>查詢全部訂單</a></li> 
                        <li><a href="<%=request.getContextPath() %>/back_end/product_category/Select_page.jsp">商品類別管理</a></li>
                        <li><a href="<%=request.getContextPath() %>/back_end/product/Select_page.jsp">商品管理</a></li>
                        <li><a href="<%=request.getContextPath() %>/back_end/product_pics/Select_page.jsp">商品圖片管理</a></li>
                    </ul>
                
                </li>
                
               
            </ul>
        </nav>
    </aside>
<!-- 以上為公版內容 -->	

	<main>

	<h1><a href="<%=request.getContextPath() %>/back_end/product/Select_page.jsp">
<!-- <img src="<%=request.getContextPath() %>/images/back1.gif" width="100" height="32" border="0"> -->回商品管理首頁</a>
</h1>
		<h2>所有商品清單</h2>
<div style="position:relative; right:-400px;"><%@ include file="page1.file" %></div>
		<table border=1>
			<tr>
				<th>商品編號</th>
				<th>商品名稱</th>
				
				<th>商品類別名稱</th>
				<th>商品介紹</th>
				<th>商品價格</th>
				<th>商品數量</th>
				<th>商品狀態</th>
				<th>修改</th>
				<th>刪除</th>

			</tr>

<%-- 			<%@ include file="page1.file" %> --%>
<%-- 			begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%> --%>
				 
<%-- 			<c:forEach var="eachOrderListVO" items="${productOrderList}" --%>
<!-- 				varStatus="d"> -->
<%-- 					<c:forEach var="prodVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
				
				
				<c:forEach var="prodVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
				
<%-- 				<c:forEach var="prodVO" items="${list}"> --%>
				<tr>
					<td height="100px">${prodVO.product_id}</td>
					<td height="100px">${prodVO.product_name}</td>
					
<%-- 					<td height="50px">${prodVO.product_category_id}</td> --%>
					<td height="100px">${prodVO.getCategory_VO().product_category_name}</td>
					<td height="100px">${prodVO.product_describtion}</td>
					<td height="100px">${prodVO.product_price}</td>
					<td height="100px">${prodVO.product_quantity}</td>
					
					<c:if test="${prodVO.product_status == true}">
					<td height="100px">上架</td> 
					</c:if>
					<c:if test="${prodVO.product_status == false}">
					<td height="100px">下架</td> 
					</c:if>
					
					<td height="100px">
					     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/product.do" style="margin-bottom: 0px;">
					     <input type="submit" value="修改">
					     <input type="hidden" name="product_id"  value="${prodVO.product_id}">
					     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
					</td>
					<td height="100px">
					     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/product.do" style="margin-bottom: 0px;">
					     <input type="submit" value="刪除">
					     <input type="hidden" name="product_id"  value="${prodVO.product_id}">
					     <input type="hidden" name="action" value="delete"></FORM>
					</td>
				</tr>
			</c:forEach>
		</table>
		
		
<!-- 		<div id="include_2" style="position:absolute; left:850px; bottom:400px;"> -->
		<br><br><br><br>
		<div id="include_2">
			<%@ include file="page2.file" %></div>

		<%-- <%@ forward file="homepage.jsp" %> --%>
	</main>
</body>
</html>