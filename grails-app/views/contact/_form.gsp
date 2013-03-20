<%@ page import="addressbook.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'addressLine1', 'error')} ">
    <label for="addressLine1">
        <g:message code="contact.addressLine1.label" default="Address Line1"/>

    </label>
    <g:textField name="addressLine1" value="${contactInstance?.addressLine1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'addressLine2', 'error')} ">
    <label for="addressLine2">
        <g:message code="contact.addressLine2.label" default="Address Line2"/>

    </label>
    <g:textField name="addressLine2" value="${contactInstance?.addressLine2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'anniversary', 'error')} required">
    <label for="anniversary">
        <g:message code="contact.anniversary.label" default="Anniversary"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="anniversary" precision="day" value="${contactInstance?.anniversary}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'city', 'error')} ">
    <label for="city">
        <g:message code="contact.city.label" default="City"/>

    </label>
    <g:textField name="city" value="${contactInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'dateOfBirth', 'error')} required">
    <label for="dateOfBirth">
        <g:message code="contact.dateOfBirth.label" default="Date Of Birth"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dateOfBirth" precision="day" value="${contactInstance?.dateOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="contact.email.label" default="Email"/>

    </label>
    <g:textField name="email" value="${contactInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="contact.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${contactInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="contact.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${contactInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phoneNumber', 'error')} ">
    <label for="phoneNumber">
        <g:message code="contact.phoneNumber.label" default="Phone Number"/>

    </label>
    <g:textField name="phoneNumber" value="${contactInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'state', 'error')} ">
    <label for="state">
        <g:message code="contact.state.label" default="State"/>

    </label>
    <g:textField name="state" value="${contactInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'zipCode', 'error')} required">
    <label for="zipCode">
        <g:message code="contact.zipCode.label" default="Zip Code"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="zipCode" type="number" value="${contactInstance.zipCode}" required=""/>
</div>

