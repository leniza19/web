<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="mathchem.data.ReactionItem"%>
<%@ page import="mathchem.data.MaterialItem"%>
<jsp:useBean id="reactionItems" scope="request" type="java.util.List" />
<jsp:useBean id="materialItems" scope="request" type="java.util.List" />
<%@ include file="top.jspf"%>

<div id="content">
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
	<br /> <u>Список имеющих в базе веществ:</u>
	<table class="tbl_thin" border="0">
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
<%@ include file="bottom.inc"%>