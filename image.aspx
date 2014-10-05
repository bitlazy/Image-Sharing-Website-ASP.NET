<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="image.aspx.cs" Inherits="image" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="300px" Style="z-index: 100; left: 32px;
        position: absolute; top: 184px" Width="300px" ImageAlign="Left" />
    <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 400px; position: absolute;
        top: 200px" Text="Title :"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="z-index: 103; left: 360px; position: absolute;
        top: 240px" Text="Description :"></asp:Label>
</asp:Content>

