<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bindunbind.aspx.cs" Inherits="bindunbind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btn1").click(function () {
                $("#img1").bind("mouseover", function () {
                    $("#img1").prop({ "src":"images.jpg", "alt": "this is an image", "title": "image" });
                });
                $("#img1").bind("mouseout", function () {
                    $("#img1").prop("src","images (1).jpg");
                });
            });
            $("#btn2").click(function () {
                $("#img1").unbind("mouseover").unbind("mouseout");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="button" id="btn1" value="bind event" />
        &nbsp;
        <input type="button" id="btn2" value="remove event" />

<br /><br />
        <img id="img1" src="images (1).jpg" width="300" height="300" />    
    
    
    </form>
</body>
</html>
