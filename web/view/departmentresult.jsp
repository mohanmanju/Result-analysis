<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Result</title>

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
  height:75%;
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
    width: 85%;

    position: absolute;
    margin-top: 3%;
  margin-left: 7%;
  transition: 0.5s;
}
#marks1 {
    border-collapse: collapse;
    width: 70%;
     transition: 2.5s;
    position: absolute;
    margin-top: 3%;
  margin-left: 4%;
 
}
.marksdiv{
    height:5%;
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
    z-index: 400;
    color: white;
    font-family:"Comic Sans MS", cursive, sans-serif;
}

.scroll{
    min-height: 67.5%;
    width: 95%;
    position: absolute;
    margin-left: 0;
    padding: 0;
    overflow-y: scroll;

}

 #scrollid::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	border-radius: 10px;
	background-color: #F5F5F5;
}
#scrollid::-webkit-scrollbar
{
	width: 5px;
	background-color: #F5F5F5;
}

#scrollid::-webkit-scrollbar-thumb
{
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	background-color: #555;
}



/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 20%;
    border-radius: 50%;
    float: left;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    animation-name: stretch;
    /*display: none;  Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.8); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 1% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
    height: 80%;
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 1s;
    animation: animatezoom 1s;
    transition: all 5s ease-in-out;
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
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
    
    


 jQuery(function(){
       $('#id01').hide();
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
    document.getElementById("marks").style.height = "2%";
    document.getElementById("marks").style.marginLeft = "7%";


}

function closeNav() {
    document.getElementById("button1").style.marginLeft = "40%";
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.getElementById("toogle").innerHTML = "&#9776;";
    document.getElementById("contents").style.width = "94%";
    document.getElementById("contents").style.marginLeft = "2%";

    document.getElementById("marks").style.marginLeft = "6%";
    document.getElementById("marks").style.width = "85%";
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
<body  onload="changebackground()">


        <div id="bgcolor">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times</a>
                <a href="http://localhost:8084/Result-analysis/view/main1.html">Home</a>
                <a href="http://localhost:8084/Result-analysis/view/classwise1.html">Classwise Result</a>
                <a href="http://localhost:8084/Result-analysis/view/department.html">Department Result</a>
                <a href="http://localhost:8084/Result-analysis/view/analysis.jsp">Department analysis</a>
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
                     <p><center>About Department</center></p><br>
                </div>





                  <div id='home'>
                   <% ArrayList USN=(ArrayList)request.getAttribute("USN");
                       ArrayList NAME=(ArrayList)request.getAttribute("NAME");
                       ArrayList CGPA=(ArrayList)request.getAttribute("CGPA");




   %>
   <br>
   <br>
   <br>
   <center><h2 Style="color:white">Departmentwise results</h2></center>
  <div class='scroll' id='scrollid'>
                   <table id='marks' class='marksdiv'>

  <tr>
      <th>NAME</th>
      <th>USN</th>
          <th>CGPA</th>

  </tr>

  
  <%
  for(int i=0;i<USN.size();i++)
  {

  %>
  <tr id='scroll'>
      <td  class="1" id="<%=USN.get(i) %>" onclick="show()"><a href="#"><%=NAME.get(i) %></a></td>
      <td  class="1" id="<%=USN.get(i) %>" ><%=USN.get(i) %></td>
     <td  class="1" id="<%=USN.get(i) %>" ><%=CGPA.get(i) %></td>

  </tr>
 
  <% }%>


</table>
  </div>
   <div id="id01" class="modal">

  <div class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <!-- <img src="img_avatar2.png" alt="Avatar" class="avatar">-->   
    </div>

    <div class="container" id="student">
    
   
                     
    </div>

    
  </div>
</div>

               </div>

            </div>

         </div>
  
  <script>
   


         


        $(".1").click(function(){
        
        var id = $(this).attr('id');
         $.ajax({
            url:'test',
            data:{name:'abc',usn:id},
            type:'post',
            cache:false,
            success:function(data){
               
               $('#student').html(data); 
               $('#id01').show();
            },
            error:function(){
              alert('error');
            }
         }
    );
}
);
            
            


  </script>

</body>
</html>
