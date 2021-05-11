<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Login</title>
    <link type="text/css" rel="stylesheet" href="./css/style.css" />
    <script type="text/javascript">
	/* if(top.location!=self.location){
	      top.location=self.location;
	 } */
    </script>
</head>
<body class="login_bg">
    <section class="loginBox">
        <header class="loginHeader">
            <h1>Precision Medicine Matching System</h1>
        </header>
        <section class="loginCont">
	        <form class="loginForm" action="${pageContext.request.contextPath}/login.do"  name="actionForm" id="actionForm"  method="post" >
				<div class="info">${error}</div>
				<div class="inputbox">
                    <label for="userCode">User</label>
					<input type="text" class="input-text" id="userCode" name="userCode" placeholder="Please input the username" required/>
				</div>	
				<div class="inputbox">
                    <label for="userPassword">Password</label>
                    <input type="password" id="userPassword" name="userPassword" placeholder="Please input the password" required/>
                </div>	
				<div class="subBtn">
					
                    <input type="submit" value="Submit"/>
                    <input type="reset" value="Reset"/>
                </div>	
			</form>
        </section>
    </section>
</body>
</html>
