<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create_account.aspx.cs" Inherits="create_account" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label8" runat="server" BackColor="#FFFFC0" BorderStyle="Dashed" ForeColor="Red"
        Height="24px" Style="z-index: 100; left: 216px; position: absolute; top: 208px"
        Visible="False" Width="312px"></asp:Label>
    <asp:Label ID="Label9" runat="server" BackColor="GreenYellow" ForeColor="Black" Height="24px"
        Style="z-index: 102; left: 272px; position: absolute; top: 216px" Visible="False"
        Width="192px"></asp:Label>
    
 
    <asp:TextBox ID="TextBox1" runat="server"  Style="z-index: 100; left: 152px; position: absolute;
        top: 256px" Width="150px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 152px; position: absolute;
        top: 296px" TextMode="Password" Width="150px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 102; left: 152px; position: absolute;
        top: 336px" TextMode="Password" Width="150px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 103; left: 152px; position: absolute;
        top: 376px" Width="150px"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" CssClass="style1" Style="z-index: 104; left: 72px; position: absolute;
        top: 256px" Text="Username:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="style1" Style="z-index: 105; left: 72px; position: absolute;
        top: 296px" Text="Password:"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="style1" Style="z-index: 106; left: 16px; position: absolute;
        top: 336px" Text="Confirm Password:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="style1" Style="z-index: 107; left: 96px; position: absolute;
        top: 376px" Text="Email:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 108; left: 472px; position: absolute;
        top: 256px" Width="150px"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" CssClass="style1" Style="z-index: 109; left: 408px; position: absolute;
        top: 256px" Text="Country:"></asp:Label>
    <asp:RadioButton ID="RadioButton1" runat="server" Style="z-index: 110; left: 472px;
        position: absolute; top: 296px" Text="Male" Checked="True" GroupName="Gender" />
    <asp:RadioButton ID="RadioButton2" runat="server" Style="z-index: 111; left: 536px;
        position: absolute; top: 296px" Text="Female" GroupName="gender" />
    <asp:Label ID="Label6" runat="server" CssClass="style1" Style="z-index: 112; left: 408px; position: absolute;
        top: 296px" Text="Gender:"></asp:Label>
    &nbsp; &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="*" Style="z-index: 113; left: 312px; position: absolute; top: 256px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
        ErrorMessage="*" Style="z-index: 114; left: 312px; position: absolute; top: 296px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
        ErrorMessage="*" Style="z-index: 115; left: 312px; position: absolute; top: 336px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
        ErrorMessage="*" Style="z-index: 116; left: 312px; position: absolute; top: 376px"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
        ErrorMessage="*" Style="z-index: 117; left: 632px; position: absolute; top: 256px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1"
        ErrorMessage="*" Style="z-index: 118; left: 656px; position: absolute; top: 336px"
        Width="16px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
        ErrorMessage="*" Style="z-index: 119; left: 656px; position: absolute; top: 376px"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
        ErrorMessage="*Invalid Email!" Style="z-index: 120; left: 312px; position: absolute;
        top: 376px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
        ControlToValidate="TextBox3" ErrorMessage="*Passwords do not match" Height="24px"
        Style="z-index: 121; left: 152px; position: absolute; top: 320px" Width="160px"></asp:CompareValidator>
    &nbsp;
    <asp:Button ID="Button1" runat="server" Style="z-index: 122; left: 328px; position: absolute;
        top: 416px" Text="Create Account" OnClick="Button1_Click" />
    <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 123; left: 472px;
        position: absolute; top: 336px" Width="184px">
        <asp:ListItem>What is your favorite color?</asp:ListItem>
        <asp:ListItem>What is your zodiac sign?</asp:ListItem>
        <asp:ListItem>Who is your favorite hero?</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label7" runat="server" CssClass="style1" Style="z-index: 124; left: 344px;
        position: absolute; top: 336px" Text="Security Question:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 125;
        left: 472px; position: absolute; top: 376px" Width="176px"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" CssClass="style1" Style="z-index: 126; left: 432px;
        position: absolute; top: 376px" Text="Ans:"></asp:Label>
    <asp:Label ID="Label11" runat="server" Style="z-index: 128; left: 224px; position: absolute;
        top: 456px" Text="(By Clicking on this button,I agree to the T.O.S of this site)"></asp:Label>
  

</asp:Content>

