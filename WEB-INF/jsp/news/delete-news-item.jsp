<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="mathchem.data.NewsItem" %>
<jsp:useBean id="newsItem" scope="request" type="java.lang.Object" />

<%@ include file="../top.jspf" %>

<div id="content">
<form method="post">
   <table>
      <tr>
         <td> Заголовок</td>
         <td><h2>${newsItem.title}</h2>
         </td>
      </tr>
      <tr>
      <tr>
         <td>Дата</td>
          <td><%--<input type="text" name="newsDate" value="${newsItem.newsDate}" size="50" /> --%>
         	${newsItem.newsDate}
         </td>
      </tr>
      <tr>
         <td>Текст</td>
         <td>
         ${newsItem.content}
<%--          <textarea name="content" rows="30" cols="60" >${newsItem.content} --%>
<!--          </textarea> -->
         
         </td>
      </tr>
      <tr>
         <td>
             <input type="submit" name="submit-button" value="Удалить новость?" />             
         </td>
         <td><input type="submit" name="cancel-button" value="Отмена" 
         style="float: left"/>
         </td>
      </tr>
   </table>
   <input type="hidden" name="id" value="${newsItem.id}" />
   <input type="hidden" name="isNew" value="${isNew}" />

</form>
</div>
<%@ include file="../bottom.inc" %>