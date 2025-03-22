<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

<%
Connection con;
String url="jdbc:mysql://localhost:3306/bd_mascotas";
String Driver="com.mysql.jdbc.Driver";
String user="root";
String clave="dan123";
Class.forName(Driver);
con=DriverManager.getConnection(url,user,clave);

PreparedStatement ps;
ResultSet rs;

ps=con.prepareStatement("select * from mascotas");
rs=ps.executeQuery();

%>

<div>
    
        <h1>Hello World!</h1>

        <table>
            
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>RAZA</th>
                <th>EDAD</th>
            </tr>

            <% while(rs.next()){ %>
            
            <tr>
                <td> <%= rs.getInt("id") %> </td>
                <td> <%= rs.getString("nombre") %> </td>
                <td> <%= rs.getString("raza") %> </td>
                <td> <%= rs.getInt("edad") %> </td>
            </tr>

            <% } %>
            
            
        </table>
    
</div>

    </body>
</html>
