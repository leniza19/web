$(document).ready(function() {
	
	$.getJSON('json/test.json', function(data) {
		var myItems = [];
		
		//myItems = data.items;
		$.each(data, function(key,val) {
			//alert(val);
		})
	});
	
	//var jsonp = '[{"lang": "jQuery","ID":"1"},{"lang":"C","ID":"2"}]';
	//var obj = $.parseJSON(jsonp);
	
});

function onld() {
	
	//document.getElementById("container3").style.top = "-"+document.getElementById("container3").offsetHeight+"px";
	//document.getElementById("loginButton").style.top = "0px";
	
	var middleMenu = document.getElementsByClassName("menu");
	var middleMenuHeight = 0;
	if (middleMenu.length>0) {
		middleMenuHeight = middleMenu[0].offsetHeight;	
	}

	document.getElementById("content").style.height = (window.innerHeight-53-26-20-middleMenuHeight)+"px";	
	document.getElementById("left").style.height = 
		(document.getElementById("content").offsetHeight+middleMenuHeight)+'px';
	
	if(document.getElementById("oxygenInfoFlashOuter"))
		{
		document.getElementById("oxygenInfoFlashInner").style.height = (window.innerHeight-53-26-20-middleMenuHeight)+"px";
		document.getElementById("oxygenInfoFlashInner").style.width = (window.innerHeight-53-26-20-middleMenuHeight)*4/3+"px";
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