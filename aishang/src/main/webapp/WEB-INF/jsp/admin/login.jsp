<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>登陆</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--BootstrapValidator CSS-->
    <link rel="stylesheet" href="css/bootstrapValidator.css"/>

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">


  </head>
  <body>

    <div class="container">

      <form id="form-signin" method="post">

        <h2 class="form-signin-heading">请登录</h2>
        <div class="form-group">
          <input name="username"  type="text" class="form-control form-signin-name" placeholder="User name" autofocus>
        </div>
        <div class="form-group">
          <input name="password"  type="password" class="form-control form-signin-password" placeholder="Password">
        </div>
        <div class="alert alert-danger admin-login-alert">
          <strong class="admin-login-alert-msg"></strong>
        </div>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住我
        </label>
        <button class="btn btn-lg btn-primary btn-block " id="sign-in-btn">登陆</button>

      </form>

    </div> <!-- /container -->
     <script src="js/jquery-2.0.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/json.min.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <script src="js/login.js"></script>
    </body>
</html>