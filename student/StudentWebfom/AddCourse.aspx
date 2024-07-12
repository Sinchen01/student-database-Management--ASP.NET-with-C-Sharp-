<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="StudentWebfom.AddCourse" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 32%;
        }
        .style3
        {
            width: 224px;
        }
        .style4
        {
            width: 66%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <fieldset>
    <legend style="text-align: center; font-weight: 700">Add Course</legend>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    Add New Course</td>
            </tr>
            <tr>
                <td class="style3">
                    CourseName</td>
                <td class="style4">
                    <asp:TextBox ID="textCoursename" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1_Course" runat="server" Text="AddCourse" 
                        onclick="Button1_Course_Click1" BackColor="Black" ForeColor="White" />
                        

                    &nbsp;<asp:Button ID="textClear" runat="server" Text="Clear" 
                        onclick="textClear_Click" BackColor="Black" ForeColor="White" />

                    &nbsp;</td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Back To Home</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </fieldset>
    
    
    </div>
    <div>
    <fieldset>
    <legend style="font-weight: 700">Newly Added Course</legend>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="121px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Coursename">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </fieldset>
    </div>
    </form>
</body>
</html>
