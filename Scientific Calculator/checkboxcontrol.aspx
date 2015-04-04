<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkboxcontrol.aspx.cs" Inherits="checkboxcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                var chkoptions=$("input:checkbox[name=options]");
                var chkdoptions="";
                $("#chkselect").change(function()
                {
                    if($(this).is(":checked"))
                    {
                        chkoptions.prop("checked",true);
                        $("label [for=chkselect]").text("deselect all");
                    }
                    else
                    {
                        chkoptions.prop("checked",false);
                        $("label[for=chkselect").text("select all");
                    }
                    chkdoptions=chkoptions.filter(".checked");
                    if(chkoptions.length==chkdoptions.length)
                    {
                        $("#chkselect").prop("checked",true);
                        $("label[for=chkselect").text("deselect all");
                    }
                    else
                    {
                        $("#chkselect").prop("checked",false);
                        $("label [for=chkselect").text("select all");
                    }
                });
                $("#btnsubmit").click(function(){
                    var txts="";
                    var values="";
                    if(chkoptions.is(":checked"))
                    {
                        chkdoptions.each(function () {
                            values += $(this).val() + ",";
                            txts += $("label[for=" + $(this).prop("id") + "]").text() + ",";
                        
                        });
                    values=values.substring(0,values.substring.length-1);
                    txts=txts.substring(0,txts.length-1);
                    $("#span1").html("selected options:<br />texts:" + txts + "<br />values:" + values);
                }
                
                        else
                        {
                            $("#span1").html("no option selected!!!");
                        }
                    });
                });
</script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CheckBox ID="chkselect" runat="server" Text="selectall" />
        <br />
        <asp:Panel ID="panel1" runat="server">
            <asp:CheckBox ID="chk1" runat="server" Text="option1" />
            <asp:CheckBox ID="chk2" runat="server" Text="option2" />
            <asp:CheckBox ID="chk3" runat="server" Text="option3" />
            </asp:Panel>
                <asp:Button ID="btnsubmit" runat="server" Text="submit" />
                <br />
                <asp:Label ID="lblresult" runat="server" />
    
    
    
    </form>
</body>
</html>
