<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:GridView ID="gridView" runat="server" AutoGenerateColumns="false" style="color: #D3B641"
                    cssClass="table table-bordered" OnRowDeleting="JsonGridView_RowDeleting" DataKeyNames="MiniName">
                    <Columns>
                        <asp:HyperLinkField DataTextField="MiniName" HeaderText="Mini Name" Visible="true" 
                             DataNavigateUrlFields="MiniName" DataNavigateUrlFormatString="Model.aspx?MiniName={0}" />
                        <asp:BoundField DataField="MiniName" HeaderText="Mini Name" Visible="false" />
                        <asp:BoundField DataField="faction" HeaderText="Faction" Visible="true" />
                        <asp:BoundField DataField="rank" HeaderText="Rank" Visible="true" />
                        <asp:BoundField DataField="_base" HeaderText="Base" Visible="true" />
                        <asp:BoundField DataField="size" HeaderText="size" Visible="true" />
                        <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" Visible="true" />
                        <asp:BoundField DataField="mobility" HeaderText="Mobility" Visible="true" />
                        <asp:BoundField DataField="willpower" HeaderText="Willpower" Visible="true" />
                        <asp:HyperLinkField Text="<i class='fa fa-pencil-square-o fa-lg' ></i> Update"
                            NavigateUrl="~/Update.aspx" ControlStyle-CssClass="btn btn-primary btn-sm" 
                            runat="server" DataNavigateUrlFields="MiniName" DataNavigateUrlFormatString="Update.aspx?MiniName={0}" />
                         <asp:CommandField DeleteText="<i class='fa fa-pencil-square-o fa-lg'></i> Delete" ControlStyle-CssClass="btn btn-primary btn-sm" ShowDeleteButton="true" ButtonType="Link" FooterStyle-BackColor="#D3B641" />
                    </Columns>
                </asp:GridView>
       <a href="Update.aspx" class="btn btn-primary btn-sm">
                   <i class="fa fa-plus"></i>Add Model
               </a>
</asp:Content>