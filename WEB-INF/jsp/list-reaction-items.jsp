<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="mathchem.data.ReactionItem"%>
<%@ page import="mathchem.data.MaterialItem"%>
<jsp:useBean id="reactionItems" scope="request" type="java.util.List" />
<jsp:useBean id="materialItems" scope="request" type="java.util.List" />
<%@ include file="top.jspf"%>




<div id="main-content">
<div style="float:left;width: 100%; " class="notlink" >
<div class="top-menu current-tab" onclick="showBdInfo('reactions'); changeCurrentTab(this)">Список реакций в БД</div>
<div class="top-menu standart-tab" onclick="showBdInfo('structures'); changeCurrentTab(this)">Список веществ в БД</div>
</div>	
	
	
<div id="content">
<!-- 
<div id="topOfRight" style="clear:left; margin: 10px; ">
<div id="peroksidPlot" style="width:500px;height:250px; display: none"></div>
<div id="peroksidPlot2" style="width:500px;height:250px; display: none"></div>
</div>	
	

	 	
<div id="bottomOfRight" style="clear:left; margin: 10px;">

	 -->
	 
<!-- <div id="mainInfo" >
<h2>База данных кинетических исследований</h2>-->
	
	<table id="reactions" class="tbl_thin" border="0">
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
	

<br>
	<table id="structures" class="tbl_thin" border="0" style="display: none">
		<tr>
			<th>Химформула</th>
			<th >Наблюдаемое</th>
			<th>Промежуточное</th>
			<th>Исходное</th>
			<th>Продукт</th>
		</tr>
		<% 
      it = materialItems.iterator();
      while (it.hasNext())
      {
    	  MaterialItem materialItem = (MaterialItem) it.next();
   %>
		<tr>
			<td><%=materialItem.getChemF()%></td>
			<td style="text-align: center;"><b>
				<% 
			if (materialItem.isObserv()==true) 
			{
				%> + <% 
			}
			else  
			{
			%> &mdash; <%} %>
			</b></td>
			<td style="text-align: center;">
				<% 
			if (materialItem.isInterm()==true) 
			{
				%> + <% 
			}
			else  
			{
			%> &mdash; <%} %>
			</td>
			<td style="text-align: center;">
				<% 
			if (materialItem.isSource()==true) 
			{
				%> + <% 
			}
			else  
			{
			%> &mdash; <%} %>
			</td>
			<td style="text-align: center;">
				<% 
			if (materialItem.isProduct()==true) 
			{
				%> + <% 
			}
			else  
			{
			%> &mdash; <%} %>
			</td>	
		</tr>
		<% } %>
	</table>


</div>
</div>

<%@ include file="bottom.inc"%>