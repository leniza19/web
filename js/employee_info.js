function showMainInfo (employerName,info) {
	var JsonFile = 'json/' + employerName+'.json';
	
	$.getJSON(JsonFile, function(data) {
		var innerHtml = "";
		
		switch (info){
			case "maininfo": 				
				innerHtml += "<br><img src='img/employees/" + data.photo+ "' style='float: left; margin-right: 5px;'>";
				innerHtml += "<b>Биографическая справка</b>";
					
				for ( var i = 0; i < data.biography.length; i++) {
					innerHtml += "<br>" + data.biography[i];
				}
				
				break;
			case "articles": 
				innerHtml += "<b>Наиболее значимые публикации:</b>";
				for ( var i = 0; i < data.articles.length; i++) {
					innerHtml += "<br>" + data.articles[i];
				}
				
				break;
			case "aspirants": 
				innerHtml += data.aspirants;
				break;
		default : alert("nothing");
		}		
		
		document.getElementById('content').innerHTML = innerHtml;
				
	});
	

}

//--------------------------------------------------------------------------