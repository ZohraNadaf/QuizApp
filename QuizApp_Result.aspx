<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizApp_Result.aspx.cs" Inherits="QuizApp_Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       #form1 {
            position: absolute;
            left:40%;
            top: 35%;
            border: 1px solid;
            padding: 10px 10px;

        }
    </style>
</head>
<body style="height: 115px;background-color:#d2691e;" >
    <div style="text-align: center;" class="auto-style3"><h1 style="background-color:#800000; height:200%">Quiz App</h1></div>
    <div style="text-align: center;" class="auto-style3">
        <h2 style="background-color:#B22222; height:150%">Report</h2>
        <div style="font-size:large"><asp:Label ID="userNameLabel" runat="server" Text=""></asp:Label></div>
        <div style="text-align: right;"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuizApp_Login.aspx" Font-Size="Large">Logout</asp:HyperLink></div>
    </div>
    
    <form id="form1" runat="server" class="auto-style3">
        <div>
            <asp:GridView ID="GridViewReport" runat="server">
                 
            </asp:GridView>
            <asp:Label ID="ScoreLabel" runat="server" Text="" Font-Bold="true" Font-Size="Larger"></asp:Label>
        </div>
    </form>
</body>
</html>
               
               
            