<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ include file="../top.jspf" %>
  
<div id="main-content">
<div style="float:left;width: 100%;" class="notlink" >
	<div id="div1" class="top-menu current-tab" onclick="showMainInfo('irekmars','maininfo'); changeCurrentTab(this)">Информация</div>
	<div class="top-menu standart-tab" onclick="showMainInfo('irekmars','articles'); changeCurrentTab(this)">Основные публикации</div>
	<div class="top-menu standart-tab" onclick="showMainInfo('irekmars','aspirants'); changeCurrentTab(this)">Аспиранты</div>
</div>

	<script type="text/javascript">
		document.getElementById('div1').onclick();
    </script>      

<div id="content" style="display: block">

   
</div>
</div>
<%@ include file="../bottom.inc" %>