function drawPlotPeroksid() {
	document.getElementById('peroksidPlot').style.display    = 'block';
	document.getElementById('catVizualComboDiv').style.display = 'none';
	document.getElementById('selectTemperVizualDiv').style.display = "none";
	document.getElementById('peroksidPlot2').style.display      = 'none';
	document.getElementById('peroksidPlotActivity').style.display      = 'none';
	
	var x = document.getElementsByName('temperature');
	var curTemp = 0;
    for(var k=0;k<x.length;k++) {
    	if(x[k].checked){
    		curTemp =  x[k].value;
        }
    }
	 var experiment = [];
	 var calc = [];	
	 
	 var catalyst = document.getElementById("catCombo").value; 
	 var R = 8.3144621;
	 var T,C0,C,t;
	 	 
	 switch (catalyst) {
	 case "213":		 
		 T= [30,50,75]; // температура
		 C0 = 0.0769;
		 C = [[C0,0.0727,0.0709,0.0703,0.0691],
			  [C0,0.0709,0.0667,0.0614,0.0486],
			  [C0,0.0556,0.0400,0.0266,0.0129]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0],
		       [0,0.25,0.5,1.0,2.0],
		       [0,0.33,0.5,1.0,2.0]];
		break;
	 case "215":		 
		 T= [30,50,50,50,50,75,75]; // температура
		 C = [[0.0800,0.0769,0.0739], 				// 30
		      [0.0727,0.0515,0.0446,0.0429,0.0344], // 50
		      [0.0745,0.0709,0.0697,0.0597,0.0567], // 50
		      [0.0232,0.0194,0.0167,0.0134],		// 50
		      [0.0745,0.0685,0.0656,0.0544,0.0526],	// 50
			  [0.0685,0.0366,0.0177,0.0048,0.0005], // 75
			  [0.0232,0.0194,0.0156,0.0080,0.0007]];// 75
		 
		 t  = [[0.0,1.0,2.0],						// 30
		       [0.0,0.25,0.5,1.0,2.0],				// 50
		       [0.0,0.25,0.5,1.0,2.0],				// 50
		       [0.0,0.25,1.0,2.0],					// 50
		       [0.0,0.25,0.5,1.25,2.25],			// 50
		       [0.0,0.25,0.5,1.0,2.0],				// 75
		       [0.0,0.25,0.5,1.0,2.0]];				// 75
		break;
	 case "216":	
		 T= [30,50,70]; // температура
		 C0 = 0.0349;
		 C = [[C0,0.0282,0.0254,0.0238,0.0221],
			  [C0,0.0194,0.0188,0.0180,0.0167],
			  [C0,0.0167,0.0067,0.0021,0.0003]];
		 
		 t  = [[0,0.5,1.0,1.5,2.0],
		       [0,0.5,1.0,1.5,2.0],
		       [0,0.5,1.0,1.5,2.0]];
		break;

	 case "651":	
		 T= [35,50,75]; // температура
		 
		 C0 = 0.0656;
		 
		 C = [[C0,0.0608,0.0573,0.0503],
		  [C0,0.0457,0.0277,0.0011],
		  [C0,0.0001]];

		 t  = [[0,0.25,0.5,1.0],
	       [0,0.25,0.5,1.0],
	       [0,0.25]];
		 
		break;
	
	 case "220":	
		 T= [75]; // температура
		 C0 = 0.0632;
		 C = [[C0,0.0271,0.0107,0.0003]];
		 
		 t  = [[0,0.25,0.5,1.0]];
		break;
		
	 case "221":	
		 T= [75]; // температура
		 C0 = 0.0638;
		 C = [[C0,0.0553,0.0463,0.0310,0.0053]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0]];
		break;
		
	 case "222":	
		 T= [75]; // температура
		 C0 = 0.0638;
		 C = [[C0,0.0526,0.0406,0.0254,0.0032]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0]];
		break;
		
	 case "220-A":	
		 T= [75]; // температура
		 C0 = 0.0626;
		 C = [[C0,0.0492,0.0372,0.0096]];
		 
		 t  = [[0,0.25,0.5,1.0]];
		break;
		
	 case "221-A":	
		 T= [75]; // температура
		 C0 = 0.0626;
		 C = [[C0,0.0591,0.0532,0.0417,0.0172]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0]];
		break;
		
	 case "222-A":	
		 T= [75]; // температура
		 C0 = 0.0626;
		 C = [[C0,0.0539,0.0459,0.0304,0.0053]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0]];
		break;
		
	 case "220*":	
		 T= [75]; // температура
		 C0 = 0.0656;
		 C = [[C0,0.0556,0.0446,0.0238]];
		 
		 t  = [[0,0.25,0.5,1.0]];
		break;
		
	 case "221*":	
		 T= [75]; // температура
		 C0 = 0.0656;
		 C = [[C0,0.0638,0.0597,0.0498,0.0293]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0]];
		break;
		
	 case "222*":	
		 T= [75]; // температура
		 C0 = 0.0656;
		 C = [[C0,0.0577,0.0490,0.0341,0.0085]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0]];
		break;
		
	 case "642":	
		 T= [35,50,75]; // температура
		 C0 = 0.0715;
		 C = [[C0,0.0703,0.0691,0.0679,0.0673],
			  [C0,0.0661,0.0614,0.0544,0.0440],
			  [C0,0.0538,0.0452,0.0344,0.0227]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0],
		       [0,0.25,0.5,1.0,2.0],
		       [0,0.25,0.5,1.0,2.0]];
		break;
	 
	 case "655":	
		 T= [35,50,75]; // температура
		 C0 = 0.0715;
		 C = [[C0,0.0697,0.0685,0.0673,0.0661],
			  [C0,0.0638,0.0597,0.0526,0.0412],
			  [C0,0.0492,0.0406,0.0293,0.0177]];
		 
		 t  = [[0,0.25,0.5,1.0,2.0],
		       [0,0.25,0.5,1.0,2.0],
		       [0,0.25,0.5,1.0,2.0]];
		break;
		
	 default:
		break;
	}
	 
	 if (curTemp >= T.length) {
			curTemp = 0;
		}
	 
	 var temp = "";
	 for(var i=0; i<T.length; ++i) {
		 temp += "<input type='radio' name = 'temperature' value='"+i+"' ";
		 if(i == curTemp)
			 temp+=" checked='checked' ";
		 temp+="id='T"+i+"' onclick='drawPlotPeroksid()'><label for='T"+i+"'>T = "
		 +T[i]+" &deg;C</label><br>";
	 }
	 
	 document.getElementById('selectTemperDiv').innerHTML = temp;						
	 
	 // переводим градусы в кельвины
	for (var i = 0; i < T.length; ++i) {
		T[i] += 273.15;		
	}	
	
	var k00;  var E00; 
	
	var k = []; var c00 = [];
	 
	var sumX=0, sumY=0, sumXY=0, sumX2=0;
	var n;
	for (var i=0; i<T.length; i++) {
		sumX = 0; sumY = 0; sumX2 = 0; sumXY = 0;
		n = t[i].length;
		for(var j=0; j<n; j++){
			sumX += t[i][j];
			sumY += Math.log(C[i][j]);
			sumXY += t[i][j]*Math.log(C[i][j]);
			sumX2 += t[i][j]*t[i][j];
		}
		
		k[i] = (sumX*sumY-n*sumXY)/(n*sumX2-sumX*sumX);
		c00[i] = Math.exp((sumY+k[i]*sumX)/n);
		
	}
	
	n = T.length;
	if (n===1) {
		E00 = "недостаточно данных";
		k00 = "недостаточно данных";
	} else {
		sumX = 0; sumY = 0; sumXY=0; sumX2=0;
		for (var i=0; i<n; i++ ) {
			sumX = sumX + (1.0/T[i]);
			sumY += Math.log(k[i]);
			sumXY += (1.0/T[i])*Math.log(k[i]);
			sumX2 = sumX2 + 1.0/(T[i]*T[i]);
		}
	
		var a = (n*sumXY-sumX*sumY)/(n*sumX2 - (sumX*sumX));
		
		E00 = (-R*a);
		k00 = (Math.exp((sumY-a*sumX)/n)).toFixed(4);	
	}
	
	var N2 = 31;    
    
	var con;
	var totalError;
	var kal;
	
	if (typeof(E00) === "string") {
		totalError = "недостаточно данных";
		kal = E00;
		con = k[curTemp];
	} else {
		totalError = F(E00,k00).toFixed(3);
		con = k00*Math.exp(-E00/(R*T[curTemp]));
		kal = (E00*0.2389).toFixed(3);
		E00 = E00.toFixed(3);
		k00 = Math.log(k00).toFixed(3);
	}
	
    var h = 0.5;
    // расчет
    h = 2.5/(N2-1);

    var error = 0;
    for (var i = 0; i <N2; i++)    {
    	calc.push([i*h, analyticSolution(c00[curTemp],con,i*h)]);
    }
	for (var i = 0; i < C[curTemp].length; i++) {
		var analyticSol = analyticSolution(c00[curTemp],con,t[curTemp][i]);
    	error += Math.abs(analyticSol-C[curTemp][i]);
        experiment.push([t[curTemp][i], C[curTemp][i]]);        
    }
	
	var pogr = 0;
	var temp_count = 0;
	for (var i = 0; i < C[curTemp].length; i++) {
		var analyticSol = analyticSolution(c00[curTemp],con,t[curTemp][i]);
		if (Math.abs((analyticSol-C[curTemp][i])/C[curTemp][i]) < 1) {
			pogr += Math.abs((analyticSol-C[curTemp][i])/C[curTemp][i]);
			temp_count++;
		}
    }
	pogr = (pogr*100/temp_count).toFixed(3);
	
	//--------------------------------------------------------
	document.getElementById('characteristics').innerHTML = 
		'<table style="margin-left: 10px;"><tr><td>E</td><td> = '+E00+' (Дж/моль) = '+
		kal +' (кал/моль)' + '</td></tr>'+
		'<tr><td>ln(k0)</td><td> = '+k00+' (1/ч)</td></tr>' +
		'<tr><td>k</td><td> = '+(k[curTemp].toFixed(3)).replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ')+' (1/ч)</td></tr>' +
		'<tr><td>con</td><td> = '+(con.toFixed(4))+' (1/ч)</td></tr>' +
		'<tr><td>c00</td><td> = '+(c00[curTemp].toFixed(4))+' (моль.д.)</td></tr>' +
		'<tr><td>error</td><td> = '+ error.toFixed(3) +'</td></tr>'+
		'<tr><td>отн. погреш.</td><td> = '+ totalError +' %</td></tr>'+
		'<tr><td>погрешность для дан.темп.</td><td> = '+ pogr +' %</td></tr>'+
		'</table>';	
	//------------------------------------------------------	
	function analyticSolution(_C0,_k0,_t) {
		var _C = 0;
		_C = _C0*Math.exp(-_k0*_t); // первый порядок
//		_C = _C0/(_C0*_k0*_t+1); // второй порядок
		return _C;
	}
	
	//----------------------------------------------------
	function F(_E, _k0) {
		var ff = 0; 
		var count = 0;
		for (var i = 0; i < C.length; i++) {
			for ( var j = 0; j < C[i].length; j++) {
				var exper = C[i][j];
				var con = _k0*Math.exp(-_E/(R*T[i]));
				var calc = analyticSolution(c00[i],con,t[i][j]);
					
				if (Math.abs((exper - calc)/calc) < 1) {	
					ff += Math.abs((exper - calc)/calc);
					count++;
				}
			}
		}
		return (ff/count)*100;
	}
	//------------------------------------------------------
		
	var data = [
        { data: experiment, label: "exp.", points: { show: true,radius: 4 } },
        { data: calc, label: "calc.", lines: { show: true } }
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
//	            axisLabelPadding: 13,
	            axisLabelUseCanvas: false,
	            max: 0.1,
	            min: -0,
	            axisLabelFontFamily: 'Arial'	            
	        }
	    };
	
    var plot = $.plot($("#peroksidPlot"),data, options);

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
    $("#peroksidPlot").bind("plothover", function (event, pos, item) {
    
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
function showselectTemperDiv() {
	document.getElementById('selectTemperDiv').style.display = 'table-cell';
	document.getElementById('catComboDiv').style.display     = 'table-cell';
	document.getElementById('characteristics').style.display = 'table-cell';
}
//------------------------------------------------------------------------