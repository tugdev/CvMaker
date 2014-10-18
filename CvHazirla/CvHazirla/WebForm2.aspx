<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CvHazirla.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
       <br />
       
        <asp:Button ID="Button2" runat="server" Text="Button" onclick="Button2_Click" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button3" runat="server" Text="pdf oluştur" 
            onclick="Button3_Click" />
         </div>
         <br />
    <asp:Button ID="Button4" runat="server" Text="Button" />

    </form>
</body>
</html>
