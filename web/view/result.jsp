<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USN Result</title>

<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<style type="text/css">
body{

  
  background-image: url('view/style/resource/ma.jpg');
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

#fill{
    z-index: 500;
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


#marks {
    border-collapse: collapse;
    width: 88%;
    position: absolute;
    margin-top: 2%;
  margin-left: 5%;
  transition: 0.5s;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;color:#000000 ;}
tr:nth-child(odd){background-color: #242426;color: #fefefe;}
th {
    background-color: #02fcdf;
  
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
#names{
    color:white;
    z-index: 600;
}




</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
   
<script type="text/javascript">
    
  
    
     $(document).ready(function () {
    setTimeout(function(){
       closeNav().fadeIn(500);
    }, 500);
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
    
    
    document.getElementById("marks").style.width = "70%";
    document.getElementById("marks").style.marginLeft = "6%";
    
    
}

function closeNav() {
    document.getElementById("button1").style.marginLeft = "40%";
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.getElementById("toogle").innerHTML = "&#9776;";
    document.getElementById("contents").style.width = "94%";
    document.getElementById("contents").style.marginLeft = "2%";
    
    document.getElementById("marks").style.marginLeft = "5%";
    document.getElementById("marks").style.width = "88%";
}
function changebackground()
{var d=new Date();
 var n= d.getHours();
//document.write("valuue of n ",n);
if(n>12){
    document.body.style.backgroundImage = "url('view/style/resource/ma.jpg')";
        }
        else
            document.body.style.backgroundImage = "url('view/style/resource/new.jpg')";
        }
</script>
</head>
<body onload="changebackground()" >
                       

        <div id="bgcolor">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times</a>
                <a href="http://localhost:8084/Result-analysis/view/main1.html">Home</a>
                <a href="http://localhost:8084/Result-analysis/view/classwise1.html">Classwise Result</a>
                <a href="http://localhost:8084/Result-analysis/view/department.html">Department Result</a>
                <a href="#">Department analysis</a>
                <a href="#">Contact US</a>
            </div>


            
            <div id="main">
                
                <span style="font-size:30px;cursor:pointer" onclick="openNav()" id="toogle"></span>
   
                <div id="button1" onclick="changebutton(this.id);">
                   Recent
                </div>
                <div id="button2" onclick="changebutton(this.id);">
                   About
                </div>
                
                 <div id="contents">
                    
                     
                   
               </div>
                
                 <div id="about">
                     <p><center>About Student</center>
                    </p><br>
                </div>
                
                

                
                
                  <div id='home'>
                   <% ArrayList details=(ArrayList)request.getAttribute("details");
  String name=details.get(7).toString();
  String usn=details.get(8).toString();
  String cgpa=details.get(9).toString();
  
   String subjects[]=details.get(6).toString().split(",");
   %>
   <br>
   <br>
   <br><div id='names'>
   <center><h1><%=name%></h1></center>
   <center><h4>(<%=usn%>)</h4></center>
   <h2><center>CGPA-<%=cgpa%></center></h2>
   </div>
   
                   <table id='marks'>
  <tr>
      <th>Subject</th>
                   <th>Grade</th>
  </tr>
  
  <%
  for(int i=0;i<subjects.length;i++)
  {
     
  %>
  <tr>
     
    <td><%=subjects[i] %></td>
     <td><%=details.get(i) %></td>
    
  </tr>
  <% }%>
 
</table>
  
               </div>
              
            </div>
       
         </div>

</body>
</html>