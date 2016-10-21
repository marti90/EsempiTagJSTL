<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>
 <h1>Esempi</h1>
 
<br>
      <h3>c:out</h3> 
      <c:set var="Income" scope="session" value="${4000*4}"/>  
      <c:out value="${Income}"/>
      <c:out value="${'<tag> , &'}"/>

<br>
      <h3>c:set</h3> 
      <h4>Sets the result of an expression evaluation in a 'scope'</h4>
      <c:set var="salary" scope="session" value="${2000*2}"/>
      <c:out value="${salary}"/>

<br>
      <h3>c:remove</h3> 
      <h4>Removes a scoped variable (from a particular scope, if specified).</h4>
      <c:set var="salary" scope="session" value="${2000*2}"/>
      <p>Before Remove Value: <c:out value="${salary}"/></p>
      <c:remove var="salary"/>
      <p>After Remove Value: <c:out value="${salary}"/></p>

<br>
      <h3>c:catch</h3>
      <h4>Catches any Throwable that occurs in its body and optionally exposes it.</h4>
      <c:catch var ="catchException">
      <% int x = 5/0;%> 
      </c:catch> 
      <c:if test = "${catchException != null}"> 
      <p>The exception is : ${catchException} <br /> 
      There is an exception: ${catchException.message}</p> 
      </c:if> 
      
<br>
      <h3>c:if</h3> 
      <h4>Simple conditional tag which evalutes its body if the supplied condition is true.</h4>
      <c:set var="salary" scope="session" value="${2000*2}"/>
      <c:if test="${salary > 2000}">
      <p>My salary is: <c:out value="${salary}"/><p>
      </c:if>      
  
<br>
      <h3>c:forEach</h3> 
      <h4>The basic iteration tag, accepting many different collection types and supporting subsetting and other functionality .</h4>
      <c:forEach var="i" begin="1" end="5">
      Item <c:out value="${i}"/><p>
      </c:forEach>

<br>
      <h3>c:forToken</h3> 
      <h4>Iterates over tokens, separated by the supplied delimeters.</h4>
      <c:forTokens items="Zara,nuha,roshy" delims="," var="name">
      <c:out value="${name}"/><p>
      </c:forTokens>

<br>
      <h3>c:choose c:when c:otherwise</h3> 
      <h4>Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by when and otherwise</h4>
      <h4>Subtag of choose that includes its body if its condition evalutes to 'true'.</h4>
      <h4>Subtag of choose that follows when tags and runs only if all of the prior conditions evaluated to 'false'.</h4>
      <c:set var="salary" scope="session" value="${2000*2}"/>
      <p>Your salary is : <c:out value="${salary}"/></p>
      <c:choose>
      <c:when test="${salary <= 0}">
           Salary is very low to survive.
      </c:when>
      <c:when test="${salary > 1000}">
           Salary is very good.
      </c:when>
      <c:otherwise>
           No comment sir...
      </c:otherwise>
      </c:choose>
      
<br>
           
           <h3>c:import</h3> 
           <h4>Retrieves an absolute or relative URL and exposes its contents to either the page, a String in 'var', or a Reader in 'varReader'.</h4>
<%--       <c:import var="data" url="http://www.tutorialspoint.com"/> --%>
<%--       <c:out value="${data}"/> --%>

<br>
           <h3>c:param</h3> 
           <h4>Adds a parameter to a containing 'import' tag's URL.</h4>
<%--       <c:url value="/index.jsp" var="myURL"> --%>
<%--       <c:param name="trackingId" value="1234"/> --%>
<%--       <c:param name="reportType" value="summary"/> --%>
<%--       </c:url> --%>
<%--       <c:import url="${myURL}"/> --%>
      
<br>
           <h3>c:redirect</h3> 
           <h4>Redirects to a new URL.</h4>
<%--       <c:redirect url="http://www.photofuntoos.com"/> --%>
      
<br>
      
<p>





</body>
</html>