 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="KPP_Pricing_Tool.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.7.0.min.js"></script>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KPP Pricing Tool</title>

</head>

<body>
    <div class="side-navbar">
        <ul class="nav">
            <li class="nav-item">
                <button id="mode-toggle" class="nav-link">Toggle Mode</button>

            </li>
            <li class="nav-item">
                <a class="nav-link" href="home.aspx"><b>Rest</b></a>
            </li>
            <li class="nav-item">
                
            </li>
        </ul>
    </div>

    <div class="top-navbar">
        <div class="topnavbar">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link " href="home.aspx"><b>Pricing Tool</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://whitehatsearch.kemptongroup.com/index.php"><b>White Hat Tool</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://kppsearch.kemptongroup.com/"><b>Data Tool</b></a>
                </li>
                <li class="nav-item">
                    <div id="approvalContainer" runat="server"></div>
                </li>
                <li class="nav-item">
                    <div id="container" runat="server"></div>
                </li>
            </ul>
        </div>
    </div>

    <div class="content">
        <div class="main-content">
            <div class="main-content">
                <h1 class="title-main">KPP Pricing Approval Tool</h1>
                <form runat="server" class="row g-3">
                    <div class="col-md-12">
                        <asp:SqlDataSource ID="cptsearchdata" runat="server" ConnectionString="<%$ ConnectionStrings:LOOKUP ToolsConnectionString %>" SelectCommand="SELECT [Allowable], [Notes], [Category] FROM [pricing_descriptions] WHERE ([Procedure_Code] = @Procedure_Code)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="cptsearch" PropertyName="Text" Name="Procedure_Code" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="col-md-6 " >

                        <asp:Label runat="server" Text="CPT Codes" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="cptsearch" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" Text="Price" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="priceTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" CssClass="btn btn-primary"></asp:Button>
                    </div>
                    <div class="col-md-12">
                        <asp:GridView ID="GridView" runat="server" DataSourceID="cptsearchdata" CssClass="table"></asp:GridView>
                        
                        
                    </div>
                </form>
                            <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
        <div class="card-header">KPP Pricing Tool V1</div>
        <div class="card-body">
            <h4 class="card-title"></h4>
            <p class="card-text"></p>
        </div>

            </div>
        </div>
    </div>

    <!-- Add Bootstrap JavaScript dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="Script.js"></script>
</body>





</html>