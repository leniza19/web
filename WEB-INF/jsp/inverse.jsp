<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<jsp:useBean id="c1" scope="request" type="java.lang.Double" />
<jsp:useBean id="c2" scope="request" type="java.lang.Double" />
<jsp:useBean id="c3" scope="request" type="java.lang.Double" />
<jsp:useBean id="E1" scope="request" type="java.lang.Double" />
<jsp:useBean id="k1" scope="request" type="java.lang.Double" />
<jsp:useBean id="E2" scope="request" type="java.lang.Double" />
<jsp:useBean id="k2" scope="request" type="java.lang.Double" />
<jsp:useBean id="E3" scope="request" type="java.lang.Double" />
<jsp:useBean id="k3" scope="request" type="java.lang.Double" />
<jsp:useBean id="fval" scope="request" type="java.lang.Double" />
<jsp:useBean id="startGA" scope="request" type="java.lang.String" />

<%@ include file="top.jspf" %>

 

<div id="content">
<%=startGA %>
<a href="inverse?startGA=yes" >Запустить ГА</a>
<br> c1=<%=c1 %>
<br> c2=<%=c2 %>
<br> c3=<%=c3 %>

<br> E1=<%=E1 %>
<br> E2=<%=E2 %> 
<br> E3=<%=E3 %>

<br> k1=<%=k1 %>
<br> k2=<%=k2 %> 
<br> k3=<%=k3 %>

<br> fval=<%=fval %>

</div>



<%@ include file="bottom.inc" %>