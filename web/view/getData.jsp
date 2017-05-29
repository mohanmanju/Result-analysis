
<%@page import="java.sql.*"%>
<%@page import="java.util.Arrays"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%
    
    
    JSONArray data = new JSONArray();
    JSONArray deptGpa = new JSONArray();
    System.out.println("entered1");
     try {
            //processRequest(request, response);
            
            String usn=request.getParameter("usn");
            Class.forName("com.mysql.jdbc.Driver");
        
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/results", "root","raghu");
			PreparedStatement stat = (PreparedStatement) con.prepareStatement("select avg(CGPA),BRANCH from student group by BRANCH");
                        ResultSet rs = stat.executeQuery();
                        //rs.next();
                        System.out.println("entered");
                        while (rs.next()) 
                        {
                           String val=rs.getString("avg(CGPA)");
                           deptGpa.put(val);
                            System.out.println(val);
                            System.out.println(rs.getString("BRANCH"));
                            
                        }
                        data.put(deptGpa);
                        
                        String branch[]={"cs","ec","ee","ei","is"};
                        
                        for(int i=0;i<branch.length;i++){
                        stat = (PreparedStatement) con.prepareStatement("select avg(CGPA) from student where BRANCH=? group by YEAR");
                        stat.setString(1, branch[i]);
                        rs = stat.executeQuery();
                        System.out.println(branch[i]);
                        JSONArray year = new JSONArray();
                         while (rs.next()) 
                        {
                           
                           String val=rs.getString("avg(CGPA)");
                           year.put(val);
                            System.out.println(val);
                            
                            
                        }
                         
                         data.put(year);
                        }
                        
     }
     catch(Exception e){System.out.println("exitied");}
     
     
   
      
      out.print(data);
      //out.print(obj1);
    //out.write();
    out.flush();
%>