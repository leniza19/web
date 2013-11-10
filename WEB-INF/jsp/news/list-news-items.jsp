<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator" %>
<%@ page import="mathchem.data.NewsItem" %>
<jsp:useBean id="newsItems" scope="request" type="java.util.List" />
<jsp:useBean id="pageNumber" scope="request" type="java.lang.Long" />
<jsp:useBean id="userPermission" scope="request" type="java.lang.Integer" />
<%@ include file="../top.jspf" %>
   

<div id="content">
<h2>Новости</h2>

<% if((userPermission==1) || (userPermission==2)) { %>
<a href="edit-news-items">Добавить новость</a> 
<%} %>

<table><tr><td>Страницы:</td>
	<% for(int i=1; i<=pageNumber; i++) {
		out.println("<td><a href='list-news-items?group="+i+"'>"+
		i+"</a>");		
	} %>
	</tr>
</table>
<hr align="center" width="100%" size="2" />
<table border="0">

   <% 
      Iterator it = newsItems.iterator();
      while (it.hasNext())
      {
         NewsItem newsItem = (NewsItem) it.next();
   %>
	  <tr><td style="font-size: 9px;"><%=newsItem.getNewsDate()%>
	  <% if (userPermission==1) {%>
	  <a href="edit-news-items?id=<%=newsItem.getId()%>">редактировать</a>
	  <a href="delete-news-items?id=<%=newsItem.getId()%>">удалить</a>
	  <% }%>
	  </td></tr>
      <tr><td style="display:none;"><%=newsItem.getId()%></td>
      <td style="font-size: 16px;color: #0094D6;"><b><%=newsItem.getTitle()%>
      </b>
      </td>      
      </tr>
      <tr>
      <td class="newsContent">
      <%=newsItem.getContent()%>
      </td>      
      </tr>
   <% } %>
</table>

<table><tr><td>Страницы:</td>
	<% for(int i=1; i<=pageNumber; i++) {
		out.println("<td><a href='list-news-items?group="+i+"'>"+
		i+"</a>");		
	} %>
	</tr>
</table>
</div>
<%@ include file="../bottom.inc" %>