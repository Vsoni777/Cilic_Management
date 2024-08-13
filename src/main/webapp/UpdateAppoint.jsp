<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="com.DAO.Appointment"%>
    
   <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>See details</title>
<link href="assets/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
		<div class="main-wrapper">
		<%@include file="Header.jsp" %>
		<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Dashboard</h2>
						</div>
					</div>
				</div>
			</div>
				<div class="content">
				<%String sms=(String)request.getAttribute("sms");
				if(sms!=null){
					out.println(sms);
				}%>
				<div class="container-fluid">
				<table class="table table-striped">
	<tr>
	<th>s.no</th>
	<th>Doc_id</th>
	<th>First name</th>
	<th>Last name</th>
	<th>phone no</th>
	<th>Appointment</th>
	<th>Status</th>
	</tr>
	<tr>
	    <%
            ArrayList al = (ArrayList) request.getAttribute("allAppoint");
	    if(al!=null&&al.size()>0){
            for(int i=0; i<al.size(); i++)
            {
            	Appointment ap = (Appointment)al.get(i); 
            	%>
            	<tr>
            	<td><%= i %></td>
            	<td><%=ap.getDoc_id() %></td>
            	<td><%=ap.getFname() %></td>
            	<td><%=ap.getLname() %></td>
            	<td><%=ap.getM_no() %></td>
            	<td><%=ap.getApp_date() %></td>
            	<%
            	 if(ap.getStatus().equals("Accept")){%><td Style="color:green;"><%=ap.getStatus() %></td><%
            	 }else if(ap.getStatus().equals("pending")){%><td Style="color:blue;"><%=ap.getStatus() %></td><%
            	 }else{%><td Style="color:red;"><%=ap.getStatus() %></td><%}
            	
            	%>
         		<td><a href="ToUpdateServlet?action=accepted&docid=<%=ap.getDoc_id()%>"><button class="btn btn-rounded btn-outline-info mb-2" name="b1" value="Accept">Accept</button></a></td>
         		<td> <a href="ToUpdateServlet?action=canceled&docid=<%=ap.getDoc_id()%>"><button class="btn btn-rounded btn-outline-info mb-2" name="b1" value="cancel">Cancel</button></a></td>
    
            	</tr>
            	<%
            }
	    }else{%>
	    <tr>	
	    	<td colspan="7">No appointment found</td>
	    	
	    </tr>
	    	<%
	    }
            %>
	
		</table>
		<a href="Doctor-dashbord.jsp">back</a>
		</div>
		</div>
		<%@include file="Footer.jsp" %>
		</div>
</body>
</html>