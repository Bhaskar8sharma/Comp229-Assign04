<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Model" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">  
        <h1> Wrath Of Kings</h1>         
       <asp:GridView ID="Gviewmp" runat="server" AutoGenerateColumns="false"  DataKeyField="MiniName" >
             <Columns>
                 <asp:HyperLinkField Text="Edit" ControlStyle-CssClass="btn btn-primary btn-sm" 
                     runat="server" DataNavigateUrlFields="MiniName" DataNavigateUrlFormatString="Update.aspx?MiniName={0}" />
                     <asp:TemplateField><ItemTemplate>
                     <asp:Button ID="delbtn" OnClick="del_Click" Text="Delete" runat="server" CssClass="btn btn-danger btn-sm"/>
                 </ItemTemplate> </asp:TemplateField>              
                <asp:BoundField DataField="Mininame" HeaderText="Name" />
                <asp:BoundField DataField="faction" HeaderText="Faction" />
                <asp:BoundField DataField="rank" HeaderText="Rank" />
                <asp:BoundField DataField="_base" HeaderText="Base" />
                <asp:BoundField DataField="size" HeaderText="Size" />
                <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />
                <asp:ImageField DataImageUrlField="ImageUrl"  ControlStyle-Height="250px" ControlStyle-Width="250px" ></asp:ImageField>               
           </Columns>
        </asp:GridView>
</asp:Content>
