<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chkprog1.aspx.cs" Inherits="chkprog1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type ="checkbox" id ="chkselect" />
        <label for ="chkselect">Select All</label>
        <br /><br />
        <input type ="checkbox" id ="chk1" value ="opt1" />
        <label for ="chk1">Option1</label>
        <input type ="checkbox" id ="chk2" value ="opt2" />
        <label for ="chk1">Option2</label>
        <input type ="checkbox" id ="chk3" value ="opt3" />
        <label for ="chk1">Option3</label>
        <br /><br />
        <input type ="button" id ="btn1" value="submit" />
        <br /><br />
        <span id="span1">Result:</span>
    </div>
    </form>
</body>
</html>
