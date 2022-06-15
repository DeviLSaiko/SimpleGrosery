<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebUI.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Asset/Lib/BS/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
      </ul>

      <div class="col-md-3 ">
        <button type="button" class="btn btn-outline-primary me-2">SignUp</button>
      </div>
    </header>

    <div class="container-fluid">
        <div class="row" style="height:150px;""></div>
        <div class="row">
            
            <div class="col-md-4">
                <div class="img">
<img src="https://static.vecteezy.com/system/resources/thumbnails/000/251/586/small_2x/grocery-bag-vector-illustration.jpg" alt="Grocery icons - 5 Free Grocery icons | Download PNG &amp; SVG"/>
                </div>
            </div>
            <div class="col-md-4">
                <h1 class="text-danger">Login</h1>
                <form id="form1" runat="server">
                    <div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                            <asp:TextBox ID="txtEmail"  CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <asp:TextBox ID="txtPassword"  TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <asp:Label ID="eerr" runat="server" CssClass="text-danger" Text=""></asp:Label>
                        <div class="mb-3 d-grid"><asp:Button ID="btnLogin" cssclass="btn btn-primary" OnClick="btnLogin_Click" runat="server" Text="Login" /> </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4" "></div>
        </div>
    </div>
</body>
</html>
