<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizApp_Instructions.aspx.cs" Inherits="QuizApp_Instructions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #form1 {
            position: absolute;
            left: 22%;
            top: 35%;
            border: 1px solid;
            padding: 10px 10px;
        }
    </style>
</head>
<body style="height: 115px; background-color: #d2691e;">
    <div style="text-align: center;" class="auto-style3">
        <h1 style="background-color: #800000; height: 200%">Quiz App</h1>
    </div>
    <div style="text-align: center;" class="auto-style3">
        <h2 style="background-color: #B22222; height: 150%">Instructions</h2>
        <div style="text-align: right;"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuizApp_Login.aspx" Font-Size="Large">Logout</asp:HyperLink></div>
    </div>

    <form id="form1" runat="server" class="auto-style3">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Line1_1" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line1_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Line2_1" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line2_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Line3_1" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line3_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Line4_1" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line4_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Label ID="Line5_1" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line5_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Label ID="Line6_1" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line6_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Label ID="Line7_1" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line7_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Label ID="Line8_1" runat="server" Text="" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Line8_2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Begin Quiz" Font-Bold="true" OnClick="btnsubmit_Click" Height="32px" Width="94px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
