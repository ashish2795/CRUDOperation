
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mydb","mydb");
    out.println(con);
%>
