<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>

<div class="container createPerson">
<div>
	<h3>Add Contact</h3>
	<img id="addClientImg" src="https://i.imgur.com/ib3sAyK.png" height=200 alt="add client image">
</div>
	<c:if test="${fn:length(errors) gt 0}">
        <p>Please correct the following errors in your submission:</p>
        <ul>
            <c:forEach items="${errors}" var="error">
                <li>${error}</li>
            </c:forEach>
        </ul>
    </c:if>
    <form class="personForm" action="${pageContext.request.contextPath}/person/create" method="POST">
        <br/>
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" value="${person.firstName}"/>
        <br/>
        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" value="${person.lastName}"/>
        <br/>
        <label for="emailAddress">Email Address:</label>
        <input type="text" name="emailAddress" value="${person.emailAddress}"/>
        <br/>
        <label for="streetAddress">Street Address:</label>
        <input type="text" name="streetAddress" value="${person.streetAddress}"/>
        <br/>
        <label for="city">City:</label>
        <input type="text" name="city" value="${person.city}"/>
        <br/>
        <label for="state">State:</label>
        <input type="text" name="state" value="${person.state}"/>
        <br/>
        <label for="zipCode">Zip Code:</label>
        <input type="text" name="zipCode" value="${person.zipCode}"/>
        <br/>
        <label for="clientId">Company:</label> 
		<select name="clientId">
			<c:if test="${fn:length(clients) gt 0}">
				<c:forEach items="${clients}" var="client">
					<option value="${client.clientId}">${client.companyName}</option>
				</c:forEach>
			</c:if>
		</select>
        <br/>
        <input type="submit" name="Submit" value="Submit"/>
    </form>
</div>
    