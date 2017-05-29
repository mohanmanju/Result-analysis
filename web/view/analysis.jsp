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
                <a href="#">Department analysis</a>
                <a href="#">Contact US</a>
            </div>

<table id="datatable">
    <thead>
        <tr>
            <th></th>
            <th>Jane</th>
           
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Apples</th>
            <td>3</td>
           
        </tr>
        <tr>
            <th>Pears</th>
            <td>2</td>
                   </tr>
        <tr>
            <th>Plums</th>
            <td>5</td>
            
        </tr>
        <tr>
            <th>Bananas</th>
            <td>1</td>
           
        </tr>
        <tr>
            <th>Oranges</th>
            <td>2</td>
           
        </tr>
    </tbody>
</table>
            
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
         <div id="one">68</div>
               
               <div id="container" style="min-width: 310px; max-width: 600px; height: 400px; margin: 0 auto;"></div>



<script language="JavaScript">
    
  
    
    
  $(function () {
  //local vaiable. This data should be loaded via ajax call or directly pass the ajax result data on success to showcharts function.
	var data1 = [{
            name: 'Tokyo',
            data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
        }, {
            name: 'New York',
            data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
        }, {
            name: 'Berlin',
            data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
        }, {
            name: 'London',
            data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
        }];
        
   function showcharts(data)
   {
       var dt=document.getElementById("one").innerHTML
     Highcharts.chart('container', {
   data: {
        table: 'datatable',
        switchRowsAndColumns: true
    },
    chart: {
        type: 'column'
    },
    title: {
        text: 'Data extracted from a HTML table in the page'
    },
    yAxis: {
        allowDecimals: false,
        title: {
            text: 'Units'
        }
    },
      
    tooltip: {
        formatter: function () {
            return '<b>' + this.series.name + '</b><br/>' +
                this.point.y + ' ' + this.point.name.toLowerCase();
        }
    }
});
   }
   
   $("#btn1").click(function()
{
    alert("entered");
    alert(data);
showcharts(data);
});

  $(document).ready(function(){
             $("#btn").click(function(){
        
      
         $.ajax({
            url:'getData.jsp',
            
            type:'post',
            cache:false,
            
            success:function(data){
               
              alert(data)
              showcharts(data);
            },
            error:function(){
              alert('error');
            }
         }
    );
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