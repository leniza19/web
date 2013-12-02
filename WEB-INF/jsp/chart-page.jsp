<%@ include file="top.jspf" %>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "mathchem.chart.typePaint"  %>

 <div id="main-content">
 
  <div style="float:left;width: 100%; " class="notlink">
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=oxygen-info'); ">Информация</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=zerno-form');">Зерно катализатора</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=isoterm-form');">Неподвижный слой</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=move-form');">Движущийся слой</div>
  </div>
	
<div id="content">
   
   <%
   session.setAttribute("myTask", request.getAttribute("myTask"));
   session.setAttribute("myTypePaint",request.getAttribute("myTypePaint"));
   session.setAttribute("xAxis",request.getAttribute("xAxis"));
   %>
   <img src="chart" alt="Progress chart" /> 

</div>
</div>
<%@ include file="bottom.inc" %>