<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcometojQuery.aspx.cs" Inherits="welcometojQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function()
        {
            $("#div1").addClass("class1");
            var flag=true;
            function blink(){
                if (flag) {
                    if ($("#div1").hasClass("class1")) {
                        $("#div1").removeClass("class1").addClass("class2");
                        flag = false;
                    }
                }
                else {
                    if ($("#div1").hasClass("class2")) {
                        $("#div1").removeClass("class2").addClass("class1");
                        flag = true;
                    }
                }
                }
                window.setInterval(blink,500);
            });
    </script>
    <style type="text/css">
        .class1 {
            width: 96%;
            text-align: center;
            background-color: red;
            color: yellow;
            border: 15px;
            inset: green;
            font-family: Verdana;
            font-size: 50px;
            font-weight: bold;
            border-radius: 10px;
            box-shadow: 15px 15px silver;
            margin: 5px;
        }
        .class2 {
            width: 96%;
            text-align: center;
            background-color: blue;
            color: white;
            border: 15px inset green;
            font-family: Arial 'Blackadder ITC';
            font-size: 50px;
            font-weight: bold;
            border-radius: 15px;
            box-shadow: 10px 10px red;
            margin: 5px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div  id="div1">welcome to jQuery</div>
    </form>
</body>
</html>
