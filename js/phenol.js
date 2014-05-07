
function showInfo () {
	document.getElementById('mainInfo').style.display    	 = 'block';
	document.getElementById('peroksidPlot').style.display    = 'none';
}
function showCalculator () {
	var labelDiv = null;
	var minusDiv = null;
	var valueDiv = null;
	var plusDiv = null;
	var headerDiv = null;
	var massDiv = null;
	var calcBtnDiv = null;
	
	labelDiv = document.createElement("div");
	labelDiv.style.width = '160px';
	labelDiv.innerHTML = "Количество компонентов:";
	labelDiv.style.verticalAlign="middle";
	labelDiv.style.display= "table-cell";
		
	minusDiv = document.createElement("div");
	minusDiv.style.width = '25px';
	minusDiv.innerHTML = "&minus;";
	minusDiv.style.display= "table-cell";
	minusDiv.style.textAlign="center";	
	minusDiv.style.fontSize="14pt";
	minusDiv.style.border = "1px solid";
	minusDiv.style.borderRadius = "3px";
	minusDiv.style.cursor= "pointer";
	minusDiv.onclick = minusClick;
	
	valueDiv = document.createElement("div");
	valueDiv.id = "valueDiv";
	valueDiv.style.width = '20px';
	valueDiv.innerHTML = "2";
	valueDiv.style.display= "table-cell";
	valueDiv.style.verticalAlign="middle";
	valueDiv.style.textAlign="center";	
	valueDiv.style.border = "1px solid";
	
	plusDiv = document.createElement("div");
	plusDiv.style.width = '25px';
	plusDiv.innerHTML = "+";
	plusDiv.style.display= "table-cell";
	plusDiv.style.textAlign="center";	
	plusDiv.style.fontSize="14pt";
	plusDiv.style.border = "1px solid";
	plusDiv.style.borderRadius = "3px";
	plusDiv.style.cursor= "pointer";
	plusDiv.onclick = plusClick;
	
	headerDiv = document.createElement("div");	
	headerDiv.style.marginTop = "10px";
	//headerDiv.style.width = '450px';
	headerDiv.innerHTML = 
		"<table ><tr><td style='padding-left:18px; width:142px'>М, г/моль</td>"+
		"<td style='padding-left:18px; width:142px'>Масс. %</td>"+
		"<td style='padding-left:18px; width:179px'>Моль. доли</td></tr></table>";
	headerDiv.style.display= "block";
	headerDiv.style.fontSize="14pt";
		
	massDiv = document.createElement("div");
	massDiv.id = "massDiv";
	massDiv.style.width = '500px';
	massDiv.innerHTML = 
	"<table style='position:relative;'>"+
	"<tr><td><input style='display:table-cell;' type='text' id = 'm1' class='calcInput' value='1'></td>"+
	"<td><input style='display:table-cell;' type='text' id = 'p1' class='calcInput' value='1'></td>"+
	"<td><input style='display:table-cell;' type='text' id = 'd1' class='calcInput' value='1'></td></tr>"+
	"</table>"+
	"<table style='position:relative;'>"+
	"<td><input style='display:table-cell;' type='text' id = 'm2' class='calcInput' value='2'></td>"+
	"<td><input style='display:table-cell;' type='text' id = 'p2' class='calcInput' value='2'></td>"+
	"<td><input style='display:table-cell;' type='text' id = 'd2' class='calcInput' value='2'></td></tr>"+
	"</table>";
	
	massDiv.style.display= "block";
	//massDiv.style.textAlign="center";	
	massDiv.style.fontSize="14pt";
	massDiv.style.borderRadius = "3px";
		
	calcBtnDiv = document.createElement("div");
	calcBtnDiv.style.width = '100px';
	calcBtnDiv.innerHTML = "Calculate";
	calcBtnDiv.style.marginTop = "10px";
	calcBtnDiv.style.marginLeft = "18px";
	calcBtnDiv.style.display= "block";
	calcBtnDiv.style.textAlign="center";	
	calcBtnDiv.style.fontSize="14pt";
	calcBtnDiv.style.border = "1px solid";
	calcBtnDiv.style.borderRadius = "3px";
	calcBtnDiv.style.cursor= "pointer";
	calcBtnDiv.onclick = calcBtnClick;
	
	var peroksidPlotDiv = document.getElementById("peroksidPlot");
	while (peroksidPlotDiv.firstChild) {
		peroksidPlotDiv.removeChild(peroksidPlotDiv.firstChild);
	}
	peroksidPlotDiv.appendChild(labelDiv);
	peroksidPlotDiv.appendChild(minusDiv);
	peroksidPlotDiv.appendChild(valueDiv);
	peroksidPlotDiv.appendChild(plusDiv);
	peroksidPlotDiv.appendChild(headerDiv);
	peroksidPlotDiv.appendChild(massDiv);
	peroksidPlotDiv.appendChild(calcBtnDiv);
		
	//document.getElementById('selectTemperDiv').style.display = 'none';
	//document.getElementById('catComboDiv').style.display     = 'none';
	//document.getElementById('characteristics').style.display = 'none';
	document.getElementById('mainInfo').style.display    	 = 'none';
	document.getElementById('peroksidPlot').style.display    = 'block';
	//document.getElementById('catVizualComboDiv').style.display = 'none';
	//document.getElementById('selectTemperVizualDiv').style.display = "none";
	//document.getElementById('peroksidPlot2').style.display      = 'none';
	//document.getElementById('peroksidPlotActivity').style.display      = 'none';	
}
//--------------------------------------------------------------------------
function calcBtnClick() {
	var massDiv = document.getElementById("massDiv");
	var countChild = massDiv.childElementCount;
	var m = []; var p = []; var d = []; var nu = [];
	var pSum = 0; var nuSum = 0;
	for ( var i = 0; i < countChild; i++) {
		m[i] = document.getElementById("m"+(i+1)).value; 		
		p[i] = document.getElementById("p"+(i+1)).value;
		if(m[i]=="") {alert('Введите молярную массу!'); return}
		if(p[i]=="") {alert('Введите масс. %!'); return}		
		pSum = Number(p[i]) + pSum;
		nu[i] = p[i]/m[i];
		nuSum = Number(nu[i]) + nuSum;
		d[i] = document.getElementById("d"+(i+1)).value;		
	}
	if (pSum!=100) {alert('Сумма всех масс. % должна быть равной 100!'); return;}
	for ( var i = 0; i < countChild; i++) {
		var dd = document.getElementById("d"+(i+1));
		dd.value = ((nu[i]/nuSum).toFixed(4)).toString();
	}
}
//--------------------------------------------------------------------------
function minusClick() {
	var massDiv = document.getElementById("massDiv");
	var valueDiv = document.getElementById("valueDiv");
	var countChild = massDiv.childElementCount;
	if(	countChild >2) {
		massDiv.removeChild(massDiv.lastChild);
		valueDiv.innerHTML = countChild-1;
	}	
}
//-------------------------------------------------------------------------
function plusClick() {
	var massDiv = document.getElementById("massDiv");
	var valueDiv = document.getElementById("valueDiv");
	var countChild = massDiv.childElementCount+1;
	if(	countChild <6) {
	massDiv.innerHTML += 
		"<table style='position:relative;'>"+
		"<tr><td><input style='display:table-cell;' type='text' id = 'm"+countChild+"' class='calcInput' value='"+countChild+"'></td>"+
		"<td><input style='display:table-cell;' type='text' id = 'p"+countChild+"' class='calcInput' value='"+countChild+"'></td>"+
		"<td><input style='display:table-cell;' type='text' id = 'd"+countChild+"' class='calcInput' value='"+countChild+"'></td></tr>"+
		"</table>";
	valueDiv.innerHTML = countChild;
	}
}
//------------------------------------------------------------------------