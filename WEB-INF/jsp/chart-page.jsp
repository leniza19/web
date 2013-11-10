<%@ include file="top.jspf" %>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "mathchem.chart.typePaint"  %>
<%@ include file="middle.inc" %>
 
<div id="content">
   
   <%
   session.setAttribute("myTask", request.getAttribute("myTask"));
   session.setAttribute("myTypePaint",request.getAttribute("myTypePaint"));
   session.setAttribute("xAxis",request.getAttribute("xAxis"));
   %>
   <img src="chart" alt="Progress chart" /> 

</div>
<%@ include file="bottom.inc" %>