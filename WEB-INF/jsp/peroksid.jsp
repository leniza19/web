<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="mathchem.data.ExpItem"%>
<%@ page import="mathchem.data.CatalystItem"%>
<%@ page import="mathchem.data.ConstItem"%>
<jsp:useBean id="zamerItems" scope="request" type="java.util.List" />
<jsp:useBean id="catalystItems" scope="request" type="java.util.List" />
<jsp:useBean id="constItems" scope="request" type="java.util.List" />

<%@ include file="top.jspf" %>
<ul class="menu">
   <li onclick="showInfo()" ><a>Общая информация</a></li>
   <li onclick="drawPlotPeroksid(); showselectTemperDiv();" ><a>Расчеты</a></li>
   <li onclick="showCalculator()" ><a>Калькулятор молярности</a></li>
   <li onclick="showVizual()" ><a>Визуализация</a></li>
  </ul>

<div id="content">
<!-- для презентации -->
<!-- <div id="peroksidPlot" style="width:300px;height:150px"> -->
<!-- <div id="peroksidPlot" style="width:580px;height:370px"> -->
<div id="topOfRight">
<div id="peroksidPlot" style="width:500px;height:250px; display: none"></div>
<div id="peroksidPlot2" style="width:500px;height:250px; display: none"></div>
</div>

<div id="bottomOfRight">
<div id="mainInfo" >
<h2>Моделирование каталитической активности металлосиликатов в реакции окисления фенолов водным расвором перекиси водорода
</h2>

Реакция окисления фенолов водными растворами пероксида водорода в присутствии титаносиликатов является сложной последовательно-параллельной с образованием в качестве целевых продуктов реакции гидрохинона и пирокатехина, которые в условиях реакции претерпевают дальнейшие превращения.
<br>
<table style="width: 100%"><tr><td>
<img alt="" src="img/phenol/sheme1.png" 
style="float: left; margin-right: 5px; width:580px;">
</td></tr>
</table>
<br>

Известно, что для первоначальной оценки активности титаносиликатных катализаторов в реакциях окисления органических соединений можно использовать реакцию разложения H<sub>2</sub>O<sub>2</sub> в отсутствии субстрата [1]. Далее, образцы титаносиликатов, проявившие активность в разложении H<sub>2</sub>O<sub>2</sub>, исследовать в реакции окисления фенолов водными растворами H<sub>2</sub>O<sub>2</sub>.
Согласно литературным данным [2], реакция разложения H<sub>2</sub>O<sub>2</sub> удовлетворительно описывается уравнением первого порядка по H<sub>2</sub>O<sub>2</sub>:

<br>
<table style="width: 100%"><tr><td>
<img alt="" src="img/phenol/eq1.png" style="float: left; margin-right: 5px;">
</td></tr>
</table>

1. Н.Н. Трухан Исследование реакций селективного окисления органических соединений пероксидами в присутствии титан- и ванадий-содержащих мезопористых силикатных катализаторов, Дис. ... канд. хим. Наук, Новосибирск, с.129.
2. М.Е. Позин Перекись водорода и перекисные соединения, М.: Госхимиздат, 1957. с. 477.

</div>

<div id="catComboDiv" style="width: 50px; position: relative; display: none;">
<select id="catCombo" onChange="drawPlotPeroksid()">
  <option value="213">Кат. 213</option>
  <option value="215">Кат. 215</option>
  <option value="216">Кат. 216</option>
  <option value="651">Кат. 651</option>
  <option value="220">Кат. 220</option>
  <option value="221">Кат. 221</option>
  <option value="222">Кат. 222</option>
  <option value="220-A">Кат. 220-A</option>
  <option value="221-A">Кат. 221-A</option>
  <option value="222-A">Кат. 222-A</option>
  <option value="220*">Кат. 220*</option>
  <option value="221*">Кат. 221*</option>
  <option value="222*">Кат. 222*</option>
  <option value="642">Кат. 642</option>
  <option value="655">Кат. 655</option>
</select>
</div>

<div id="selectTemperDiv" style="width: 100px; position: relative; display: none;">
</div>

<div id="catVizualComboDiv" style="width: 50px; position: relative; display: none;">
<select id="catVizualCombo" onChange="drawSelectTemperVizualDiv()">
</select>
</div>

<div id="selectTemperVizualDiv" style="width: 100px; position: relative; display: none;">
</div>
    
<div id="characteristics" style="position: relative; display: none;">
</div>
<br>
<div style='display: block;'>
<u>Экспериментальные данные (лаб. приготовления катализаторов):</u>
	<table id="exp_table" class="tbl_thin" border="0">
		<tr>
			<th>№ эксперимента</th>
			<th>Время, час</th>
			<th>C(H2O2), мольн.д.</th>
		</tr>
		<% 
      Iterator it = zamerItems.iterator();
      while (it.hasNext())
      {
    	  ExpItem expItem = (ExpItem) it.next();
   %>
		<tr>
			<td><%=expItem.getIdExp()%></td>
			<td><%=expItem.getTime()%></td>
			<td><%=expItem.getConcentration()%></td>
		</tr>
		<% } %>
	</table>
	<br>
	<table id="catalyst_table" class="tbl_thin" border="0">
		<tr>
			<th>№ расчета</th>
			<th>Катализатор</th>
			<th>Метод</th>
			<th>Ea, кДж/моль</th>
			<th>Lnk0, 1/ч</th>
		</tr>
		<% 
      it = catalystItems.iterator();
      while (it.hasNext())
      {
    	  CatalystItem catalystItem = (CatalystItem) it.next();
   %>
		<tr>
			<td><%=catalystItem.getId()%></td>
			<td><%=catalystItem.getName()%></td>
			<td><%=catalystItem.getMethod()%></td>
			<td><%=catalystItem.getEa()%></td>
			<td><%=catalystItem.getLnk0()%></td>
		</tr>
		<% } %>
	</table>
	<br>
	<table id="constant_table" class="tbl_thin" border="0">
		<tr>
			<th>№ расчета</th>
			<th>№ эксперимента</th>			
			<th>k, 1/ч</th>
			<th>C0</th>				
			<th>T, &deg;C</th>		
		</tr>
		<% 
      it = constItems.iterator();
      while (it.hasNext())
      {
    	  ConstItem constItem = (ConstItem) it.next();
   %>
		<tr>
			<td><%=constItem.getIdCalc() %></td>
			<td><%=constItem.getIdExp() %></td>
			<td><%=constItem.getConstant()%></td>					
			<td><%=constItem.getC0()%></td>
			<td><%=constItem.getTempr() %></td>
		</tr>
		<% } %>
	</table>
</div>
</div>
</div>
<%@ include file="bottom.inc" %>