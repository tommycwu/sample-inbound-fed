<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="ID Token" Visible="False"></asp:Label>
        </div>
        <div>
            <asp:GridView runat="server" ID="GridViewID" OnRowDataBound="GridViewID_RowDataBound" CssClass="mGrid"></asp:GridView>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Access Token" Visible="False"></asp:Label>
        </div>
        <asp:GridView runat="server" ID="GridViewAccess" OnRowDataBound="GridViewAccess_RowDataBound" CssClass="mGrid"></asp:GridView>
        <br />
</asp:Content>
