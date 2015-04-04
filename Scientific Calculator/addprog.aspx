<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addprog.aspx.cs" Inherits="addprog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="Scripts/jquery-2.1.3.js" type ="text/javascript"></script>
    <script type ="text/javascript">
        $(document).ready(function () {
            $("#txt1").focus();
            $("#btn1").click(function () {
                var v1 = $("#txt1").val();
                var v2 = $("#txt2").val();
                var v3 = "";
                if (v1 == "") {
                    v3 += "Please enter val1"+"\n";
                }
                if (v2 == "") {
                    v3 += "Please enter val2"+"\n";
                }
                if (v3 != "") {
                    alert(v3);
                    return false;
                }
                var result = parseFloat(v1) + parseFloat(v2);
                $("#res").val(result);
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <b>Enter value1:</b><input type ="text" id ="txt1" />
        <br /><br />
        <b>Enter value2:</b><input type ="text" id ="txt2" />
        <br /><br />
        <input type ="button" id ="btn1" value ="submit" />
        <br /><br />
        <b>Result:</b><input type ="text" id ="res" readonly="readonly" />
    </div>
    </form>
</body>
</html>
