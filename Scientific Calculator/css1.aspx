<%@ Page Language="C#" AutoEventWireup="true" CodeFile="css1.aspx.cs" Inherits="css1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js"type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var c1 = $("#div1").css({ "background-color": "red", "color": "white","text-align":"center", "border": "15px inset green", "font-size": "50px", "box-shadow": "15px 15px silver", "margin": "5px" });
            var c2 = $("#div1").css({ "background-color": "green", "color": "yellow", "text-align": "center", "border": "15px inset black", "font-size": "50px", "box-shadow": "10px 10px silver", "margin": "5px" });
            function blink() {
                if (c1 == true) {
                    $("#div1").css({ "background-color": "green", "color": "yellow", "text-align": "center", "border": "15px inset black", "font-size": "50px", "box-shadow": "10px 10px silver", "margin": "5px" });
                    c1 = false;
                }

                else {
                  
                    $("#div1").css({ "background-color": "red", "color": "white", "text-align": "center", "border": "15px inset green", "font-size": "50px", "box-shadow": "15px 15px silver", "margin": "5px" });
                        c1 = true;
                }
            }
                window.setInterval(blink,500);
            });
    </script>
        

</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">welcome to jquery
    </div>
    </form>
</body>
</html>
