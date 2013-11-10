function drawSelectTemperVizualDiv() {
	var constant_table = document.getElementById('constant_table');
    var rowLength = constant_table.rows.length;
    var constData = []; // 0 - номер расчета, 1 - номер экспеп, 2 - темпер.
    
    for (var i = 1; i < rowLength; i++){
        var oCells = constant_table.rows.item(i).cells;
        constData.push([oCells.item(0).innerHTML,oCells.item(1).innerHTML,
                        oCells.item(4).innerHTML]);
     }
    	
	var calcNumber = document.getElementById("catVizualCombo").value; 
	var temp = "";
	var currentExp;
	var tempBool = true;
	
	 for(var i=0; i<constData.length; ++i) {
		 if(constData[i][0] == calcNumber) {		 
			 temp += "<input type='radio' name = 'temperature' value='"+
			 constData[i][1]+"' ";	
			 if (tempBool) {
				 currentExp = constData[i][1];
				 temp+=" checked='checked' ";
				 tempBool = false;
			 }
			 temp+="id='exp"+constData[i][1] + "' onclick='drawVizualGraf("+
			 constData[i][1] + 
			 ")''><label for='exp"+constData[i][1]+
			 "'>T = " +constData[i][2]+" &deg;C</label><br>";			
			 
		 }
	 }
	 
	 document.getElementById('selectTemperVizualDiv').innerHTML = temp;
	 drawVizualGraf(currentExp);
};

function drawVizualGraf(currentExp) {
	var exp_table = document.getElementById('exp_table');

    var rowLength = exp_table.rows.length;

    var expData = [];  
    
    for (i = 1; i < rowLength; i++){
       var oCells = exp_table.rows.item(i).cells;
       if (oCells.item(0).innerHTML == currentExp)
       expData.push([oCells.item(1).innerHTML,oCells.item(2).innerHTML]);
    }
    
    var const_table = document.getElementById('constant_table');

    rowLength = const_table.rows.length;

    var constant;  var initConc;
    
    for (i = 1; i < rowLength; i++){
       var oCells = const_table.rows.item(i).cells;
       if (oCells.item(1).innerHTML == currentExp) {
    	   constant = oCells.item(2).innerHTML;
    	   initConc = oCells.item(3).innerHTML;
       }
       
    }
    
    var calcData = [];
    var N2 = 31;
    var h = 2.5/(N2-1);
    for (var i = 0; i <N2; i++)    {
    	calcData.push([i*h, initConc/Math.exp(i*h*constant)]);
    }
    
  //------------------------------------------------------
	
	var data = [
        { data: expData, label: "exp.", points: { show: true,radius: 4 } },
        { data: calcData, label: "calc.", lines: { show: true } }
    ];
	
	var options = {
			grid: { hoverable: true, clickable: true,margin: 2,
			    labelMargin: 2,
			    axisMargin: 2},
	        xaxis: {
	        	//axisLabel: 'время, мин',  	        	
	        	axisLabelFontSizePixels: 10,
	            axisLabelPadding: 13,
	            axisLabelUseCanvas: false,
	            axisLabelFontFamily: 'Arial'
	        },
	        yaxis: {
	        	
	            //axisLabel: 'C(H2O2), м. доли',	            
	            axisLabelFontSizePixels: 10,
	            axisLabelPadding: 13,
	            axisLabelUseCanvas: false,
	            max: 0.1,
	            min: -0,
	            axisLabelFontFamily: 'Arial'	            
	        }
	    };
	
    var plot = $.plot($("#peroksidPlot2"),data, options);
    function showTooltip(x, y, contents) {
        $('<div id="tooltip">' + contents + '</div>').css( {
            position: 'absolute',
            display: 'none',
            top: y + 5,
            left: x + 5,
            border: '1px solid #fdd',
            padding: '2px',
            'background-color': '#fee',
            opacity: 0.80
        }).appendTo("body").fadeIn(200);
    }
    
	var previousPoint = null;
    $("#peroksidPlot2").bind("plothover", function (event, pos, item) {
    
            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;
                    
                    $("#tooltip").remove();
                    var x = item.datapoint[0].toFixed(4),
                        y = item.datapoint[1].toFixed(4);
                    
                    showTooltip(item.pageX, item.pageY,
                                item.series.label + " of " + x + " = " + y);
                }
            }
            else {
                $("#tooltip").remove();
                previousPoint = null;            
            }
        
    });
};

function showVizual() {
	document.getElementById('peroksidPlot2').style.display      = 'block';
	
	document.getElementById('selectTemperDiv').style.display = 'none';
	document.getElementById('characteristics').style.display = 'none';
	document.getElementById('catComboDiv').style.display     = 'none';
	document.getElementById('mainInfo').style.display    	 = 'none';
	document.getElementById('peroksidPlot').style.display    = 'none';
	
	var catalyst_table = document.getElementById('catalyst_table');

    var rowLength = catalyst_table.rows.length;

    var calcData = []; 
    
    var catVizualCombo = document.getElementById('catVizualCombo');    
    
    for (i = 1; i < rowLength; i++){
       var oCells = catalyst_table.rows.item(i).cells;
       calcData.push([oCells.item(0).innerHTML,oCells.item(1).innerHTML]);
       catVizualCombo.options[i-1] = new Option(oCells.item(1).innerHTML, 
    		   oCells.item(0).innerHTML);
    }    
    
    drawSelectTemperVizualDiv();
    
	document.getElementById('catVizualComboDiv').style.display = 'table-cell';
	document.getElementById('selectTemperVizualDiv').style.display = "table-cell";
};