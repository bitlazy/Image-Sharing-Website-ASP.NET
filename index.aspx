<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content id="Content1" runat="server" ContentPlaceholderID="ContentPlaceHolder1">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><title>Home Page</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/fadeslideshow.js">
/***********************************************
* Ultimate Fade In Slideshow v2.0- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/
</script>
<script type="text/javascript">
var mygallery=new fadeSlideShow({
wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
dimensions: [300, 300], //width/height of gallery in pixels. Should reflect dimensions of largest image
imagearray: [
["img/1.jpg"],
["img/2.jpg"],
["img/3.jpg"],
["img/4.jpg"] //<--no trailing comma after very last image element!
],
displaymode: {type:'auto', pause:2500, cycles:0, wraparound:false},
persist: false, //remember last viewed slide and recall within same session?
fadeduration: 500, //transition duration (milliseconds)
descreveal: "none",
togglerid: ""
})
</script>

</head>
<body>
<div class="icontent">
<br/><br/>
<h2>Welcome To <span class="style2">Picpoint.com</span>!</h2>
PicPoint.com is an ultimate place to share your favorite pics Online!<br />
As a member,you can:
<ul>
<li>Upload any number of photos</li>
<li>Share your photos with others</li>
<li>Rate other's Photos</li>
<li>Comment other's photos</li>
<li>And more and more and more and more!!</li>
</ul>
<div align="center"><a href="create_account.aspx"><img
 style="border: 0px solid ; width: 195px; height: 39px;"
 src="img/signup2.png" alt="Create Your Account!"
 align="middle" /></a><a href="login.aspx"><img
 style="border: 0px solid ; width: 195px; height: 39px;"
 src="img/login.png" alt="Exisitng members Login here!"
 align="middle" /></a>

</div>
</div>
<div class="islide">
<blockquote>
<blockquote><br/><br/>
<div id="fadeshow1"></div>
</blockquote>
</blockquote><br/><br/>
</div>    
</body>
</html>
 </asp:Content>

