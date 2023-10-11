<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.GregorianCalendar,java.util.Calendar"%>
<%
GregorianCalendar currentDate = new GregorianCalendar();
int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>
	&copy; Copyright
	<%=currentYear%> Mike Murach &amp; Associates
</p>


</body>
</html>