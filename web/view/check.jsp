<%
    
String user=request.getParameter("uname");
System.out.println(user);
String pass=request.getParameter("pass");
System.out.println(pass);
int user_id=12;
if(user.equalsIgnoreCase("mohan") &&
pass.equals("mohan") )
{
out.print(user_id);
}
else
{
out.print("ERROR");
}
%>