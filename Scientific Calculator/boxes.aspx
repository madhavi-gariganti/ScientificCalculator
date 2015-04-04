<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boxes.aspx.cs" Inherits="boxes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="Scripts/jquery-2.1.3.js" type ="text/javascript"></script>
    <script type ="text/javascript">
        $(document).ready(function () {
            $("div.class1,div.class2").click(function () {
                var content = $(this).html();
                $("#span1").html("<b>Currently clicked:</b>" + content);
            });
        });
    </script>
<style type="text/css">
    .class1 {
        width: 100px;
        height: 100px;
        border: 2px solid green;
        background-color: red;
        color: white;
        font-size:40px;
        cursor:pointer;
        padding:5px;
        margin:5px;
    }
    .class2{
        width: 100px;
        height: 100px;
        border: 2px solid red;
        background-color: green;
        color: white;
        font-size:40px;
        cursor:pointer;
        padding:5px;
        margin:5px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1" class="class1">Box1</div>
        <div id="div2" class="class2">Box2</div>
        <div id="div3" class="class1">Box3</div>
        <span id="span1"></span>
    </form>
</body>
</html>
