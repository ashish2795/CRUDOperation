<%@page import="java.sql.PreparedStatement"%>
<%@include file="dbmanager1.jsp" %>
<%
 String roll=request.getParameter("Roll_no");
 String query="insert into tbl_student values('"+roll+"')";
 PreparedStatement ps=con.prepareStatement(query);
 int n=ps.executeUpdate();
 if(n>0){
     out.println("<script>alert('success !');window.location.href='show.jsp';</script>");
 }else{
     out.println("<script>alert('not success !');window.location.href='show.jsp';</script>");
 }
%>