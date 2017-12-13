<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security" %>--%>


<t:template>
    <jsp:attribute name="header">
      <%--<h1>Welcome</h1>--%>
    </jsp:attribute>
    <jsp:attribute name="footer">
      <p id="copyright">Copyright 1927, Future Bits When There Be Bits Inc.</p>
    </jsp:attribute>
    <jsp:body>
        <%--<div>--%>
            <%--<security:authorize access="hasAnyRole('ROLE_USER')" var="isUSer"/>--%>


            <%--<security:authentication property="principal.username"/> с ролью:--%>
            <%--<b><security:authentication property="principal.authorities"/></b>--%>


            <%--<c:if test="${isUSer}">--%>
                <%--<li style="padding-top: 15px; padding-bottom: 15px; color: green">--%>
                    <%--Вы вошли как:--%>
                    <%--<security:authentication property="principal.username"/> с ролью:--%>
                    <%--<b><security:authentication property="principal.authorities"/></b>--%>

                <%--</li>--%>
                <%--<li> <a style="color: red;" href="<c:url value="/logout"/>">Logout</a> </li>--%>
            <%--</c:if>--%>

        <%--</div>--%>
    </jsp:body>
</t:template>









<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>--%>
<%--<html>--%>
<%--<head>--%>

<%--<title>Home</title>--%>
    <%--<link href="<c:url value="/resources/css/flex.css" />" rel="stylesheet">--%>
    <%--<link href="<c:url value="/resources/css/page.css" />" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>



<%--<c:url value="/jdbcQueryAllUsers" var="jdbcQueryAllUsers" />--%>
<%--<c:url value="/getUserById" var="getUserById" />--%>
<%--&lt;%&ndash;<c:url value="/delete" var="delete" />&ndash;%&gt;--%>


<%--<h1>Flexbox</h1>--%>
<%--<div class="flex-container">--%>
    <%--<a href="${jdbcQueryAllUsers}" class="flex-element">get all users</a>--%>
    <%--<a href="${getUserById}" class="flex-element">getUserById</a>--%>
    <%--<a href="${delete}" class="flex-element">delete</a>--%>
<%--</div>--%>






<%--<p>Hello ${user.name}!</p>--%>
<%--<p>Your password is  ${user.password}!</p>--%>
<%--<p>Admin ${user.admin}</p>--%>

<%--<div class="col-md-9">--%>
    <%--<c:if test="${not empty resultObject}">--%>
        <%--Result:--%>
        <%--&lt;%&ndash;<c:if test="${resultObject == 'true'}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<font color="green"><b>${resultObject}</b></font>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:if test="${resultObject == 'false'}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<font color="red"><b>${resultObject}</b></font>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
        <%--<c:if test="${resultObject !='true' and resultObject != 'false'}">--%>
            <%--<p class="flex-element">${resultObject}</p>--%>
            <%--<br />--%>
        <%--</c:if>--%>
    <%--</c:if>--%>
    <%--<p>${resultObject}</p>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
