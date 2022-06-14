<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebUI.View.Admin.Dashboard" %>
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
                    <a class="nav-link active" href="Dashboard.aspx">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Categories.aspx">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Products.aspx">Products</a>
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
</asp:Content>
