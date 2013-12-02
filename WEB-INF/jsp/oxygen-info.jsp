<%@page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jspf" %>

<div id="main-content">

	<div style="float:left;width: 100%; " class="notlink">
	<div class="top-menu current-tab" onclick="goToPage('controller?go=oxygen-info'); ">Информация</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=zerno-form');">Зерно катализатора</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=isoterm-form');">Неподвижный слой</div>
	<div class="top-menu standart-tab" onclick="goToPage('controller?go=move-form');">Движущийся слой</div>
	</div>

	<div id="content">
 	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" 
	codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" 
	id="oxygenInfoFlashOuter" align="middle">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="movie" value="oxygenRegeneration.swf" />
	<param name="quality" value="high" />
	<param name="allowFullScreen" value="true" /> 
	<param name="bgcolor" value="#ffffff" />
	<embed src="./img/styles/oxygenRegeneration.swf" quality="high" bgcolor="#ffffff"
	id="oxygenInfoFlashInner"
 	name="oxygenRegeneration" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
	</object>
</div>
</div>
<%@ include file="bottom.inc" %>