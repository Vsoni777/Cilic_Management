<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String sms=(String)request.getAttribute("sms");
if(sms!=null){
	out.println(sms);
}%>
	<form action="Createuser" method="post">
		username:<input type="text" name="username"><br>
		password:<input type="text" name="pass"><br>
		<button type="submit"
			class="btn btn-primary submit-btn submit-section submit-btn-bottom">Add
			details</button>


	</form>
</body>
</html>