<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator" %>
<%@ page import="mathmodeling.data.User" %>
<jsp:useBean id="userItems" scope="request" type="java.util.List" />
<%@ include file="../top.jspf" %>
   

<div id="content">
<h2>Список пользователей</h2>

<a href="edit-user-items">Добавить пользователя</a> 


<hr align="center" width="100%" size="2" />
<table border="0">

   <% 
      Iterator it = userItems.iterator();
      while (it.hasNext())
      {
         User userItem = (User) it.next();
   %>
	  <tr>
	  <td><%=userItem.getId()%></td>
	  <td><%=userItem.getUsername()%></td>
	  <td><%=userItem.getPassword()%></td>
	  <td><%=userItem.getPermission()%></td>
	  <td><a href="edit-user-items?id=<%=userItem.getId()%>">редактировать</a></td>
	  <td><a href="delete-user-items?id=<%=userItem.getId()%>">удалить</a></td>
	  </tr>      
   <% } %>
</table>

</div>
<%@ include file="../bottom.inc" %>