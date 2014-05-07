<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ include file="top.jspf" %>

 
 
<div id="main-content">
	<div style="float:left;width: 100%; " class="notlink">
		<div class="top-menu current-tab" onclick="showInfo(); changeCurrentTab(this)">Общая информация</div>
		<div class="top-menu standart-tab" onclick="showCalculator(); changeCurrentTab(this)">Калькулятор молярности</div>		
	</div>

	<div id="content">
		

		<div id="topOfRight" style="clear:left; margin: 10px; ">
			<div id="peroksidPlot" style="width:500px;height:250px; display: none"></div>			
		</div>
		
		<div id="bottomOfRight" style="clear:left; margin: 10px;">
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
		
	</div> <!-- end of bottomOfRight -->
  </div> <!-- end of content -->
</div> <!-- end of main-content -->
<%@ include file="bottom.inc" %>