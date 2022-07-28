<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="m.com.room_type_photo.model.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<%
Room_type_photoService room_type_photoSvc = new Room_type_photoService();
    List<Room_type_photoVO> list = room_type_photoSvc.getAll();
    pageContext.setAttribute("list",list);
    Integer id = (Integer)request.getAttribute("id");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/listAllRoomType.css">

<title>所有房型照片資料</title>

</head>

<body bgcolor='white'>
<!--  =================== * 後台框架區 * =================== -->
	<header>
		<nav class="nav">

			<div class="logo">

				<a href="" class="logo_a"> <img
					src="${pageContext.request.contextPath}/images/logo.png" alt="">
				</a> <a class="nav-top-a" href="${pageContext.request.contextPath}/front_end/chat/chat.jsp"><img class="nav-top-chat"
					src="${pageContext.request.contextPath}/images/chat.png" alt=""></a>

				 <a href="${pageContext.request.contextPath}/LogoutEmp" class="nav-top-sighout">${jobVO.job_name}/登出</a>
			</div>
			<div class="line"></div>

		</nav>
	</header>
<aside class="aside">
        <nav class="nav">
            <div>
                <img src="${pageContext.request.contextPath}/images/group.png">
                <p>${employeeVO.emp_name}</p>
                <hr style="background-color:#757575 ;height:2px;">
            </div>
            <ul class="nav_list">
                
<!--                 <li> -->
<%--                     <img src="${pageContext.request.contextPath}/images/group (1).png"><a href="#">員工管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>員工資料</a></li> -->
<!--                         <li><a href=''>員工權限</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
                
<!--                 <li> -->
<%--                     <img src="${pageContext.request.contextPath}/images/social-group.png"><a href="#">會員管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>會員資料</a></li> -->
<!--                         <li><a href=''>會員通知管理</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="${pageContext.request.contextPath}/images/talking.png"><a href="#">消息管理</a> --%>
                
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>媒體報導管理</a></li> -->
<!--                         <li><a href=''>最新消息發布</a></li> -->
<!--                     </ul>                 -->
<!--                 </li> -->
               
                <li> 
                    <img src="${pageContext.request.contextPath}/images/bed.png"><a href="#">房務管理</a>
                    <ul id="list">
                        <li><a href="${pageContext.request.contextPath}/back_end/room_order/select_room_order_page.jsp">住宿訂單管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/back_end/room_order_list/listAllRoom_Order_List.jsp">訂單明細管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/back_end/room_type/select_page.jsp">房型管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/back_end/room/select_room_page.jsp">房間管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/back_end/room_type_photo/select_room_type_photo_page.jsp">房型圖片管理</a></li>
                   
                    </ul>
                </li>
               
<!--                 <li>  -->
<%--                     <img src="${pageContext.request.contextPath}/images/camping.png"><a href="#">活動管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>活動項目管理</a></li> -->
<!--                         <li><a href=''>活動訂單管理</a></li> -->
<!--                         <li><a href=''>活動場次管理</a></li> -->
                        
<!--                     </ul> -->
<!--                 </li> -->
                
<!--                 <li> -->
<%--                     <img src="${pageContext.request.contextPath}/images/gift.png"><a href="#">伴手禮管理</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>查詢全部訂單</a></li> -->
<!--                         <li><a href=''>新增商品訂單</a></li> -->
<!--                         <li><a href=''>商品類別管理</a></li> -->
<!--                         <li><a href=''>商品管理</a></li> -->
<!--                         <li><a href=''>商品圖片管理</a></li> -->
<!--                     </ul> -->
                
<!--                 </li> -->
                
               
            </ul>
        </nav>
    </aside>
	<!--  =================== * 主畫面區 * =================== -->
<main>
	<!-- <h4>此頁練習採用 EL 的寫法取值:</h4> -->
	<div id="tableall2">
		<table id="table-1">
			<tr id="topline" style="border:none;">
				<td>
					<h3 style="font-size:18px;">所有房型照片資料</h3>
					<h4>
						<a
							href="${pageContext.request.contextPath}/back_end/room_type_photo/select_room_type_photo_page.jsp"><img
							src="${pageContext.request.contextPath}/images/home.png"
							width="50" height="50" border="0"></a>
					</h4>
				</td>
			</tr>
		</table>
		
		<table id="table-2" cellspacing="0">
			<tr id="tr-1">
				<th>房型圖片編號</th>
				<th>房型編號</th>
				<th>房型圖片</th>
				<th>修改</th>
				<th>刪除</th>
			</tr>
			<%@ include file="page1.file"%>
			<c:forEach var="room_type_photoVO" items="${list}" begin="<%=pageIndex%>"
				end="<%=pageIndex+rowsPerPage-1%>">
				
				<tr style="border-bottom: none;">
					<td>${room_type_photoVO.room_type_photo_id}</td>
					<td>${room_type_photoVO.room_type_id}</td>
					<td><img id="room-img"
						src="<%=request.getContextPath()%>/Room_Type_Photo_Reader?id=${room_type_photoVO.room_type_photo_id}"></td>
							<td>
						<FORM METHOD="post"
							ACTION="<%=request.getContextPath()%>/Room_Type_PhotoServlet"
							style="margin-bottom: 0px;">
							<input class="icon" type="image"
								src="${pageContext.request.contextPath}/images/school-material.png"
								width="25" height="25" border="0" onclick="submit()"> <input
								type="hidden" name="room_type_photo_id"
								value="${room_type_photoVO.room_type_photo_id}"> <input
								type="hidden" name="action" value="getOne_For_Update">
						</FORM>
					</td>
					<td>
						<FORM METHOD="post"
							ACTION="<%=request.getContextPath()%>/Room_Type_PhotoServlet"
							style="margin-bottom: 0px;">
							<input class="icon" type="image"
								src="${pageContext.request.contextPath}/images/recycle.png"
								width="25" height="25" border="0" onclick="submit()"> <input
								type="hidden" name="room_type_photo_id"
								value="${room_type_photoVO.room_type_photo_id}"> <input
								type="hidden" name="action" value="delete">
						</FORM>
					</td>
				</tr>
			</c:forEach>
			</table>
	</div>
	<%@ include file="page2.file"%>
	</main>
</body>
</html>