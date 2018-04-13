<!DOCTYPE html>
<%@ taglib prefix="custom" uri="customTag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>

<title>${storeData.title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="http://www.princeprincy.com/image/data/profile.png"
	rel="icon" />

<!-- CSS Inclusion Start -->
<tiles:useAttribute id="cssList" name="globalCSS"
	classname="java.util.List" />
<c:forEach var="cssfile" items="${cssList}">
	<link rel="stylesheet" href="${cssfile}">
</c:forEach>
<!-- CSS Inclusion End -->

</head>

<body>

	<div class="wrapper">

		<tiles:insert attribute="header" />
		<!-- JSP Inclusion Start -->
		<tiles:useAttribute id="jsplist" name="body"
			classname="java.util.List" />
		<c:forEach var="jspfile" items="${jsplist}">
			<jsp:include page="${jspfile}"></jsp:include>
		</c:forEach>
		<!-- JSP Inclusion End -->
		<tiles:insert attribute="newsletter" />
		<tiles:insert attribute="footer" />

	</div>

	<a class="goto-top" href="#gotop"></a>


	<!-- JS Inclusion Start -->
	<tiles:useAttribute id="jsList" name="globalJS"
		classname="java.util.List" />
	<c:forEach var="jsfile" items="${jsList}">
		<script src="${jsfile}"></script>
	</c:forEach>
	<!-- JS Inclusion End -->

</body>


</html>
