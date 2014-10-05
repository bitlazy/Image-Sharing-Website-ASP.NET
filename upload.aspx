<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 104; left: 120px; position: absolute;
        top: 264px" Width="232px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 120px; position: absolute;
        top: 344px" Width="232px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Height="48px" Style="z-index: 106; left: 496px;
        position: absolute; top: 264px" TextMode="MultiLine" Width="200px" MaxLength="250"></asp:TextBox>
    &nbsp;
    <asp:Label ID="Label1" runat="server" CssClass="style1" Style="z-index: 107; left: 72px;
        position: absolute; top: 264px" Text="Title :"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="style1" Style="z-index: 108; left: 72px;
            position: absolute; top: 304px" Text="URL :"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style1" Height="24px" Style="z-index: 109;
            left: 72px; position: absolute; top: 344px" Text="Tags : " Width="40px"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="style1" Style="z-index: 110; left: 32px;
        position: absolute; top: 368px" Text="(Space Seperated)" Height="24px" Width="128px"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="style1" Style="z-index: 111; left: 408px;
        position: absolute; top: 264px" Text="Description :" Width="64px"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="style1" Style="z-index: 112; left: 424px;
        position: absolute; top: 336px" Text="Category :" Width="64px"></asp:Label>
    <asp:ListBox ID="ListBox1" runat="server" Height="120px" Style="z-index: 113; left: 496px;
        position: absolute; top: 336px" Width="200px">
        <asp:ListItem Value="art">Art</asp:ListItem>
        <asp:ListItem Value="auto">Auto</asp:ListItem>
        <asp:ListItem Value="friendship">Friendship</asp:ListItem>
        <asp:ListItem Value="nature">Nature</asp:ListItem>
        <asp:ListItem Value="technology">Technology</asp:ListItem>
        <asp:ListItem Value="animals">Animals</asp:ListItem>
        <asp:ListItem Value="others">Others</asp:ListItem>
    </asp:ListBox>
    <asp:Button ID="Button1" runat="server" Style="z-index: 114; left: 336px; position: absolute;
        top: 432px" Text="Upload" OnClick="Button1_Click" Width="80px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="*" Style="z-index: 115; left: 360px; position: absolute; top: 264px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="*" Style="z-index: 116; left: 360px; position: absolute; top: 344px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="*" Style="z-index: 117; left: 704px; position: absolute; top: 264px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ListBox1"
            ErrorMessage="*" Style="z-index: 118; left: 696px; position: absolute; top: 336px"></asp:RequiredFieldValidator>
        <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 119; left: 120px;
            position: absolute; top: 304px" Width="240px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1"
            ErrorMessage="*" Style="z-index: 120; left: 360px; position: absolute; top: 304px"></asp:RequiredFieldValidator>
    &nbsp;
        <asp:Label ID="Label8" runat="server" BackColor="#FFFFC0" BorderStyle="Dashed" ForeColor="Red"
            Height="24px" Style="z-index: 122; left: 272px; position: absolute; top: 384px"
            Text="Invalid FileType! Upload Failed!" Visible="False" Width="200px"></asp:Label>

</asp:Content>

