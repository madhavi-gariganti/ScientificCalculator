<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imagestyle.aspx.cs" Inherits="imagestyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var imgpath = "";
            $("#img1.class1").mouseover(function () {
                imgpath = $(this).attr("src");

                $(this).attr({"src":"images.jpg","alt":"Image", "title":"This is an image", "style":"border:5px dotted green; padding:10px; background-color:yellow"});
            });
            $("#img1").mouseout(function () {
                $(this).attr("src",imgpath);
            });
        });
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <img id="img1" src="images.jpg" width="400" height="400" />
    </div>
    </form>
</body>
</html>
