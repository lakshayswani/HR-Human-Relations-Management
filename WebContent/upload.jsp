<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.*"%>
<%

           int ec = Integer.parseInt(request.getParameter("id")); 
            try 
                {
                              
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
                final int limit = 1024 * 1024 * 1024;
                String saveDir = application.getRealPath("data");
                File f = new File(saveDir);
                f.mkdirs();                                 
                MultipartRequest  mpr = new MultipartRequest(request, application.getRealPath("data"), limit);
               
                       
                
                                 
                String fname = mpr.getOriginalFileName("file");
               int i1 = fname.lastIndexOf(".");
               String s= fname.substring(i1+1);
               System.out.println(s);
               if(s.equals("txt")||s.equals("pdf")||s.equals("docx")||s.equals("doc"))
               
                {
               
                System.out.println("yes");
                               
                PreparedStatement st = con.prepareStatement("insert into PRODUCT_LIST2 values (?,?)");
         
           
         
                 st.setInt(1, ec);
                 st.setString(2, fname);                             
                 
                 
                int i = st.executeUpdate();

                if (i > 0) {
                    
                     RequestDispatcher dispatcher = request.getRequestDispatcher("resumesuccess.jsp");
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


