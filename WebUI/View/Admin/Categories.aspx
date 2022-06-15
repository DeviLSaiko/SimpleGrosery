<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Categories.aspx.cs" Inherits="WebUI.View.Admin.Categories" %>

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
                        <a class="nav-link active" href="Categories.aspx">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Products.aspx">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Sellers.aspx">Sellers</a>
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
            <h2 class="text-info">Category Details</h2>
            <form>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Category Name</label>
                    <asp:TextBox ID="txtCateName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Category Remarks</label>
                    <asp:TextBox ID="txtCateRe" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="err" CssClass="text-danger" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Button Text=" Save  " ID="BtnSave" runat="server" OnClick="BtnSave_Click" CssClass="btn btn-success" />
                    <asp:Button Text="Update" ID="btnUpdate" runat="server" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                    <asp:Button Text="Delete" ID="BtnDelete" runat="server" CssClass="btn btn-danger" OnClick="BtnDelete_Click" />
                </div>
            </form>
        </div>
        <div class="col-sm-8">
            <asp:GridView ID="GridView1" CssClass="table table-hover" EnableViewState="false" runat="server" AutoGenerateSelectButton="True"></asp:GridView>
        </div>
    </div>
</asp:Content>
