<%@page contentType="text/html;charset=UTF-8"%>

<%@ include file="top.jspf" %>
<%@ include file="middle.inc" %> 
 <div id="content">
   <form action = "chart-page" method = "POST">
    <table border="1" cellpadding="5"
    style="border-collapse: collapse;border: 1px solid black;">
    <tr>
        <td><b>Температура входная, град.</b></td>
        <td><input type = "text" name = "T0_" value = "400" 
        size = "10" class="input inputText"/></td>
    </tr>
    <tr>
        <td><b>Концентрация кислорода, %</b></td>
        <td><input type = "text" name = "c00_"
            value = "0.015" size = "10" class="input inputText"/></td>
    </tr>
    <tr>
        <td><b>Радиус зерна, м</b></td>
        <td>
            <select name = "Rz_" class="inputSelect">
                <option value = "0.004">0.005</option>
                <option value = "0.001">0.006</option>
                <option value = "0.005">0.007</option>
                <option value = "0.006">0.008</option>
            </select>
        </td>
    </tr>
    
    <tr>
        <td><b>Начальное содержание кокса, %</b></td>
        <td>
            <select name = "qc0_" class="inputSelect">
                <option value = "0.04">0.04</option>
                <option value = "0.05">0.05</option>
                <option value = "0.03">0.03</option>
                <option value = "0.02">0.02</option>
            </select>
        </td>
    </tr>
    <tr>
        <td><b>Выбор графика</b></td>
        <td>
            <select name = "typePaint" class="inputSelect">
                <option value = "temp">Температура</option>            
                <option value = "o2">O2</option>
                <option value = "h2o">H2O</option>
                <option value = "co2">С2O</option>
                <option value = "co">CO</option>                
            </select>
        </td>
    </tr>
      <tr>
        <td colspan = "2">
        <input type = "hidden" name = "typeSloi" value = "zerno"/>
        <input type = "submit" value = "Запустить расчет"
        style="width: 150px" class="button"/></td>
    </tr>
    </table>
    </form>
</div>
<%@ include file="bottom.inc" %>
