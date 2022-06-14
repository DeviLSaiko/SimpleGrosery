<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebUI.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Asset/Lib/BS/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>


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
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" />
                        </div>
                        <div class="mb-3 form-check">
                            <input type="radio" class="form-check-input" id="AdminRATIO" />
                            <label class="form-check-label" for="exampleCheck1">Admin</label>
                        </div>
                        <div class="mb-3 form-check">
                            <input type="radio" class="form-check-input" id="SellerRATIO" />
                            <label class="form-check-label" for="exampleCheck1">Seller</label>
                        </div>
                        <div class="mb-3 d-grid">
                          <button type="submit" class="btn btn-primary">Login</button>
                        </div>

                      
                    </div>
                </form>
            </div>
            <div class="col-md-4" "></div>
        </div>
    </div>
</body>
</html>
