<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizApp_SignUp.aspx.cs" Inherits="QuizApp_SignUp" %>

<!DOCTYPE html>
<script type="text/javascript">
    function ValidateLength(sender, args) {
        if (args.Value.length < 5) {
            args.IsValid = false;
        }
        else {
            args.IsValid = true;

        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #form1 {
            position: absolute;
            left: 30%;
            top: 30%;
            border: 1px solid;
            padding: 10px 10px;
            width: 40%;
        }
        .auto-style1 {
            width: 105px;
        }
        .auto-style2 {
            width: 517px;
            height: 302px;
        }
    </style>
</head>
<body style="height: 115px; background-color: #d2691e;">
    <div style="text-align: center;" class="auto-style3">
        <h1 style="background-color: #800000; height: 200%">Quiz App</h1>
    </div>
    <div style="text-align: center;" class="auto-style3">
        <h2 style="background-color: #B22222; height: 150%">Register</h2>
        <div style="text-align: right;"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuizApp_Start.aspx" Font-Size="Large">Exit</asp:HyperLink></div>
    </div>

    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtname" BackColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtpwd" BackColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password should be minimum of 5 characters" ClientValidationFunction="ValidateLength" ControlToValidate="txtpwd" BackColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblconfirm" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not matching" ControlToValidate="txtconfirm" ControlToCompare="txtpwd" BackColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should not be less than 20 and greater than 60 years" ControlToValidate="txtage" MaximumValue="60" MinimumValue="20" BackColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BackColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnsubmit" runat="server" Text="Register" Font-Bold="true" OnClick="btnsubmit_Click" Height="32px" Width="102px" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
