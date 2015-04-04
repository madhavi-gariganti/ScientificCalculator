<%@ Page Language="C#" AutoEventWireup="true" CodeFile="applyattr.aspx.cs" Inherits="applyattr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="Scripts/jquery-2.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function()
        {
            $("#btn1,#btn2").click(function()
            {
                var id=$(this).attr("id");
                switch(id)
                {
                    case "btn1":
                        $("#img1").attr({"src":"images.jpg","alt":"image","title":"this is an image","style":"border:5px dotted green; padding:10px; background-color:yellow"});
                        break;
                    case"btn2":
                        $("#img1").removeAttr("title style");
                        break;
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <input type="button" id="btn1" value="apply attributes" />
        &nbsp;
        <input type="button" id="btn2" value="remove attributes" />
        <br /><br />
        <img id="img1"src="images.jpg" />
    
    </div>
    </form>
</body>
</html>
