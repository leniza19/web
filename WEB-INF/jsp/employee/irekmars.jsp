<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.Iterator"%>
<%@ include file="../top.jspf" %>


<!-- <ul class="menu">
   <li id="li1" onclick="showMainInfo('maininfo')" ><a>Информация</a></li>
   <li onclick="showMainInfo('articles')" ><a>Основные публикации</a></li>
   <li onclick="showMainInfo('aspirants')" ><a>Аспиранты</a></li>
  </ul>  
 -->  
  
  
  <div id="main-content">
<div style="float:left;width: 100%; background:#FFA753; ">
	<div class="top-menu current-tab" onclick="showMainInfo('maininfo'); changeCurrentTab(this)">Информация</div>
	<div class="top-menu standart-tab" onclick="showMainInfo('articles'); changeCurrentTab(this)">Основные публикации</div>
	<div class="top-menu standart-tab" onclick="showMainInfo('aspirants'); changeCurrentTab(this)">Аспиранты</div>
</div>



	<script type="text/javascript">
		document.getElementById('li1').onclick();
    </script>      

<div id="content" style="display: block">

   
</div>
<%@ include file="../bottom.inc" %>