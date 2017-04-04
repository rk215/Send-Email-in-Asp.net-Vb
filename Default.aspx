<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Emails</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style>       
        .auto-style1 {
            position: absolute;
            left: 338px;
            top: 54px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <%-- Manually Adjust Header Text --%>
                <td colspan="2">
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Send Email

                    </h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="lbto" ID="Label1" runat="server" Text="To:">

                    </asp:Label></td>
                <td>
                    <asp:TextBox ID="toEmail" CssClass="textBoxTo " placeholder="example@gmail.com" runat="server"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label2" CssClass="lbfrom " runat="server" Text="From:">

                    </asp:Label></td>

                <td>
                    <asp:TextBox ID="from" CssClass="textBoxFrom" placeholder="example@gmail.com" runat="server">

                    </asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" CssClass="lbsub " runat="server" Text="Subject:">

                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Subject" CssClass="subject " placeholder="meeting" runat="server"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" CssClass="lbbody " runat="server" Text="Body:">

                    </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Body" CssClass="Ebody " placeholder="Description About Email " TextMode="MultiLine"
                        runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button CssClass="btSend" ID="Button1" runat="server" Text="Send" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" CssClass="lbmsg"></asp:Label></td>
            </tr>

        </table>
    </form>
</body>
</html>
