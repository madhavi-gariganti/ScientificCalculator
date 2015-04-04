<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imgeffect.aspx.cs" Inherits="imgeffect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="Scripts/jquery-2.1.3.js" type ="text/javascript"></script>
    <script src ="Scripts/jquery-ui-1.11.4.js" type ="text/javascript"></script>
    <script type ="text/javascript">
        $(document).ready(function () {
            $("#img1").effect("shake", { mode: "toggle", direction: "down", times: 5, distance: 150 }, 8000);
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
    <img id="img1" src="Images/a1.jpg" height ="300" width ="300" />
            </div>
    </form>
</body>
</html>
