<%@ page import="db.Users" %><%
  Users currentUser = (Users) session.getAttribute("useer");
%>

<nav class="bg-info rounded-5 px-5">
  <div class="d-flex align-items-center">
    <h4 class="m-1"><a class="navbar-brand" href="/home.html">BITLAB SHOP</a></h4>
    <%
      if (currentUser==null){
    %>
    <h6 class="m-3"><a class="navbar-brand" href="/login">Sign in</a></h6>
    <%
      }
    %>
  </div>
</nav>