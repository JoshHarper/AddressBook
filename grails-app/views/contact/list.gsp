<%@ page import="addressbook.Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-contact" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="addressLine1"
                              title="${message(code: 'contact.addressLine1.label', default: 'Address Line1')}"/>

            <g:sortableColumn property="addressLine2"
                              title="${message(code: 'contact.addressLine2.label', default: 'Address Line2')}"/>

            <g:sortableColumn property="anniversary"
                              title="${message(code: 'contact.anniversary.label', default: 'Anniversary')}"/>

            <g:sortableColumn property="city" title="${message(code: 'contact.city.label', default: 'City')}"/>

            <g:sortableColumn property="dateOfBirth"
                              title="${message(code: 'contact.dateOfBirth.label', default: 'Date Of Birth')}"/>

            <g:sortableColumn property="email" title="${message(code: 'contact.email.label', default: 'Email')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${contactInstanceList}" status="i" var="contactInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "addressLine1")}</g:link></td>

                <td>${fieldValue(bean: contactInstance, field: "addressLine2")}</td>

                <td><g:formatDate date="${contactInstance.anniversary}"/></td>

                <td>${fieldValue(bean: contactInstance, field: "city")}</td>

                <td><g:formatDate date="${contactInstance.dateOfBirth}"/></td>

                <td>${fieldValue(bean: contactInstance, field: "email")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${contactInstanceTotal}"/>
    </div>
</div>
</body>
</html>
