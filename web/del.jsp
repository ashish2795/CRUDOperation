<%@page import="java.sql.PreparedStatement"%>
<%@include file="dbmanager1.jsp" %>
<%
String emppid=request.getParameter("empid");
String query="delete from tbl_student where roll_no='"+emppid+"'";
PreparedStatement ps= con.prepareStatement(query);
int n=ps.executeUpdate();
if(n>0)
{
    out.println("<script>alert('record delete');window.location.href='show.jsp';</script>");
}else{
     out.println("<script>alert('record not delete');window.location.href='show.jsp';</script>");
} 
%>



