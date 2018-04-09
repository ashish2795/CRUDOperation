<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbmanager1.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>show Register Record</h1>
        <table border="2">
            <tr>
            <th>Roll_no</th>
            <th>Name</th>
            <th>DOB</th>
            <th>Course</th>
            <th>College</th>
            <th>Reg_date</th>
            <th>Delete</th>
            <th>update</th>
            </tr>
            <%
             String q="select * from tbl_student" ;
             PreparedStatement ps=con.prepareStatement(q);
             ResultSet rs=ps.executeQuery();
              while(rs.next())
              {
             %>  
             <tr>
                 <td><%=rs.getInt("Roll_no")%></td>
                 <td><%=rs.getString("Name")%></td>
                 <td><%=rs.getString("DOB")%></td>
                 <td><%=rs.getString("Course")%></td>
                 <td><%=rs.getString("College")%></td>
                 <td><%=rs.getString("Reg_date")%></td>
                 <td><a href="del.jsp?empid=<%=rs.getInt("Roll_no")%>">Delete</a></td>
                 <td><a href="update.jsp">Update</a></td>
             </tr>
             <%
              }
              %>
        </table>
        <h2><a href="index.jsp">register user</a></h2>
    </center>
    </body>
</html>
