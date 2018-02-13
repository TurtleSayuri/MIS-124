<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/CSUS.Master" CodeBehind="Answer_Default.aspx.vb" Inherits="MIS124_Lab3_RequestForInfo.Answer_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

table {
    border-collapse: collapse;
    border-spacing: 0;
    margin-top: 0.75em;
    border: 0 none;
}

td {
    padding: 0.25em 2em 0.25em 0em;
    border: 0 none;
}

    input {
        border: 1px solid #e2e2e2;
        background: #fff;
        color: #333;
        font-size: 1.2em;
        margin: 5px 0 6px 0;
        padding: 5px;
        width: 300px;
    }

    input {
        width: 90%;
    }

    
    
        .auto-style3
        {
            height: 30px;
        }
        .auto-style4
        {
            height: 54px;
        }

        input[type="checkbox"] {
            background: transparent;
            border: inherit;
            width: auto;
        }
        
    label {
        display: block;
        font-size: 1.2em;
        font-weight: 600;
    }

    td input[type=submit] {
        font-size: 1em;
        padding: 4px;
        margin-right: 4px;
    }

    input[type=submit] {
        background-color: #d3dce0;
        border: 1px solid #787878;
        cursor: pointer;
        font-size: 1.2em;
        font-weight: 600;
        padding: 7px;
        margin-right: 8px;
        width: auto;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="auto-style5" colspan="2" style="background-color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: x-large; text-align: center">MIS 124 Lab 3 Answer</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/User group.gif" />
&nbsp;What is your name (First Last)?</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtName" runat="server" BackColor="White" Font-Size="Small" Height="10px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">Cannot be empty</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Toolbox.gif" />
&nbsp;What is your major?</td>
            <td class="auto-style3">
                <asp:DropDownList ID="lstMajor" runat="server" AutoPostBack="True" Height="16px">
                    <asp:ListItem Value="MIS">MIS</asp:ListItem>
                    <asp:ListItem Value="ACCT">ACCT</asp:ListItem>
                    <asp:ListItem>FIN</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;<asp:Image ID="Image6" runat="server" ImageUrl="~/Images/Address book.gif" />
&nbsp;What is your e-mail?</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtEmail" runat="server" BackColor="White" CausesValidation="True" Font-Size="Smaller" Width="150px">spiros@csus.edu</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail address is not a valid Saclink address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@csus.edu"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;<asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Address book.gif" />
&nbsp;Verify your e-mail</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtEmailVerify" runat="server" BackColor="White" Font-Size="Smaller" Width="150px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailVerify" ErrorMessage="E-mails do not match"></asp:CompareValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Favourites.gif" />
&nbsp;What information should we send?</td>
            <td class="auto-style4">
                <asp:CheckBox ID="chkCampusEvents" runat="server" AutoPostBack="True" CausesValidation="True" CssClass="auto-style5" Font-Size="X-Small" Text="Campus Events" Width="101px" />
                <asp:CheckBox ID="chkCBAEvents" runat="server" AutoPostBack="True" CausesValidation="True" Font-Overline="False" Font-Size="X-Small" Text="CBA Events" Width="91px" />
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnSend" runat="server" BackColor="#CCFFCC" Text="Send Request" ToolTip="Click to sent your request to the College of Business" Width="120px" Visible="False" />
                <asp:Button ID="txtClear" runat="server" Text="Clear" ToolTip="Click to reset all fields " Width="120px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
