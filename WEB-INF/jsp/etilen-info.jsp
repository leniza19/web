<%@page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jspf" %>

<div id="main-content">
<div style="float:left;width: 100%; background:#FFA753; ">
	<div class="top-menu current-tab">Общая информация</div>	
</div>
<div id="content">
   Окисление окиси этилена описывается следующим уравнением:
   <br>
   <p>C2H4O + 2.5O2 = 2CO2 + 2H2O              (1)</p>							

	<b>Стадийная схема реакции: </b>	
	<p>1. Z+O2 &harr; ZO2	2 </p>
	<p>2. 2Z+O2 &harr; 2ZO	½ </p>
	<p>3. Z+C2H4O &harr; ZC2H4O	1					(2) </p>
	<p>4. ZC2H4O+ZO &rarr; 2ZCH2O	1 </p>
	<p>5. ZCH2O+ZO2 &rarr; CO2+H2O+2Z	2 </p>

<br>где Z – активные центры поверхности катализатора.
<br><br>
<b>Обозначения:</b>
<p>концентрации промежуточных веществ:</p>
z=[Z]
<br>x1=[ZO2]
<br>x2=[ZO]
<br>x3=[ZC2H4O]
<br>x4=[ZCH2O]

<br><br>x1+x2+x3+x4+z=1
<p>концентрации основных веществ:</p>
c1=[C2H4O]
<br>c2=[O2]
<br>c3=[CO2]
<br>c4=[H2O]

<br><br>Реакция (1), протекающая по механизму (2), в реакторе идеального перемешивания описывается системой обыкновенных дифференциальных уравнений:

</div>
</div>
<%@ include file="bottom.inc" %>