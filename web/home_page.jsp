<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Items" %><%--
  Created by IntelliJ IDEA.
  User: akimzhan
  Date: 14.04.2023
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="css_and_js.jsp" %>
</head>
<body class="p-3">
<%@include file="navbar.jsp" %>

<div class="container">
    <div class="text-center mt-5">
        <h1>Welcome To BITLAB SHOP</h1>
        <h4>Electronic device with high quality and service</h4>
    </div>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center mt-5 ">
        <%
            ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");
            if (items != null) {
                for (Items i : items) {
        %>

        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal"><%=i.getName()%>
                    </h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">$<%=i.getPrice()%></h1>

                    <div class="list-unstyled mt-3 mb-4 mx-auto" style="width: 30%">
                        <p><%=i.getDescription()%></p>
                    </div>

                    <button type="button" class="w-100 btn btn-lg btn-outline-primary">Buy now</button>
                </div>
            </div>
        </div>

        <%
                }
            }else out.print("<h1>Cannot invoke the method</h1>");
        %>
    </div>
</div>


</body>
</html>
