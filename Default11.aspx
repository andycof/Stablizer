﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>
<script runat="server">
    public void page_load(object o, EventArgs e)
    {

        if (!IsPostBack)
        {
            ds1.SelectCommand = "select * from product ";
            d1.DataTextField = "productname";
            d1.DataValueField = "a_n";

        }

    }
   
    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<strong><b><i><h1>Delete Product</h1></b></i></strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<asp:AccessDataSource runat=server ID=ds1 DataFile="~/d1.mdb"></asp:AccessDataSource>
<asp:ScriptManager ID=sm runat=server></asp:ScriptManager>
<table>
<tr>
<td>
<asp:DropDownList ID=d1 runat=server AutoPostBack=true AppendDataBoundItems=true DataSourceID="ds1">
<asp:ListItem>
select
</asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr>

<td>
<a href="Default12.aspx?a1=d1.selectedItem.Text">Delete</a>
</td>
</tr>


</table>
</div>
</asp:Content>

