<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeRegister.aspx.cs" Inherits="EmployeeRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: #FFF;
            /*background-image: url('http://localhost:49751/images/EmpRegBackimg.jpg');*/
            width: 1287px;
        }

        #Panel1 {
            margin-left: 450px;
            height: 800px;
            width: 900px;
            border-style: inset;
        }

        #Panel1, #emptable {
            /*background: rgb(0, 0, 0);*/
            /*background: rgba(0, 0, 0,0.5);*/
        }



        #emptable {
            margin-left: 20px;
            color: black;
            font-weight: bold;
        }


        .auto-style1 {
            width: 89%;
        }

        .auto-style2 {
            height: 23px;
        }

        .auto-style3 {
            height: 49px;
        }

        #Button1 {
            padding: 5px 60px;
            font-size: 17px;
            border-radius: 10px 10px;
        }

        ht.line {
            border: 5px black;
            margin: 30px;
        }

        .auto-style4 {
            height: 23px;
            width: 426px;
        }

        .auto-style5 {
            width: 426px;
        }

        .auto-style6 {
            height: 49px;
            width: 426px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; color: white"><b>Employee Registation Form</b></h1>
            <hr class="line" />
            <asp:Panel ID="Panel1" runat="server" Height="351px">
                <br />
                &nbsp;<table id="emptable" class="auto-style1" style="float: left; border-spacing: 5px; height: 254px;">
                    <tr>
                        <td class="auto-style2">Employee Name<span style="color: red"> *</span></td>

                        <td class="auto-style2">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Employee Name is Required ! !" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail Id<span style="color: red"> *</span></td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Email id Required ! !" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Should be in Email Formate" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Phone Number<span style="color: red"> *</span></td>
                        <td class="auto-style2" id="number">
                            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="25px">+91</asp:TextBox>
                            <asp:TextBox ID="txtnumber" runat="server" Width="136px" TextMode="Number"></asp:TextBox>
                        </td>
                        <td id="number" class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnumber" ErrorMessage="Phone Number Required ! !" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtnumber" ErrorMessage="Should be 10 Digits ! !" ForeColor="Red" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>Aadhar Number</td>
                        <td>
                            <asp:TextBox ID="txtaadhar" runat="server" Width="169px" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" Height="45px" TextMode="MultiLine" Width="176px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <br />
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Blood Group</td>
                        <td>
                            <asp:TextBox ID="txtbloodgroup" runat="server" Width="169px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Experience ( Enter 0 if fresher)</td>
                        <td>
                            <asp:TextBox ID="txtexpir" runat="server" Width="169px" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Designation(Enter Fresher if fresher)</td>
                        <td>
                            <asp:TextBox ID="txtdesig" runat="server" Width="171px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style3">
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Lime" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id">
                <Columns>
                    <asp:TemplateField HeaderText="Employee Id">
                        <ItemTemplate>
                            <asp:Label ID="gvlblEmployee_Id" runat="server" Text='<%# Eval("emp_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Employee Name">
                        <ItemTemplate>
                            <asp:Label ID="gvlblemp_name" runat="server" Text='<%# Eval("emp_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mail Id">
                        <ItemTemplate>
                            <asp:Label ID="gvlblmail" runat="server" Style="text-align: center" Text='<%# Eval("mail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Number">
                        <ItemTemplate>
                            <asp:Label ID="gvlblmobile" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Aadhar Number">
                        <ItemTemplate>
                            <asp:Label ID="gvlblaadhar" runat="server" Style="text-align: center" Text='<%# Eval("aadhar") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="gvlbladdress" runat="server" Style="text-align: center" Text='<%# Eval("addre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blood Group">
                        <ItemTemplate>
                            <asp:Label ID="gvlblbloodgroup" runat="server" Style="text-align: center" Text='<%# Eval("bloodgroup") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Experience">
                        <ItemTemplate>
                            <asp:Label ID="gvlblExperience" runat="server" Style="text-align: center" Text='<%# Eval("Expe") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation">
                        <ItemTemplate>
                            <asp:Label ID="gvlblDesignation" runat="server" Style="text-align: center" Text='<%# Eval("Design") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

          
                
        </div>
    </form>
</body>
</html>

