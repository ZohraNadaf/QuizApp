<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizApp_Login.aspx.cs" Inherits="QuizApp_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       #form1 {
            position: absolute;
            left:40%;
            top: 40%;
            border: 1px solid;
            padding: 10px 10px;

        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style3 {
            left: 41%;
            top: 80%;
        }
        .auto-style4 {
            width: 191px;
            height: 125px;
        }
    </style>
</head>
<body style="height: 115px;background-color:#d2691e;" >
    <div style="text-align: center;" class="auto-style3"><h1 style="background-color:#800000; height:200%">Quiz App</h1></div>
    <div style="text-align: center;" class="auto-style3">
        <h2 style="background-color:#B22222; height:150%">Login</h2>
        <div style="text-align: right;"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuizApp_Start.aspx" Font-Size="Large">Exit</asp:HyperLink></div>
    </div>
    
    <form id="form1" runat="server" class="auto-style3">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">
                    <asp:Label ID="name" Text="Name" runat="server"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="txtloginname" runat="server" ></asp:TextBox>
                     </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtloginname" BackColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtpassword" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtpassword" BackColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Login" Font-Bold="true" OnClick="btnsubmit_Click" Height="32px" Width="79px" />
                    </td>
                </tr>
            </table>
  
        </div>
    </form>
</body>
</html>
