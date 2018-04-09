
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbmanager1.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <form action="recordfch.jsp" action="post">
            <table>
                <tr>
                    <td>Roll_no</td>
                    <td><input type="number" name="Roll_no"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="Name"></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="Dob"></td>
                </tr>
                <tr>
                    <td>Course</td>
                    <td><input type="text" name="Course"></td>
                </tr>
                <tr>
                    <td>College</td>
                    <td><input type="text" name="College"></td>
                </tr>
                <tr>
                    <td>Reg_Date</td>
                    <td><input type="date" name="Reg_date"></td>
                </tr>
                <tr>
                     <td colspan="2" align="center"><input type="submit" name="submit" value="submit"/></td>
                </tr>
            </table>
            <h2><a href="show.jsp">show record</a></h2>
        </form>
        </center>
    </body>
</html>
