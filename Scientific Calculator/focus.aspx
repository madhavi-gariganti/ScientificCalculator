<%@ Page Language="C#" AutoEventWireup="true" CodeFile="focus.aspx.cs" Inherits="focus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function()
        {
            var fname=$("#txtfirstname");
            var lname=$("#txtlastname");
            fname.add(lname).focusin(function(){
                if($(this).val()=="")
                    $(this).css({"background-color":"yellow","border":"2px solid red"});
            }).focusout(function(){
                if($(this).val()!=""){
                    $(this).css({"background-color":"white","border":"1px solid gray"});
            }
        else{
            $(this).css({"background-color":"yellow","border":"2px solid red"});
        }
        });
        $("#btnsubmit").click(function(){
            if(fname.val()==""||lname.val()=="")
            {
                fname.add(lname).trigger("focusin");
                return false;
            }
        });
        });
    </script>
</head>
<body> 
    <form id="form1" runat="server">
        <b> firstname:</b> <asp:textbox ID= "txtfirstname" runat ="server" />
        <br /><br />
        <b>last name</b><asp:TextBox ID= "txtlastname" runat ="server" />
        <br /><br />
        <asp:Button ID="btnsubmit" runat="server" Text="submit" />
  
    
    
    </form>
</body>
</html>
