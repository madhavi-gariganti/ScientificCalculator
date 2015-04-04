<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ex2.aspx.cs" Inherits="ex2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function ()
        {
            var btns = $("input:button");
            btns.css({ "background-color": "red", "color": "white", "border-radius": "25px", "box-shadow": "5px 5px solidgreen", "cursor": "pointer" });
            btns.mouseover(function()
            {
                $(this).css("background-color","red");
            }).click(function ()
            {
                btns.mouseout(function ()
                {
                    $(this).css("background-color","red");
                });
                $(this).unbind("mouseout");
                btns.css("background-color","red");
                $(this).css("background-color", "green");
                $("#span1").html("clicked button is:" + $(this).val());
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <input type="button" id="btn1" value="button1" />
        &nbsp;
        <input type="button" id="btn2" value="button2" />
        &nbsp;
        <input type="button" id="btn3" value="button3" />
        &nbsp;
        <input type="button" id="btn4" value="button4" />
        <br /><br />
        <span id="span1" runat="server" />

    </div>
    </form>
</body>
</html>
