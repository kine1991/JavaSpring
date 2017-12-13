<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:template>
    <jsp:attribute name="header">
      <%--<h1>Welcome</h1>--%>
    </jsp:attribute>
    <jsp:attribute name="footer">
      <p id="copyright">Copyright 1927, Future Bits When There Be Bits Inc.</p>
    </jsp:attribute>
    <jsp:body>
        <div>
            <c:forEach items="${resultObject}" var="x" >
                <p class="flex-element">${x.id} <br>${x.name} <br>${x.password} <br>Дата посещения: ${x.timestamp} <br></p>
            </c:forEach>
        </div>
    </jsp:body>
</t:template>





<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
    <%--<link href="<c:url value="/resources/css/flex.css" />" rel="stylesheet">--%>
    <%--<link href="<c:url value="/resources/css/page.css" />" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>


<%--<h1>Flexbox</h1>--%>
<%--<div class="flex-container">--%>
    <%--<a href="${jdbcQueryAllUsers}" class="flex-element">get all users</a>--%>
    <%--<a href="${getUserById}" class="flex-element">getUserById</a>--%>
    <%--<a href="${delete}" class="flex-element">delete</a>--%>
<%--</div>--%>

<%--<div>--%>

    <%--<c:forEach items="${resultObject}" var="x" >--%>
        <%--<p class="flex-element">${x.id} <br>${x.name} <br>${x.password} <br>Дата посещения: ${x.timestamp} <br></p>--%>
    <%--</c:forEach>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>

