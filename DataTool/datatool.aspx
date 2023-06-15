<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testsdatatool.aspx.cs" Inherits="KPP_Pricing_Tool.datatool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/datatool.css" rel="stylesheet" />
    <title>Not working still in dev KPP Data Tool 5</title>
</head>
<body>
    <div class="side-navbar">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>

    <div class="top-navbar">
        <div class="topnavbar">
            <ul>
                <li><a class="active" href="home.aspx"><b>Pricing Tool</b></a></li>
                <li><a href="">White Hat Tool</a></li>
                <li><a href="datatool.aspx"><b>Data Tool</b></a></li>
            </ul>
        </div>
    </div>

    <div class="content">
        <div class="main-content">

            <form id="form1" runat="server">
                <%-- Define the SQL data source connection --%>
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="YourConnectionString" SelectCommand="SELECT kppid FROM kpplist WHERE suppressProviderDataTool = 'NO' ORDER BY kppname ASC"></asp:SqlDataSource>
        <h2>Release 5</h2>
        <h5><a href="https://whitehatsearch.kemptongroup.com/">Toggle White Hat Data Tool</a></h5>
        <hr />
        <h4>Release Notes (11/5/2021)</h4>
        <ul>
            <li>Release 5:</li>
            <li>Added ability to search KPPFree providers by state.</li>
        </ul>
        <hr />
        <h2 style="color: slategray">Procedure Search</h2>
        <p style="color: mediumvioletred; font-size: 11pt">
            <em>Note: You must provide at least one keyword and/or CPT code in order to search.</em>
        </p>
        <table>
            <tr>
                <td>
                    <table id="searchTable" runat="server" border="0" cellpadding="10">
                        <tr>
                            <td><p>First Keyword:</p></td>
                            <td colspan="3">
                                <asp:SqlDataSource runat="server"></asp:SqlDataSource>
                                <asp:TextBox runat="server" ID="keyword1" Width="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><p>Second Keyword:</p></td>
                            <td colspan="3">
                                <asp:TextBox runat="server" ID="keyword2" Width="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><p>CPT Code:</p></td>
                            <td>
                                <asp:TextBox runat="server" ID="cpt" Width="200"></asp:TextBox>
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="andor" Width="70">
                                    <asp:ListItem Text="AND" Value="AND"></asp:ListItem>
                                    <asp:ListItem Text="OR" Value="OR"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="cptalt" Width="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><p>DRG Code:</p></td>
                            <td>
                                <asp:TextBox runat="server" ID="drg" Width="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><p>ICD9 Code:</p></td>
                            <td>
                                <asp:TextBox runat="server" ID="icd9" Width="200"></asp:TextBox>
                            </td>
                            <td><p>ICD10 Code:</p></td>
                            <td>
                                <asp:TextBox runat="server" ID="icd10" Width="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><p>State: (enter two-letter abbreviation)</p></td>
                            <td>
                                <asp:TextBox runat="server" ID="st" Width="200"></asp:TextBox>
                            </td>
                            <td><p>Zip Code: (5 digits)</p></td>
                            <td>
                                <asp:TextBox runat="server" ID="zip" Width="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" align="right">
                                <p>
                                    <asp:Button runat="server" ID="searchButton" Text="Search" OnClick="searchButton_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button runat="server" ID="resetButton" Text="Reset Form" OnClick="resetButton_Click" />
                                </p>
                            </td>
                        </tr>
                    </table>
                    <p>
                        <em>
                            Important Note: Cancer Specialists of Oklahoma will not appear in search results as their list of qualified procedures and pricing is not available.
                        </em>
                    </p>
                </td>
            </tr>
        </table>
        <hr />
        <h2 style="color: slategray">View KPP Provider Details</h2>
        <table id="detailsTable" runat="server" border="0" cellpadding="10">
            <tr>
                <td><p>Choose a KPP to view their provider information:</p></td>
                <td>
                    <asp:DropDownList runat="server" ID="kppid" Width="500"></asp:DropDownList>
                </td>
                <td colspan="2" align="right">
                    <p>
                        <asp:Button runat="server" ID="viewDetailsButton" Text="View KPP Details" OnClick="viewDetailsButton_Click" />
                    </p>
                </td>
            </tr>
        </table>
        <hr />
        <h2 style="color: slategray">View KPP Providers By State</h2>
        <table id="providersTable" runat="server" border="0" cellpadding="10">
            <tr>
                <td><p>Choose a state (missing states mean there are no KPPs in that state):</p></td>
                <td>
                    <asp:DropDownList runat="server" ID="state" Width="500"></asp:DropDownList>
                </td>
                <td colspan="2" align="right">
                    <p>
                        <asp:Button runat="server" ID="viewProvidersButton" Text="View KPP Providers in This State" OnClick="viewProvidersButton_Click" />
                    </p>
                </td>
            </tr>
        </table>
    </form>

        </div>
    </div>
</body>
</html>
