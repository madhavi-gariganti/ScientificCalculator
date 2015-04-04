<%@ Page Language="C#" AutoEventWireup="true" CodeFile="toggleclass.aspx.cs" Inherits="toggleclass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btn1").click(function () {
                $("#divmain").addClass("class1");
            });
            $("#btn2").click(function () {
                $("#divmain").removeClass("class1");
            });
            $("#btn3").click(function () {
                $("#divmain").toggleClass("class1");
            });
        });
    </script>
    <style type="text/css">
        #divmain
        {
        width:50%;
        height:100px;
        line-height:100px;
        }
        .class1
        {
        background-color:red;
        color:yellow;
        border:10px groove green;
        font-family:verdana;
        font-size:50px;
        font-weight:bold;
        border-radius:10px;
        box-shadow:10px 10px silver;
    }
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <input type="button" id="btn1" value="add class" />
        <input type="button" id="btn2" value="remove class" />
        <input type="button" id="btn3" value="toggle class" />
        <br /><br />
        <div id="divmain"> jquery library</div>
    
    </div>
    </form>
</body>
</html>
