<%@ Page Language="C#" AutoEventWireup="true" CodeFile="puffeffect.aspx.cs" Inherits="puffeffect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.11.4.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            function flash()
            {
                $("#a1").effect("pulsate",{mode:"toggle",times:3},500);
            }
            window.setInterval(flash,500);
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <a id="a1" href="http://jquery.cono"
            target="_blank">welcome to madhu vakku divya shasank</a>
        <style type="text/css">
            a {
                text-decoration: none;
                font-size: 30px;
                color: red;
                font-family: Arial black';;
            }
                a:hover {
                    color: green;
                }
        </style>
    
    
    
    </form>
</body>
</html>
