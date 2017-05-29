<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Analysis </title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <script src="https://code.highcharts.com/highcharts.js"></script>  
   <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<style type="text/css">
body{

  
  background-image: url('style/resource/ma.jpg');
  background-size:cover;
   display:block;
   
  
  
}

#bgcolor{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(54,54,54,0.65);
}
#button1{
     transition: 0.5s;
 z-index: 300;
  padding: 5px;
   color: #000000;
    background: rgb(242,242,242);
  /* for IE */
display: inline-block;
  width:150px;
  position: relative;
  top:10px;
  margin-left: 30%;
  border-radius: 10px     0      0           10px;
   opacity: .5;
   text-align: center;
   
   font-weight: normal;
   text-shadow: 0.3px 0.3px;
   font-family:"Comic Sans MS", cursive, sans-serif;
  
}

#button2{
  transition: 0.5s;
  padding: 5px;
  /* for IE */
  background: rgb(128,128,128);
  color: #ffffff; 
  display: inline-block;
  width:150px;
  position: relative;
  top:10px;
  
  border-radius: 0     10px      10px           0;
   opacity: .8;
   text-align: center;
   
   font-weight: normal;
   text-shadow: 0.3px 0.3px;
   font-family:"Comic Sans MS", cursive, sans-serif;
  
}

#contents{

  padding: 5px;
  background: rgba(250,250,250,1); /* for IE */
  

  position:absolute;
  width:94%;
  height:70%;
  margin-left: 0;
  margin-top: 5%;
   transition: 0.5s;
  overflow-x: hidden;
  border-radius: 10px     10px      10px           10px;
   opacity: .2;
}



input[type=text]:focus {
    border: 3px solid #555;
}



.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
#toogle{
    position:absolute;
  top:15px;
  left:50px;
}





input[type=text]:focus {
    border: 3px solid #555;
}
#about{
    margin-top: 10%;
    margin-left: 10%;
    width:88%;
  height:auto;
    z-index: 
  400;
    color: white;
    font-family:"Comic Sans MS", cursive, sans-serif;
}

#home{
    transition: 0.5s;
    margin-top: 8%;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
   
<script type="text/javascript">
    
    
         $(document).ready(function () {
    setTimeout(function(){
       closeNav().fadeIn(100);
    }, 100);
});

 $(document).ready(function () {
    $('#datatable').hide();
    $('#btn').hide();
     jQuery('#btn').click();
});
$(function() {
    $('#button1').on('click', function(e) {
        e.preventDefault();
        $('#about').hide();
        $('#home').show();
        commit();
    });
});

$(function() {
    $('#button2').on('click', function(e) {
        e.preventDefault();
        $('#home').hide();
        $('#about').show();
        commit();
    });
});
 jQuery(function(){
       jQuery('#button1').click();
      
    });
function changebutton(id){
	var x=document.getElementById(id).style;
	var y;
	if(id=="button1"){
		//alert("btn1");
               x.backgroundColor = "rgb(201, 201, 201)";
           x.color = "black";
	   document.getElementById("button2").style.backgroundColor = "rgb(66, 66, 66)";
           document.getElementById("button2").style.color = "white";
                //document.getElementById("about").style.display = "hidden";
                
		
	}
	else{
           // alert("btn2");
           x.backgroundColor = "rgb(201, 201, 201)";
           x.color = "black";
	   document.getElementById("button1").style.backgroundColor = "rgb(66, 66, 66)";
           document.getElementById("button1").style.color = "white";
		 //document.getElementById("home").style.display = "hidden";
                //document.getElementById("about").style.display = "";
            
		}
		
	
		
	
	
	
	return true;
	
}
</script>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.getElementById("toogle").innerHTML = "";
    document.getElementById("button1").style.marginLeft = "35%";
    document.getElementById("contents").style.marginLeft = "3%";
    document.getElementById("contents").style.width = "75%";
    
    document.getElementById("home").style.marginTop = "10%";
    document.getElementById("about").style.width = "80%";
    
    
}

function closeNav() {
    document.getElementById("button1").style.marginLeft = "40%";
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.getElementById("toogle").innerHTML = "&#9776;";
    document.getElementById("contents").style.width = "94%";
    document.getElementById("contents").style.marginLeft = "2%";
    
    document.getElementById("home").style.marginTop = "8%";
    document.getElementById("about").style.width = "88%";
    
}
function changebackground()
{var d=new Date();
 var n= d.getHours();
//document.write("valuue of n ",n);
if(n>12){
    document.body.style.backgroundImage = "url('style/resource/ma.jpg')";
        }
        else
            document.body.style.backgroundImage = "url('style/resource/new.jpg')";
        }
</script>


</head>
<body  onload="changebackground()">
    
 <div id="bgcolor">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times</a>
                <a href="http://localhost:8084/Result-analysis/view/main1.html">Home</a>
               <a href="http://localhost:8084/Result-analysis/view/classwise1.html">Classwise Result</a>
                <a href="http://localhost:8084/Result-analysis/view/department.html">Department Result</a>
                
                <a href="#">Contact US</a>
            </div>

            
            <div id="main">
                
                <span style="font-size:30px;cursor:pointer;color: white;" onclick="openNav()" id="toogle"></span>
   
                <div id="button1" onclick="changebutton(this.id);">
                   Recent
                </div>
                <div id="button2" onclick="changebutton(this.id);">
                   About
                </div>
                
                 <div id="contents">
                    
                     
                   
               </div>
               
                <div id="about">
                    <center><p>About Analysis</p></center><br>
                </div>
                  <div id="home" >
         <div id="one"></div>
               
               <div id="container" style="min-width: 310px; max-width: 600px; height: 400px; margin: 0 auto;"></div>



<script language="JavaScript">
    
  
    
    
  $(function () {
  //local vaiable. This data should be loaded via ajax call or directly pass the ajax result data on success to showcharts function.
	
     var option={
    chart: {
        type: 'column'
    },
    title: {
        text: 'Department wise analysis'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        type: 'category'
    },
    yAxis: {
        title: {
            text: 'Average CGPA of each department'
        }

    },
    legend: {
        enabled: false
    },
    plotOptions: {
        series: {
            borderWidth: 0,
            dataLabels: {
                enabled: true,
                format: '{point.y:.1f}%'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.6f}%</b> of total<br/>'
    },

    series: [{
        name: 'Department',
        colorByPoint: true,
        data: [{
            name: 'COMPUTER SCIENCE',
            y: 56.33,
            drilldown: 'CS'
        }, {
            name: 'EC',
            y: 24.03,
            drilldown: 'EC'
        }, {
            name: 'EE',
            y: 10.38,
            drilldown: 'EE'
        }, {
            name: 'IT',
            y: 4.77,
            drilldown: 'IT'
        }, {
            name: 'IS',
            y: 0.91,
            drilldown: 'IS'
        }]
    }],
    drilldown: {
        series: [{
            name: 'Computer Science',
            id: 'CS',
            data: [
               [
                    'I',
                    24.13
                ],
                [
                    'II',
                    17.2
                ],
                [
                    'III',
                    8.11
                ],
                [
                    'IV',
                    5.33
                ]
            ]
        }, {
            name: 'Electronics and communication',
            id: 'EC',
            data: [
                [
                    'I',
                    24.13
                ],
                [
                    'II',
                    17.2
                ],
                [
                    'III',
                    8.11
                ],
                [
                    'IV',
                    5.33
                ]
            ]
        }, {
            name: 'Electrical',
            id: 'EE',
            data:[
                [
                    'I',
                    24.13
                ],
                [
                    'II',
                    17.2
                ],
                [
                    'III',
                    8.11
                ],
                [
                    'IV',
                    5.33
                ]
            ]
        }, {
            name: 'EI',
            id: 'EI',
            data: [
                [
                    'I',
                    24.13
                ],
                [
                    'II',
                    17.2
                ],
                [
                    'III',
                    8.11
                ],
                [
                    'IV',
                    5.33
                ]
            ]
        }, {
            name: 'Iformation Science',
            id: 'IS',
            data:[
                [
                    'I',
                    24.13
                ],
                [
                    'II',
                    17.2
                ],
                [
                    'III',
                    8.11
                ],
                [
                    'IV',
                    5.33
                ]
            ]
        }]
    }
}
        
   function showcharts(data)
   {
      
  
   }
   
   

  $(document).ready(function(){
            
        
      //alert("sds");
         $.ajax({
            url:'getData.jsp',
            dataType: 'json',
            type:'post',
            cache:false,
            
            success:function(data1){
               var i=0;
              //alert(parseFloat(data1[0][1]))
             for(i=0;i<data1[0].length;i++){
                 option.series[0].data[i].y=parseFloat(data1[0][i]); 
             }
           
          var year=['I','II','III','IV'];
          for(i=1;i<data1.length;i++){
                 for(var j=0;j<data1[i].length;j++)
                 {
                        var ar1=[year[j],data1[i][j]];
                        option.drilldown.series[i-1].data[j][1]=parseFloat(data1[i][j]);
                 }
             }
            var yr=[[10]];
           //var ar=[yr,9];
            //option.drilldown.series[0].data[0][1]=parseInt(data1[0][1]);
        
            
              Highcharts.chart('container',option );
            },
            error:function(){
              alert('error');
            }
         }
    );


        });

 });
</script>
<input type="button" value="get"  id="btn" >
               </div>
            </div>
       
         </div>
</body>
</html>