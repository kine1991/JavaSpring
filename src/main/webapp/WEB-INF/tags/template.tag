<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<html>
<head>

    <spring:url value="/resources/css/flex.css" var="flexcss"/>
    <link href="${flexcss}" rel="stylesheet" />

    <!-- Custom CSS -->
    <spring:url value="/resources/css/page.css" var="pagecss"/>
    <link href="${pagecss}" rel="stylesheet" />

    <link href="/resources/bootstrap3/css/bootstrap.css" rel="stylesheet"/>

    <link href="/resources/bootstrap3/style.css" rel="stylesheet"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/bootstrap3/js/bootstrap.js"></script>

</head>
<body>

<spring:url value="/jdbcQueryAllUsers" var="jdbcQueryAllUsers"/>
<spring:url value="/springDataJpa" var="springDataJpa"/>

<jsp:invoke fragment="header"/>







<div class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#responsive-menu">
                <span class="sr-only">Open</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Spring MVC</a>

        </div>

        <div class="collapse navbar-collapse" id="responsive-menu">
            <ul class="nav navbar-nav">

                <sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN', 'ROLE_GUEST')" var="isUser"/>

                <c:if test="${isUser}">
                <li>
                    <ul  style="color: green;"><sec:authentication property="principal.username"/></ul>
                    <ul style="color: gainsboro;"><sec:authentication property="principal.authorities"/></ul>
                    <ul>
                        <form action="<c:url value="/logout"/>" method="post">
                            <input type="submit" value="Logout"/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <%--<sec:csrfInput/>--%>
                        </form>
                    </ul>
                </li>
                 </c:if>

                <c:if test="${!isUser}">
                    <h4>Вы не вошли</h4>
                </c:if>





                    <%--<ul  style="color: green;"><sec:authentication property="principal.username"/></ul>--%>
                    <%--<ul style="color: gainsboro;"><sec:authentication property="principal.authorities"/></ul>--%>



                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown">Tutorial<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="${jdbcQueryAllUsers}">get all users(MySQL)</a></li>
                        <li><a href="${springDataJpa}">Spring MVC и SpringDataJpa</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>











<%--<div id="pageheader">--%>
    <%--<jsp:invoke fragment="header"/>--%>

    <%--<h1>Flexbox</h1>--%>
    <%--<div class="flex-container">--%>
        <%--<spring:url value="/jdbcQueryAllUsers" var="jdbcQueryAllUsers"/>--%>
        <%--<link href="${jdbcQueryAllUsers}" rel="stylesheet" />--%>
        <%--<spring:url value="/getUserById" var="getUserById"/>--%>
        <%--<link href="${getUserById}" rel="stylesheet" />--%>

        <%--<a href="${jdbcQueryAllUsers}" class="flex-element">get all users</a>--%>
        <%--<a href="${getUserById}" class="flex-element">getUserById</a>--%>
        <%--<a href="${delete}" class="flex-element">delete</a>--%>

        <%--<spring:url value="/orm.html" var="orm"/>--%>

    <%--</div>--%>
<%--</div>--%>
<div id="body">
    <jsp:doBody/>
</div>
<div id="pagefooter">
    <jsp:invoke fragment="footer"/>
    Все права защищены
</div>
</body>
</html>