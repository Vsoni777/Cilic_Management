
<%
String user = (String)session.getAttribute("username");
if(user!=null)
{
	out.print("<font color=green>"+user);
}
%>