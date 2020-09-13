<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="modelos.Usuario" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>Proyecto Final Libres</div>
	<table border="1">
      <tr>
      	<th>ID</th>
      	<th>Nombre</th>
      	<th>Apellido</th>
      	<th>Email</th>
      	<th>Usuario</th>
      	<th>Contraseña</th>
      	<th>Fecha</th>
      </tr>
      <%
      List<Usuario> usuarios;
      usuarios= (List<Usuario>)request.getAttribute("usuarios");
      
      for (Usuario l:usuarios) {
      %>
      <tr>
      	<td><%= l.getId() %></td>
      	<td><%= l.getNombre() %></td>
      	<td><%= l.getApellido() %></td>
      	<td><%= l.getEmail() %></td>
      	<td><%= l.getUsuario() %></td>
      	<td><%= l.getContrasenia() %></td>
      	<td><%= l.getDate() %></td>
      </tr>      	
      <% 
      }
      %>   
   </table>
</body>
</html>