function onld() {
	
	var middleMenu = document.getElementsByClassName("top-menu");
	var middleMenuHeight = 0;
	if (middleMenu.length>0) {
		middleMenuHeight = middleMenu[0].offsetHeight;	
	}

	var footerHeight = document.getElementById("footer").offsetHeight;
	var windowHeight = window.innerHeight; 
	var headerHeight = document.getElementById("header").offsetHeight;
	
	document.getElementById("content").style.height = 
		(windowHeight-footerHeight-middleMenuHeight-headerHeight-20)+"px";	
	document.getElementById("left").style.height = 
		(document.getElementById("content").offsetHeight+middleMenuHeight-20)+'px';
	
	if(document.getElementById("oxygenInfoFlashOuter"))
	{
		document.getElementById("oxygenInfoFlashInner").style.height = (document.getElementById("content").offsetHeight)+"px";
		document.getElementById("oxygenInfoFlashInner").style.width = (document.getElementById("content").offsetHeight)*4/3+"px";
	}	
}
function func() {
	var btnTop = document.getElementById("loginButton").offsetTop;
	
	if ( btnTop == "147")
	{
		document.getElementById("container3").style.top = "-"+document.getElementById("container3").offsetHeight+"px";
		document.getElementById("loginButton").style.top = "0px";
		document.getElementById("loginButton").style.backgroundImage = "url('img/styles/arrow_down.png')";
	}
	else if (btnTop = "0")
	{
		document.getElementById("container3").style.top = "0px";
		document.getElementById("loginButton").style.top = document.getElementById("container3").offsetHeight+"px";
		document.getElementById("loginButton").style.backgroundImage = "url('img/styles/arrow_up.png')";
	}
}
function changeCurrentTab(obj) {
	var elements = document.getElementsByClassName("current-tab");
	if (elements.length>0)	elements[0].className = "top-menu standart-tab";
	obj.className = "top-menu current-tab";
}

function goToPage (url) {					
	document.location.href = url;		
}