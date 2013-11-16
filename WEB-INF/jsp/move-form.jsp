<%@page contentType="text/html;charset=UTF-8"%>

<%@ include file="top.jspf" %>
  
<div id="main-content">
	<div style="float:left;width: 100%; background:#FFA753; ">
	<div class="top-menu cuttent-tab" onclick="goToPage('controller?go=oxygen-info'); ">Общая информация</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=zerno-form');">Расчеты</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=isoterm-form'); changeCurrentTab(this)">Калькулятор молярности</div>
	<div class="top-menu cuttent-tab" onclick="goToPage('controller?go=move-form'); changeCurrentTab(this)">Визуализация</div>
	</div>
	
	<div id="content">
 <form action = "chart-page" method = "POST">
    <table border="1" cellpadding="5"    
    style="border-collapse: collapse;border: 1px solid black;">
    <tr>
        <td><b>Температура, K</b></td>
        <td><input type = "text" name = "Tv0"
            value = "735.838" size = "10"/ class="input inputText"></td>
    </tr>
    <tr>
        <td><b>Концентрация кислорода, %</b></td>
        <td><input type = "text" name = "c00"
            value = "0.1859" size = "10" class="input inputText"/></td>
    </tr>
    
        <tr>
        <td><b>Расход воздуха в 1-ю зону, т/ч</b></td>
        <td>
            <select name = "Gv0" class="inputSelect">
                <option value = "4.06971"> 4.06971</option>
                <option value = "0.43">0.43</option>
                <option value = "0.44">0.44</option>
                <option value = "0.45">0.45</option>
            </select>
        </td>
    </tr>
    
    <tr>
        <td><b>Расход воздуха во 2-ю зону, т/ч</b></td>
        <td>
            <select name = "Gv1" class="inputSelect">
                <option value = "12.5113">12.5113</option>
                <option value = "0.05315">0.05315</option>
                <option value = "0.05316">0.05316</option>
                <option value = "0.053">0.053</option>
            </select>
        </td>
    </tr>
    
     <tr>
        <td><b>Площадь поверхности змеевиков,м2/м</b></td>
        <td>
            <select name = "Sp1" class="inputSelect">
                <option value = "7.11381">7.11381</option>
                <option value = "0.43">0.43</option>
                <option value = "0.44">0.44</option>
                <option value = "0.45">0.45</option>
            </select>
        </td>
    </tr>
    <tr>
        <td><b>Выбор графика</b></td>
        <td>
            <input type="radio" name="typePaint" class="inputRadio"
            value = "temprature" checked="checked">Температура<br>
            <input type="radio" name="typePaint" class="inputRadio"
            value = "cocs">Коксовые отложения<br>
            
        </td>
    </tr>
    <tr>
        <td colspan = "2">
        <input type = "hidden" name = "typeSloi" value = "moveSloi"/>
        <input type = "submit" style="width: 150px" 
        value = "Запустить расчет" class="button"/>
        </td>
    </tr>
    </table>
    </form>
    </div>
</div>
<%@ include file="bottom.inc" %>
