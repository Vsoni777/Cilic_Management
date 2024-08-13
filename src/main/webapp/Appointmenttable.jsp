    <%@page import="com.DAO.Appointment"%>
    
   <%@page import="java.util.ArrayList"%>
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
            	<td><%=ap.getStatus() %></td>
            	</tr>
            	<%
            }
            %>
	
</table>