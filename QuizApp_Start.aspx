<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizApp_Start.aspx.cs" Inherits="QuizApp_Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       #form1 {
            position: absolute;
            left: 40%;
            top: 40%;
            border: 1px solid;
            padding: 10px 10px;

        }
        .auto-style1 {
            width: 225px;
            height: 96px;
        }
        .auto-style2 {
            left: 38%;
            top: 46%;
            width: 186px;
            height: 95px;
        }
        .auto-style3 {
            float: left;
            width: 94%;
            height: 22px;
        }
    </style>
</head>
<body style="height: 115px;background-color:#d2691e;" >
    <div style="text-align: center;" class="auto-style3"><h1 style="background-color:#800000; width: 106%;height:200%">Welcome to Quiz App</h1></div>
    <form id="form1" runat="server" class="auto-style2">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" Height="43px" Width="71px" />
                    </td>
                   
                    <td>
                        <asp:Button ID="btnsignup" runat="server" Text="Register" OnClick="btnsignup_Click" Height="43px" Width="75px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
