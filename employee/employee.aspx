<%@ Page Title="" Language="C#" MasterPageFile="~/employee/employee.Master" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="Assignment5.employee.employee1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Welcome to User Home Page</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="emp_name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="age" HeaderText="Age" />
            <asp:CommandField HeaderText="Update" ShowEditButton="True" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
              <asp:HyperLinkField DataNavigateUrlFields="emp_id" DataNavigateUrlFormatString="Redirect.aspx?empid={0}" HeaderText="Go to Next Page" Text="Go" />
        </Columns>
    </asp:GridView>
</asp:Content>
