<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1 style="color: #D3B641">Model Info</h1>
        <br />
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Mini Name" />
            <asp:TextBox ID="MiniNameTextBox" runat="server" Style="width: 130px; margin-left: 86px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Faction" />
            <asp:TextBox ID="FactionTextBox" runat="server" Style="width: 130px; margin-left: 104px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Rank" />
            <asp:TextBox ID="RankTextBox" runat="server" Style="width: 130px; margin-left: 118px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Rank" />
            <asp:TextBox ID="BaseTextBox" runat="server" Style="width: 130px; margin-left: 118px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Size" />
            <asp:TextBox ID="SizeTextBox" runat="server" Style="width: 130px; margin-left: 125px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Deployment Zone" />
            <asp:TextBox ID="DeploymentZoneTextBox" runat="server" Style="width: 130px; margin-left: 40px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Mobility" />
            <asp:TextBox ID="MobilityTextBox" runat="server" Style="width: 130px; margin-left: 105px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Will Power" />
            <asp:TextBox ID="WillpowerTextBox" runat="server" Style="width: 130px; margin-left: 88px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Resiliance" />
            <asp:TextBox ID="ResilianceTextBox" runat="server" Style="width: 130px; margin-left: 88px;" />
        </div>
        <div style="color: #D3B641">
            <asp:Label runat="server" Style="width: 130px" Text="Wound Date" />
            <asp:TextBox ID="WoundDateTextBox" runat="server" Style="width: 130px; margin-left: 74px;" />
        </div>
        <div style="color: #D3B641">
            <br />
            <asp:Button ID="CancelButton" runat="server"
                CausesValidation="false" CssClass="btn btn-warning btn-lg"
                OnClick="CancelButton_Click" Text="cancel"
                UseSubmitBehavior="false" BackColor="#FF9900" ForeColor="White" Width="120px" />
            <asp:Button Text="Save" ID="Svbtn" CssClass="btn btn-primary btn-lg" runat="server"
                OnClick="Svbtn_Click" BackColor="#FF9900" style="margin-left: 55px" Width="120px" />
            <div id="email" runat="server">
                <br />
                <asp:Label runat="server" Text="Email" />
            </div>
            <div>
                <asp:TextBox runat="server" ID="emailtxt" />
            </div>
            <div>
                <asp:Label runat="server" Text="Message" />
            </div>
            <div>
                <asp:TextBox runat="server" ID="txt2" TextMode="MultiLine" />
            </div>
        </div>
    </div>

</asp:Content>

