<%@page contentType="text/html;charset=UTF-8"%>

<%@ include file="top.jspf" %> 
 
 <div id="main-content">
 
 <div id="content">
   <form action = "chart-page" method = "POST">
    <table border="1" cellpadding="5"
    style="border-collapse: collapse;border: 1px solid black;">
    <tr>
        <td><b>Время, мин</b></td>
        <td><input type = "text" name = "T_"
            value = "400" size = "10" class="input inputText"/></td>
    </tr>
    <tr>
        <td><b>Кислород</b></td>
        <td><input type = "text" name = "C0_"
            value = "0.23" size = "10" class="input inputText"/></td>
    </tr>
    <tr>
        <td><b>Кокс</b></td>
        <td>
            <select name = "p0_" class="inputSelect">
                <option value = "0.05314">0.05314</option>
                <option value = "0.05315">0.05315</option>
                <option value = "0.05316">0.05316</option>
                <option value = "0.053">0.053</option>
            </select>
        </td>
    </tr>
    
    <tr>
        <td><b>Пористость</b></td>
        <td>
            <select name = "epsilon_" class="inputSelect">
                <option value = "0.42">0.42</option>
                <option value = "0.43">0.43</option>
                <option value = "0.44">0.44</option>
                <option value = "0.45">0.45</option>
            </select>
        </td>
    </tr>
    <tr>
        <td><b>Выбор графика</b></td>
        <td>
         <!-- <input type="radio" name="typePaint" class="inputRadio"
            value = "oxygen" >Кислород<br> -->
            <input type="radio" name="typePaint" class="inputRadio"
            value = "cocs" checked="checked">Коксовые отложения<br>
        </td>
    </tr>
      <tr>
        <td colspan = "2">
        <input type = "hidden" name = "typeSloi" value = "isotermSloi"/>
        <input type = "submit" value = "Запустить расчет" 
        style="width: 150px" class="button"/></td>
    </tr>
    </table>
    </form>
    </div>
</div>
<%@ include file="bottom.inc" %>
