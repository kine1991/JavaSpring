<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<t:template>

    <jsp:attribute name="header">
      <%--<h1>Welcome</h1>--%>
    </jsp:attribute>
    <jsp:attribute name="footer">
      <p id="copyright">Copyright 1927, Future Bits When There Be Bits Inc.</p>
    </jsp:attribute>
    <jsp:body>

        <%--<div>--%>
            <%--<c:if test="${!empty searchResult}">--%>
                <%--<table class="tg">--%>
                    <%--<tr>--%>
                        <%--<th width="80">id</th>--%>
                        <%--<th width="120">first name</th>--%>
                        <%--<th width="120">last name</th>--%>
                        <%--<th width="120">speciality</th>--%>
                        <%--<th width="120">timestamp</th>--%>
                    <%--</tr>--%>
                    <%--<c:forEach items="${searchResult}" var="searchResult1">--%>
                        <%--<tr>--%>
                            <%--<td>${searchResult1.id}</td>--%>
                            <%--<td><a>${searchResult1.firstName}</a></td>--%>
                            <%--<td>${searchResult1.lastName}</td>--%>
                            <%--<td>${searchResult1.specialty}</td>--%>
                            <%--<td>${searchResult1.timestamp}</td>--%>
                        <%--</tr>--%>
                    <%--</c:forEach>--%>
                <%--</table>--%>
            <%--</c:if>--%>




        <h1>__________________________</h1>

        <form:form action="/employeeSearch/{char}">
            <input type="text"  name="char" placeholder="input firstName"/>
            <input type="submit" value="Search"/>
            ${message}
        </form:form>


        <c:if test="${!empty searchResult}">
            ${searchResult}

        </c:if>
        <c:if test="${empty searchResult}">
            Not found!
        </c:if>





        <h1>__________________________</h1>


        <div>

            <c:if test="${!empty listEmployee}">
                <table class="tg">
                    <tr>
                        <th width="80">id</th>
                        <th width="120">first name</th>
                        <th width="120">last name</th>
                        <th width="120">speciality</th>
                        <th width="120">timestamp</th>
                        <th width="60">Edit</th>
                        <th width="60">Delete</th>
                    </tr>
                    <c:forEach items="${listEmployee}" var="employee">
                        <tr>
                            <td>${employee.id}</td>
                            <td><a>${employee.firstName}</a></td>
                            <td>${employee.lastName}</td>
                            <td>${employee.specialty}</td>
                            <td>${employee.timestamp}</td>
                            <td><a href="<c:url value='/editEmployee/${employee.id}'/>">Edit</a></td>
                            <td><a href="<c:url value='/removeEmployee/${employee.id}'/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>



            <h1>Add a Employee</h1>


            <c:url var="addAction" value="/springDataJpa/add"/>
            <form:form action="${addAction}" commandName="employee" method="post">
                <table class="tg">
                    <c:if test="${!empty employee.firstName}">
                        <tr>
                            <td>
                                <form:label path="id">
                                    <spring:message text="ID"/>
                                </form:label>
                            </td>
                            <td>
                                <form:input path="id" readonly="true" size="8" disabled="true"/>
                                <form:hidden path="id"/>
                            </td>
                        </tr>
                    </c:if>

                    <td>
                        <form:label path="firstName">
                            <spring:message text="firstName"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="firstName"/>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="lastName">
                                <spring:message text="lastName"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="lastName"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="specialty">
                                <spring:message text="specialty"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="specialty"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <c:if test="${!empty employee.firstName}">
                                <input type="submit"
                                       value="<spring:message text="Edit employee"/>"/>
                            </c:if>
                            <c:if test="${empty employee.lastName}">
                                <input type="submit"
                                       value="<spring:message text="Add employee"/>"/>
                            </c:if>
                        </td>
                    </tr>

                </table>
            </form:form>



        </div>



    </jsp:body>
</t:template>