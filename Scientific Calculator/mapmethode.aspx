<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mapmethode.aspx.cs" Inherits="mapmethode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function()
        {
            var chk=$("#chklist1 input:checkbox");
            chk.change(function()
            {
                var chkdvalues=chk.filter(":checked").map(function()
                {
                    return $(this).val();
                }).get().join();
                if(chk.is(":checked"))
                    $("#lbl1").html("selected options:" + chkdvalues);
                else
                    $("#lbl1").html("");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <b>selected options:</b>
        <asp:CheckBoxList ID="chklist1" runat="server">
        <asp:listitem text="option1" value="option1"></asp:listitem>
        <asp:listitem text="option2" value="option2"></asp:listitem>
        <asp:listitem text="option3" value="option3"></asp:listitem>
        </asp:CheckBoxList>
        <asp:Label ID="lbl1" runat="server"/>
    
    
    
    </form>
</body>
</html>
