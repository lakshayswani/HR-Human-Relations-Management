<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Human Resource Solution</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery.jcarousel.css" type="text/css" media="all" />
<!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<link rel="shortcut icon" href="css/images/favicon.ico" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="js/func.js"></script>

<script type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</script>
</head>
<body onload="noBack();" 	onpageshow="if (event.persisted) noBack();" onunload="">





<div class="shell">
  <div class="border">
    <div id="header">
      <h1 id="logo"><a href="#" class="notext">HR SOLUTION CORP.</a></h1>
      <div class="socials right">
        <ul>
          <li><a href="#" class="rss">RSS</a></li>
          <li><a href="#" class="fb">Facebook</a></li>
          <li class="last"><a href="#" class="twit">Twitter</a></li>
        </ul>
      </div>
      <div class="cl">&nbsp;</div>
    </div>
    <div id="navigation">
      <ul>
        <li><a href="register.jsp" class="active">Registration</a></li>
        <li><a href="search.jsp">Search</a></li>
        <li><a href="viewdelete.jsp">Details</a></li>
        <li><a href="payroll.jsp">Payroll</a></li>
        
        <li><a href="adminleave.jsp">Leave Sanction</a></li>
        <li><a href="Logout.jsp">Logout</a></li>
      </ul>

      <div class="cl">&nbsp;</div>
    </div>
    <div id="navigation">
      <ul>
        <li><a href="register.jsp" class="active">Registration</a></li>
        <li><a href="search.jsp">Search Employees</a></li>
        <li><a href="viewdelete.jsp">View or Delete Employees</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="adminleave.jsp">Leave Sanction</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <div class="cl">&nbsp;</div>
    </div>
    <div class="slider">
      <div class="slider-nav"> <a href="#" class="left notext">1</a> <a href="#" class="left notext">2</a> <a href="#" class="left notext">3</a> <a href="#" class="left notext">4</a>
        <div class="cl">&nbsp;</div>
      </div>
      <ul>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
      </ul>
    </div>
    <div id="main">
         <div id="content" class="left">
        <div class="highlight">    
          <h3>All Employees Training Registration approval</h3>
           <%! String name,cid;
      int flag=0;  int ecode; %>
    
<table width="820" height="156" border="1">
  <tr>
    <th width="200" scope="col">Name</th>
    <th width="272" scope="col">Employee Code </th>
    <th width="272" scope="col">Course Id </th>
    <th width="326" scope="col">View and Sanction</th>
   
  </tr>
 
    <%
     String code=request.getParameter("id");
       int ecode=Integer.parseInt(code);
       
       
        
        String cid=request.getParameter("cid");
     
        
   
     /*
        try
          {
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hrsql","hrsql"); 
          // Connection con=ConnectionProvider.getCon();
           String str="Update EMPTRAININGREG Set status=? where course_id=? and emp_code=?";
           PreparedStatement st=con.prepareStatement(str); 
           st.setString(1,"REGISTERED");
           st.setString(2,cid);
           st.setInt(3,ecode);
           int x=st.executeUpdate();
           Gmail.TEXT ="We confirm your registrations for the training module " + cid;
           Gmail.TO =(String)(request.getAttribute("email"));
           Gmail.send();
          
          if(x>0)
          {
           Gmail.TEXT ="We confirm your registrations for the training module " + cid;
           Gmail.TO =(String)(request.getAttribute("email"));
           Gmail.send();
          
          String str1="Select first_name,last_name,emp_code,course_id from EMPTRAININGREG where status=?";
           PreparedStatement st1=con.prepareStatement(str1);
           st1.setString(1,"PENDING");
         
           ResultSet rs=st1.executeQuery();
          while(rs.next())
          {
          flag=1;
           name= rs.getString(1)+" "+rs.getString(2);
           ecode= rs.getInt(3) ;
           cid=rs.getString(4);
           
   */
          // request.setAttribute("ecode",empcode);
           %>
         
         <tr>
         <td width="200" scope="col" align="center"><%=name%></td>
         <td width="200" scope="col" align="center"><%=ecode%></td>
         <td width="200" scope="col" align="center"><%=cid%></td>
         <td width="200" scope="col" align="center">
         
        
        <a href="approve.jsp?id=<%=ecode%>&cid=<%=cid %>">Click here to confirm the registration</a>
         </td>
         
         </tr>    
              
 
           <% 
     /*      }
           if(flag==0)
           {
           %>
           <%="No other pending registrations present for approval !!"%>
           <%
           }
           }
           }
        catch(Exception e)
         {
    System.out.println(e);
         }
       */  %>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
 
 
  </table>
  
    
    
    
    
    
    
    
    
 </div>
        <div class="projects">
          <h3>Latest projects</h3>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project01.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project02.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project03.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project04.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
        </div>
      </div>
      
          
      </div>
      <div class="cl">&nbsp;</div>
    </div>
    <div class="shadow-l"></div>
    <div class="shadow-r"></div>
    <div class="shadow-b"></div>
  </div>
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
    <p class="right"><a href="http://www.free-css.com/">Free CSS Templates</a> by <a href="http://chocotemplates.com">Chocotemplates.com</a></p>
    <div class="cl"></div>
  </div>

</body>
</html>