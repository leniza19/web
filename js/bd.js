function showBdInfo (tableName) {
	
//	$.getJSON('json/irekmars.json', function(data) {
		//var innerHtml = "";
		
		switch (tableName){
			case "reactions": 
				document.getElementById('reactions').style.display="inline-table";
				document.getElementById('structures').style.display="none";
				
				break;
			case "structures": 
				document.getElementById('reactions').style.display="none";
				document.getElementById('structures').style.display="inline-table";
				
				break;
		default : alert("nothing");
		}		
		
		//document.getElementById('content').innerHTML = innerHtml;
				
//	});
	

}