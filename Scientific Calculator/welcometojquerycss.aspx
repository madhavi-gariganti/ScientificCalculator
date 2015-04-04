 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcometojquerycss.aspx.cs" Inherits="welcometojquerycss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            function style1()
            {
                $("#ptitle").css({"width": "96%", "height": "75px", "line-height": "75px", "border": "10px solid red", "text-align": "center", "margin": "0px", "border-radius": "20px", "box-shadow": "10px 10px gray", "font-size": "50px", "font-weight": "bold", "font-family": "arial", "color": "yellow", "background-color": "blue" });
            }
            function style2()
            {
                $("#ptitle").css({"border":"15px solid green", "border-radius":"30px", "box-shadow":"15px10px red", "font-size":"55px", "font-family":"arialblack","color":"white","background-color": "black"});
            }
            style1();
            var flag = true;
            function blink() {
                if (flag) {
                    style2();
                    flag = false;
                }
                else
                {
                    style1();
                    flag = true;
                }
            }
            window.setInterval(blink, 500);
        });
 </script>
</head>
<body>
    <form id="form1" runat="server">
        <p id="ptitle">welcome to jquery ccss</p>

    </form>
</body>
</html>
