<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>New Book Page</title>
<%session = request.getSession(false);if(session.getAttribute("AdminName")==null){response.sendRedirect("adminLogin.action");}%>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h3>New Books Form</h3>
	<s:form action="addBooks" method="POST" enctype="multipart/form-data">
		<s:textfield name="bookNumber" label="Book Number" />
		<s:textfield name="isbn" label=" ISBN" />
		<s:textfield name="bookName" label="Book Name" />
		<s:select name="bookTypeId" list="bookTypes" listKey="id" listValue="bookType" label="Book Type" />
		<s:textfield name="author" label="Author" />
		<s:textfield name="bookPress" label="Press" />
		<s:textfield name="language" label="Language" />
		<s:textfield name="price" label="Price" />
		<s:textfield name="pages" label="Pages" />
		<s:textarea name="bookDiscription" label="Description" />
		<s:file name="bookImageFile" label="Image File" />
		<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
		<script type="text/javascript" src="../js/jquery-ui.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#addBooks_publishDate").datepicker();
			});
		</script>
		<s:textfield name="publishDate" label="Publish Date" readonly="true"></s:textfield>
		<s:textfield name="bookSales" label="Sales" />
		<s:submit value="Submit" />
	</s:form>
</body>
</html>