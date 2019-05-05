<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>



<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<%--<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>--%>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<asp:ScriptManager ID="Mymanager"  runat="server" ></asp:ScriptManager>

    <div id="DispalyPanel" runat="server" align="center">
    <Marquee id="asdd" runat="server">
    <asp:Label ID="Label4" runat="server" Text="Current Tag availabes in Web.config File As Below" ForeColor="Aqua"></asp:Label></marquee><br />
    <asp:Panel ID="Panel1" runat="server" align="center" Width="850px" HorizontalAlign="Center"
            ForeColor="SandyBrown" BackColor="Bisque" Height="250px" BorderWidth="2"  EnableViewState="true">
            <br />  
              <%--<asp:TextBox ID="DisplayTags" runat="server"  TextMode="MultiLine" Height="200px" Width="500px">--%>
              <div id="sdsfs" runat="server" align="left">
              <asp:Label ID="Label1" runat="server" Text="" ForeColor="Black" Visible="false" Height="150px" Width="650px"></asp:Label></div>
              <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Click to Refresh" OnClick="Refresh_values" ImageUrl="~/Image/Refresh-300x277.png" Width="100px" Height="100px" Visible="false" />
              </asp:Panel>
         
    </div><br />

    <div id="OptionPanel" runat="server" align="center"> 
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Add" GroupName="1"  OnCheckedChanged="Add_Active"  AutoPostBack="true" ForeColor="Wheat"/>
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Update" GroupName="1" OnCheckedChanged="update_Active" AutoPostBack="true" ForeColor="Wheat"/>
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Delete" GroupName="1" OnCheckedChanged="Delete_Active" AutoPostBack="true" ForeColor="Wheat"/>
     </div>
      



    <%--<asp:Button ID="Button2" runat="server" Text="Display the Values from Webcogfig File" OnClick="Display" />--%>
    <br />
   <div id="textdv" runat="server" align="center">
   <table border="0" >
   <tr><td style="width: 10px;">
    <asp:Label ID="Label2" runat="server" Text="Key" ForeColor="Wheat"></asp:Label> </td> <td style="width: 10px;">
     <asp:DropDownList ID="KeyList1" runat="server" Visible="false" Width="200px" OnSelectedIndexChanged="GetandSettheValues" AutoPostBack="true">
     <asp:ListItem Selected="True">--Select--</asp:ListItem>
    </asp:DropDownList>
   <asp:ImageButton ID="ImgRefresh" runat="server" ToolTip="Click to Refresh" OnClick="Refresh_values" ImageUrl="~/Image/refresh.png" Width="20px" Height="20px" Visible="false"/>
   <asp:Label ID="Label10" runat="server" Text="Value" ForeColor="Wheat" Visible="false"></asp:Label> 
     <asp:TextBox ID="TextBox1" runat="server" Width="200px" ReadOnly="true"></asp:TextBox>
     </td></tr>
     <tr><td style="width: 10px; height:10px;" valign="top" >
    <asp:Label ID="Label3" runat="server" Text="Value" ForeColor="Wheat"></asp:Label></td><td>
    <asp:TextBox ID="TextBox2" runat="server" Width="200px" ReadOnly="true"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TextBox1" Display="Dynamic" ErrorMessage="*" ValidationGroup="Button1" />
    </td></tr>  
    </table>
    </div>
      <br />
    <div align="center">
    <asp:Button ID="Button2" runat="server" ForeColor="DarkMagenta"   Height="45" Width="150" Font-Bold="true" Text="<< Reset & Refresh" ToolTip="To Clear the Text Values" OnClick="Refresh_list" />
    <%--<asp:Button ID="Button1" runat="server" ForeColor="DarkMagenta"    Height="45" Width="200" OnClientClick = "return confirm('Are you sure you want to Add');" Font-Bold="true"  Text="Add The New Tags" OnClick="Add_values" ToolTip="Enter the Key value and click Add" />--%>

     <asp:Button ID="Button6" runat="server" ForeColor="DarkMagenta"    Height="45" Width="200"  Font-Bold="true" OnClientClick = "return confirm('Are you sure you want to Add');"  Text="Add The New Tags" OnClick="Add_values" ToolTip="Enter the Key value and click Add" />

    <asp:Button ID="Button3" runat="server" ForeColor="DarkMagenta"   Height="45" Width="200" Font-Bold="true"   OnClientClick = "return confirm('Are you sure you want to Update!!!');"   Text="Update The Tag Values" OnClick="update_values"  ToolTip="Please Enter The Key and Update The Values with previous One and click Update" ValidationGroup="A" />
    <asp:Button ID="Button4" runat="server"  ForeColor="DarkMagenta"   Height="45" Width="200" Font-Bold="true"  Text="Delete The Tags" OnClick="detele_values"  OnClientClick = "return confirm('Are you sure you want to Delete');" ToolTip="Please Enter Only Key name and Press Delete" />
   <%-- <asp:Button ID="Button6" runat="server" ForeColor="DarkMagenta"   Height="45" Width="100" Font-Bold="true"  Text="Refresh" OnClick="Refresh_values" ToolTip="Enter the Key value and click Add" />--%>
    <asp:Button ID="Button5" runat="server"  ForeColor="DarkMagenta"   Height="45" Width="150" Font-Bold="true"  Text="More >>" ToolTip="Do More" OnClick="Move" />
     
     
    </div>

</asp:Content>
