<%@ page import="java.util.Iterator" %>
<%@ page import="mathchem.data.ArticleItem " %>
<jsp:useBean id="articleItems" scope="request" type="java.util.List" />
<%@ include file="top.jspf" %>
   

<div id="content">

<table border="0">

   <% 
      Iterator it = articleItems.iterator();
   	  int i = 1;
      while (it.hasNext())
      {
         ArticleItem articleItem = (ArticleItem) it.next();
   %>

      <tr><td style="display:none;"><%=articleItem.getId()%></td>
      <td><%=i%>.
      <a href="<%="article/"+articleItem.getUrl()%>" style="
    color: #006;"><%=articleItem.getTitle()%></a>
      </td>
      
      </tr>
   <% i++; } %>
</table>
</div>
<%@ include file="bottom.inc" %>