<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="WebUI.View.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <input type="email" class="form-control" id="txtProCate" aria-describedby="emailHelp" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Price</label>
                    <input type="email" class="form-control" id="txtProPri" aria-describedby="emailHelp" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Quantity</label>
                    <input type="email" class="form-control" id="txtProQty" aria-describedby="emailHelp" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Expiration Date  </label>
                    <input type="Date" class="form-control" id="txtExpDate" aria-describedby="emailHelp" />
                </div>

                <asp:Button Text=" Save  " runat="server" CssClass="btn btn-success" />
                <asp:Button Text="Update" runat="server" CssClass="btn btn-primary" />
                <asp:Button Text="Delete" runat="server" CssClass="btn btn-danger" />

            </form>
        </div>
        <div class="col-md-8">
        </div>
    </div>

</asp:Content>
