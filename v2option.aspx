<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="v2option.aspx.cs" Inherits="KPP_Pricing_Tool.Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KPP Pricing Tool</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .custom-navbar {
            background: linear-gradient(to right, #246DFF, #00DBDB);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark custom-navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Pricing Tool</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="home.aspx"><b>Reload</b></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.aspx">Contact</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="home.aspx"><b>Pricing Tool</b></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">White Hat Tool</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="datatool.aspx"><b>Data Tool</b></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

<%--    <div class="content">
        <div class="main-content">
            <h1 class="title-main">KPP Pricing Approval Tool</h1>
            <form runat="server">
                <asp:SqlDataSource ID="cptsearchdata" runat="server" ConnectionString="<%$ ConnectionStrings:LOOKUP ToolsConnectionString %>" SelectCommand="SELECT [Allowable] FROM [pricing_descriptions] WHERE ([Procedure_Code] = @Procedure_Code)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="cptsearch" PropertyName="Text" Name="Procedure_Code" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label runat="server" Text="CPT Codes"></asp:Label>
                <asp:TextBox ID="cptsearch" runat="server"></asp:TextBox>
                <asp:Label runat="server" Text="Price"></asp:Label>
                <asp:TextBox ID="priceTextBox" runat="server"></asp:TextBox>
                <asp:Label runat="server" Text="Percent remove later"></asp:Label>
                <asp:TextBox ID="percent" runat="server"></asp:TextBox>
                <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="cptsearchdata"></asp:GridView>
            </form>
        </div>
    </div>

    <script src="Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>--%>
