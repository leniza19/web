<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="mathchem.data.ReactionItem"%>
<%@ page import="mathchem.data.MaterialItem"%>
<jsp:useBean id="reactionItems" scope="request" type="java.util.List" />
<jsp:useBean id="materialItems" scope="request" type="java.util.List" />
<%@ include file="top.jspf"%>




 <div id="main-content">
<div style="float:left;width: 100%; background:#FFA753; ">
<div class="top-menu current-tab" onclick="ReactionBased(); changeCurrentTab(this)">Имеющиеся в базе реакции</div>
<div class="top-menu standart-tab" onclick="MaterialBased(); changeCurrentTab(this)">Имеющиеся в базе вещества</div>
	
	
	
<div id="content">
<div id="topOfRight" style="clear:left; margin: 10px; ">
<div id="peroksidPlot" style="width:500px;height:250px; display: none"></div>
<div id="peroksidPlot2" style="width:500px;height:250px; display: none"></div>
</div>	
		
<div id="bottomOfRight" style="clear:left; margin: 10px;">
<div id="mainInfo" >
<h2>База данных кинетических исследований</h2>
	<u>Список имеющих в базе реакций:</u>
	
	<table class="tbl_thin" border="0">
		<tr>
			<th>Название реакции</th>
			<th>Группа</th>
			<th>Примечание</th>
		</tr>
		<% 
      Iterator it = reactionItems.iterator();
      while (it.hasNext())
      {
    	  ReactionItem reactionItem = (ReactionItem) it.next();
   %>
		<tr>
			<td><%=reactionItem.getNameReac()%></td>
			<td><%=reactionItem.getNameGroup()%></td>
			<td><%=reactionItem.getNote()%></td>
		</tr>
		<% } %>
	</table>

	




<%@ include file="bottom.inc"%>