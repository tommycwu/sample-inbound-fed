<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Login to your portal" />
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/rli-contact.jpg" />
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
