<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ include file="../top.jspf" %>
<ul class="menu">
   <li onclick="showMainInfo()" ><a>Информация</a></li>
   <li onclick="showArticles()" ><a>Основные публикации</a></li>
   <li onclick="showStudents()" ><a>Аспиранты</a></li>
  </ul>

<div id="content">

<div onload="showMainInfo()">
<%@ include file="irekmars-biograph.jspf" %>
<%@ include file="irekmars-articles.jspf" %>
<%@ include file="irekmars-students.jspf" %>

</div>
   
</div>
<%@ include file="../bottom.inc" %>