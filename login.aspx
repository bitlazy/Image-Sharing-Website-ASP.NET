<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 368px; position: absolute;
        top: 320px" Text="Password:" CssClass="style1"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 102; left: 456px; position: absolute;
        top: 280px" Width="144px"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Style="z-index: 103; left: 360px; position: absolute;
        top: 280px" Text="UserName:" CssClass="style1"></asp:Label>
  <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 104; left: 456px; position: absolute;
            top: 320px" TextMode="Password" Width="144px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Style="z-index: 105; left: 480px; position: absolute;
        top: 360px" Text="Log in" OnClick="Button1_Click" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="*Required" Style="z-index: 106; left: 616px; position: absolute;
        top: 280px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
        ErrorMessage="*Required" Style="z-index: 107; left: 616px; position: absolute;
        top: 320px"></asp:RequiredFieldValidator>
    <asp:Label ID="Label3" runat="server" BackColor="#FFFFC0" BorderStyle="Dashed" ForeColor="Red"
        Height="32px" Style="z-index: 108; left: 432px; position: absolute; top: 216px"
        Text="Username/Password Incorrect!" Visible="False" Width="192px"></asp:Label>

  
    
            
  
  
</asp:Content>

