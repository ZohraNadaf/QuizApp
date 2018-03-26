<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizApp_Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            position: absolute;
            left: 30%;
            top: 30%;
            border: 1px solid;
            padding: 10px 10px;
        }

        #answerDiv {
            padding-top: 3%;
        }
    </style>
</head>
<body style="height: 115px; background-color: #d2691e;">
    <div style="text-align: center;" class="auto-style3">
        <h1 style="background-color: #800000; height: 200%">Quiz App</h1>
    </div>
    <div style="text-align: center;" class="auto-style3">
        <h2 style="background-color: #B22222; height: 150%">Quiz</h2>
        <div style="font-size:large"><asp:Label ID="userNameLabel" runat="server" Text=""></asp:Label></div>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                <ContentTemplate>
                         <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>      
                    <asp:Label ID="LabelTimer" runat="server" Font-Bold="true"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <table class="auto-style14" style="font-size: x-large">
                <tr>
                    <td class="auto-style15">
                        <asp:GridView ID="GridViewQuestion" runat="server" Height="203px" Width="562px" AutoGenerateColumns="False" GridLines="None">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("Question") +"<br>"+ "(a) " + Eval("OptionA")+ " <br> " + "(b) " + Eval("OptionB")+ " <br> " + "(c) " + Eval("OptionC")+ " <br> " + "(d) " + Eval("OptionD")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <div class="auto-style2" id="answerDiv">
                            <asp:Label ID="answerLabel" runat="server" Text="Enter Your Answer"></asp:Label>
                            <asp:TextBox ID="TextBoxAnswer" runat="server" MaxLength="1"></asp:TextBox>
                            <asp:Button ID="NextButton" runat="server" Style="margin-left: 17%" Text="Next" Width="79px" OnClick="NextButton_Click" Height="32px" />

                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
