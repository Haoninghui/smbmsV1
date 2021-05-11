<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--通过表单上传文件
    post：上传的文件没有限制
    get：上传的文件有限制
--%>
<form action="${pageContext.request.contextPath}/jsp/upload.do" method="post" enctype="multipart/form-data">
    上传用户：<input type="text" name="username"> <br>
    <p><input type="file" name="file1"></p>
    <p><input type="submit">|<input type="reset"></p>
</form>
</body>
</html>
