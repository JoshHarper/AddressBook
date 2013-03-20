<%@ page import="addressbook.Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-contact" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list contact">

        <g:if test="${contactInstance?.addressLine1}">
            <li class="fieldcontain">
                <span id="addressLine1-label" class="property-label"><g:message code="contact.addressLine1.label"
                                                                                default="Address Line1"/></span>

                <span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue
                        bean="${contactInstance}" field="addressLine1"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.addressLine2}">
            <li class="fieldcontain">
                <span id="addressLine2-label" class="property-label"><g:message code="contact.addressLine2.label"
                                                                                default="Address Line2"/></span>

                <span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue
                        bean="${contactInstance}" field="addressLine2"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.anniversary}">
            <li class="fieldcontain">
                <span id="anniversary-label" class="property-label"><g:message code="contact.anniversary.label"
                                                                               default="Anniversary"/></span>

                <span class="property-value" aria-labelledby="anniversary-label"><g:formatDate
                        date="${contactInstance?.anniversary}"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.city}">
            <li class="fieldcontain">
                <span id="city-label" class="property-label"><g:message code="contact.city.label"
                                                                        default="City"/></span>

                <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${contactInstance}"
                                                                                        field="city"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.dateOfBirth}">
            <li class="fieldcontain">
                <span id="dateOfBirth-label" class="property-label"><g:message code="contact.dateOfBirth.label"
                                                                               default="Date Of Birth"/></span>

                <span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate
                        date="${contactInstance?.dateOfBirth}"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="contact.email.label"
                                                                         default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactInstance}"
                                                                                         field="email"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="contact.firstName.label"
                                                                             default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${contactInstance}"
                                                                                             field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="contact.lastName.label"
                                                                            default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${contactInstance}"
                                                                                            field="lastName"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.phoneNumber}">
            <li class="fieldcontain">
                <span id="phoneNumber-label" class="property-label"><g:message code="contact.phoneNumber.label"
                                                                               default="Phone Number"/></span>

                <span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${contactInstance}"
                                                                                               field="phoneNumber"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.state}">
            <li class="fieldcontain">
                <span id="state-label" class="property-label"><g:message code="contact.state.label"
                                                                         default="State"/></span>

                <span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${contactInstance}"
                                                                                         field="state"/></span>

            </li>
        </g:if>

        <g:if test="${contactInstance?.zipCode}">
            <li class="fieldcontain">
                <span id="zipCode-label" class="property-label"><g:message code="contact.zipCode.label"
                                                                           default="Zip Code"/></span>

                <span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${contactInstance}"
                                                                                           field="zipCode"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${contactInstance?.id}"/>
            <g:link class="edit" action="edit" id="${contactInstance?.id}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
