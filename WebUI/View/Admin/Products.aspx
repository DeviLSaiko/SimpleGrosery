<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebUI.View.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Logo</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">

                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Dashboard.aspx">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Categories.aspx">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="Products.aspx">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  " href="Sellers.aspx">Sellers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Login.aspx">Log Out</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row" style="height: 60px">
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
            <h2 class="text-info">Products Details</h2>
            <form>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Name</label>
                    <input type="email" class="form-control" id="txtProName" aria-describedby="emailHelp" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Category</label>
                    <input type="email" class="form-control" id="txtProCate" runat="server" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Price</label>
                    <input type="email" class="form-control" id="txtProPri" runat="server" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Quantity</label>
                    <input type="email" class="form-control" id="txtProQty" runat="server" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Expiration Date  </label>
                    <input type="Date" class="form-control" id="txtExpDate" runat="server" />
                </div>
                <asp:Button Text=" Save  " runat="server" CssClass="btn btn-success" />
                <asp:Button Text="Update" runat="server" CssClass="btn btn-primary" />
                <asp:Button Text="Delete" runat="server" CssClass="btn btn-danger" />
            </form>
        </div>
        <div class="col-md-8">
            <asp:GridView runat="server" CssClass="table"></asp:GridView>
        </div>
    </div>
</asp:Content>
