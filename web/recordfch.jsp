<%@page import="java.sql.PreparedStatement"%>
<%@include file="dbmanager1.jsp"%>
<%
  int roll_no=Integer.parseInt(request.getParameter("Roll_no"));
  String name=request.getParameter("Name");
  String DOB=request.getParameter("Dob");
  String course=request.getParameter("Course");
  String college=request.getParameter("College");
  String reg_date=request.getParameter("Reg_date");
  PreparedStatement ps=con.prepareStatement("insert into tbl_student values(?,?,?,?,?,?)");
  ps.setInt(1,roll_no);
  ps.setString(2,name);
  ps.setString(3,DOB);
  ps.setString(4,course);
  ps.setString(5,college);
  ps.setString(6,reg_date);
  int n=ps.executeUpdate();
  if(n>0){
      out.println("<script>alert('successfully inserted !');window.location.href='index.jsp';</script>");
  }else{
      out.println("<script>alert('not insert successfully !');window.location.href='index.jsp';</script>");
  }
%>
