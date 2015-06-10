<%@ tag description="Student Page for feedback sessions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib tagdir="/WEB-INF/tags/student" prefix="ts" %>
<%@ attribute name="pageTitle" required="true" %>
<%@ attribute name="jsIncludes" %>
<%@ attribute name="bodyTitle" required="true" %>
<t:page pageTitle="${pageTitle}" bodyTitle="${bodyTitle}">
    <jsp:attribute name="jsIncludes">
        ${jsIncludes}
    </jsp:attribute>
    <jsp:attribute name="navBar">
	    <c:choose>
            <c:when test="${not data.headerHidden}">
                <ts:navBar />
                <ts:studentMessageOfTheDay />
            </c:when>
            <c:when test="${data.preview}">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <h3 class="text-center">Previewing Session as Student <c:out value="${data.studentToViewPageAs.name}" /> (<c:out value="${data.studentToViewPageAs.email}" />)</h3>
                </nav>
            </c:when>
            <c:when test="${data.moderation}">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <h3 class="text-center">Moderating Responses for Student <c:out value="${data.studentToViewPageAs.name}" /> (<c:out value="${data.studentToViewPageAs.email}" />)</h3>
                </nav>
            </c:when>
        </c:choose>
    </jsp:attribute>
    <jsp:body>
        <jsp:doBody />
    </jsp:body>
</t:page>