<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mouseover.aspx.cs" Inherits="mouseover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="Scripts/jquery-2.1.3.js" type ="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var imgpath = "";
            $("#img1").mouseover(function () {
                imgpath = $(this).attr("src");
                $(this).attr("src","images.jpg");
            });
            $("#img1").mouseout(function () {
                $(this).attr("src", imgpath);
            });
        });

    </script>
        
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <img id ="img1" src="images (1).jpg" width="300" height ="300" /> 

    </div>
    </form>
</body>
</html>
