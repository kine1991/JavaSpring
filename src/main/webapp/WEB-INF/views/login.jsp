<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="/resources/bootstrap3/css/common.css" rel="stylesheet"/>
	<link href="/resources/bootstrap3/css/bootstrap.css" rel="stylesheet"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>



<div class="container">
	qwerty
	<form method="POST" action="${contextPath}/login" class="form-signin">
		<h2 class="form-heading">Log in</h2>

		<table>
			<tr><td><input type="text" name="username"/></td></tr>
			<tr><td><input type="password" name="password"/></td></tr>
			<tr><td><input type="checkbox" name="remember-me"/></td>    <td>Remember Me:</td></tr>
			<tr><td><c:if test="${not empty error}">${error}</c:if></td></tr>
			<tr><td><input type="submit" name="submit"></td></tr>
		</table>


		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<%--<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>--%>
		<%--<input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"--%>
			   <%--value="<c:out value="${_csrf.token}"/>"/>--%>
		<a href="/check-user2">Skip</a>
</div>

</form>

</div>




	<%--<form:form method="POST" commandName="user" action="check-user" class="box login">--%>

		<%--<fieldset class="boxBody">--%>

			<%--<form:label path="name">Name:</form:label>--%>
			<%--<form:input path="name" />--%>

			<%--<form:label path="password">Password:</form:label>--%>
			<%--<form:password path="password"/>--%>
			<%--<input type="submit" class="btnLogin" value="login">--%>

		<%--</fieldset>--%>

		<%--<footer>--%>
			<%--<form:checkbox path="admin"/>--%>

			<%--<form:label path="admin">Admin</form:label>--%>
		<%--</footer>--%>

	<%--</form:form>--%>


</body>
</html>