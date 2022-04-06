<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UniversityProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Template</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="Login/assets/css/login.css">
    <style type="text/css">
        .auto-style1 {
            border-radius: 0;
            position: absolute;
            width: 100%;
            height: 1251px;
            -o-object-fit: cover;
            object-fit: cover;
            left: 12px;
            top: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css"
       
        rel="stylesheet" type="text/css" />
      </div>
      <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-4">
            <img src="assets/images/login.jpg" alt="login" class="auto-style1" >    
          </div>
          <div class="col-md-3">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="assets/images/pnh.png" alt="Welcome to Login Form " class="logo">
              </div>
              <p class="login-card-description">Sign into your account</p>
              <form action="#!">
                  <div class="form-group">
                    <label for="Username" class="sr-only">Username</label>
                   <%-- <input type="email" name="email" id="email" class="form-control" placeholder="Email address">--%>
                      <asp:TextBox ID="Usertxt" runat="server" placeholder="Username" Width="255px"></asp:TextBox>
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <%--<input type="password" name="password" id="password" class="form-control" placeholder="***********">--%>
                      <asp:TextBox ID="passwordtxt" runat="server" placeholder="Password" TextMode="Password" Width="255px"></asp:TextBox>
                  </div>
                  <%--<input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">--%>
                  <asp:Button ID="Buttontxt" runat="server" Text="Login" class="btn btn-block login-btn mb-4" OnClick="Buttontxt_Click" />
                </form>
                <%--<a href="#!" class="forgot-password-link">Forgot password?</a>--%>
                <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
                <nav class="login-card-footer-nav">
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                </nav>
            </div>
          </div>
        </div>
      </div>
      <!-- <div class="card login-card">
        <img src="assets/images/login.jpg" alt="login" class="login-card-img">
        <div class="card-body">
          <h2 class="login-card-title">Login</h2>
          <p class="login-card-description">Sign in to your account to continue.</p>
          <form action="#!">
            <div class="form-group">
              <label for="email" class="sr-only">Email</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="password" class="sr-only">Password</label>
              <input type="password" name="password" id="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-prompt-wrapper">
              <div class="custom-control custom-checkbox login-card-check-box">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember me</label>
              </div>              
              <a href="#!" class="text-reset">Forgot password?</a>
            </div>
            <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
          </form>
          <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
        </div>
      </div> -->
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

    </form>
</body>
</html>
