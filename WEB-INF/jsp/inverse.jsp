<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<jsp:useBean id="b1" scope="request" type="java.lang.Double" />
<jsp:useBean id="b2" scope="request" type="java.lang.Double" />
<jsp:useBean id="b3" scope="request" type="java.lang.Double" />
<jsp:useBean id="d" scope="request" type="java.lang.Double" />

<%@ include file="top.jspf" %>

 

<div id="content">

<a href="inverse?startGA=yes" >Запустить ГА</a>
<%=b1 %>
<%=b2 %>
<%=b3 %>
<%=d %>

</div>

<%@ include file="bottom.inc" %>