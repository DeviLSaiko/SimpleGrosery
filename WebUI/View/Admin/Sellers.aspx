<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" EnableEventValidation="false" Inherits="WebUI.View.Admin.Sellers" %>

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
                        <a class="nav-link" href="Products.aspx">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="Sellers.aspx">Sellers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Login.aspx">Log Out</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row" style="height: 20px">
    </div>

    <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-3">

            <h2 class="text-info">Seller Details</h2>

            <form>
                <div class="mb-3">

                    <label for="exampleInputEmail1" class="form-label"> Name</label> 
                    <asp:TextBox ID="txtSellerNa" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                <div class="mb-3">

                    <label for="exampleInputEmail1" class="form-label"> Email</label> 
                    <asp:TextBox ID="txtSellerEmail" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">

                    <label for="exampleInputEmail1" class="form-label">Password</label> 
                    <asp:TextBox ID="txtSellerPass" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">

                    <label for="exampleInputEmail1" class="form-label">Phone</label>
                     <asp:TextBox ID="txtSellePh" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">

                    <label for="exampleInputEmail1" class="form-label">Address</label>
                    <asp:TextBox ID="txtSellerAdd" CssClass="form-control" runat="server"></asp:TextBox>
                    <div>
                        <asp:Label ID="err" CssClass="text-danger" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                
                <asp:Button Text=" Save  " ID="BtnSave" runat="server" OnClick="BtnSave_Click" CssClass="btn btn-success" />
                <asp:Button Text="Update" ID="btnUpdate" runat="server" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                <asp:Button Text="Delete" ID="BtnDelete" runat="server" CssClass="btn btn-danger" OnClick="BtnDelete_Click" />

            </form>
        </div>
        <div class="col-sm-8">
            <asp:GridView ID="GridView1" CssClass="table table-hover"  EnableViewState="false" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
        </div>
    </div>

</asp:Content>
