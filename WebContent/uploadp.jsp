<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.*"%>
<%!String name; %>
<%
int ec = Integer.parseInt(request.getParameter("id"));
            
            try 
                {
                              
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hrsql", "hrsql");
                final int limit = 1024 * 1024 * 1024;
                String saveDir = application.getRealPath("data");
                File f = new File(saveDir);
                f.mkdirs();                                 
                MultipartRequest  mpr = new MultipartRequest(request, application.getRealPath("data"), limit);
               
              
                String fname = mpr.getOriginalFileName("file");
               int i1 = fname.lastIndexOf(".");
               String s= fname.substring(i1+1);
               System.out.println(s);
               if(s.equals("png")||s.equals("gif")||s.equals("jpg")||s.equals("jpeg"))
               
                {
               
                System.out.println("yes");
                              
                PreparedStatement st = con.prepareStatement("insert into PRODUCT_LIST1 values (?,?)");
         
           
         
                 st.setInt(1, ec);
                 st.setString(2,fname);                             
                              
                
                int i = st.executeUpdate();
System.out.print("12");
                if (i > 0) {
                    try
                    {
                    PreparedStatement st1 = con.prepareStatement("Select first_name, last_name from employee where emp_code=?");
                    st1.setInt(1,ec);
                    System.out.print("12");
                    ResultSet rs = st1.executeQuery();
                    System.out.print("12");
                    while(rs.next())
                    {
                    String finame=rs.getString(1);
                     String lname=rs.getString(2);
                     name = finame + " " +lname;
                     request.setAttribute("name",name);
                     System.out.println("name="+name);
                     }
                    }
                    catch(Exception e)
                    {}
                   
                     RequestDispatcher dispatcher = request.getRequestDispatcher("photosuccess.jsp");
                     dispatcher.forward(request, response);
                } else {
                    out.println("not done");
                }
                }
                else {
                    out.println("not done");
            }
            }
            catch (Exception e) {
                out.print("in sql exception" + e.toString());
            }
%>

