<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="StudentWebfom.AddStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 31%;
            margin-left: 40px;
        }
        .style4
        {
            width: 9%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <fieldset>
    <legend>Add New Student Details</legend>
    <table style="width:100%;">
            <tr>
                <td colspan="2">
                    Add New Student</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Student USN</td>
                <td class="style3">
                    <asp:TextBox ID="textUSN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="textUSN" ErrorMessage="*Enter Usn" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Student Name</td>
                <td class="style3">
                    <asp:TextBox ID="textName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="textName" ErrorMessage="*Enter Student Name" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Address</td>
                <td class="style3">
                    <asp:TextBox ID="textAddress" runat="server" Height="85px" TextMode="MultiLine" 
                        Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="textAddress" ErrorMessage="*Enter Address" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    CourseID</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="151px">
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*select" ForeColor="Red" 
                        Operator="NotEqual" ValidationGroup="A" ValueToCompare="select"></asp:CompareValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    YOA</td>
                <td class="style3">
                    <asp:TextBox ID="textYOA" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="textYOA" ErrorMessage="*Enter Year Of Admission" 
                        ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1_AddStudent" runat="server" Text="AddNewStudent" 
                        onclick="Button1_AddStudent_Click" ValidationGroup="A" BackColor="Black" 
                        ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1_Clear" runat="server" Text="Clear" 
                        onclick="Button1_Clear_Click" BackColor="Black" BorderColor="White" 
                        ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Back To Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
    </fieldset>
    
        
    
    </div>
    </form>
</body>
</html>
