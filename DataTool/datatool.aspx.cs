using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPP_Pricing_Tool
{
    public partial class datatool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    // Populate KPP ID dropdown list
            //    // Replace the code with your data retrieval logic
            //    kppid.Items.Add(new ListItem("KPP Name 1 (KPP ID: 1)", "1"));
            //    kppid.Items.Add(new ListItem("KPP Name 2 (KPP ID: 2)", "2"));

            //    // Populate state dropdown list
            //    // Replace the code with your data retrieval logic
            //    stateDropDown.Items.Add(new ListItem("State 1", "1"));
            //    stateDropDown.Items.Add(new ListItem("State 2", "2"));
            //}
        }
        protected void searchButton_Click(object sender, EventArgs e)
        {
            // Search button click event handler
            // Retrieve form data and perform search logic
        }

        protected void resetButton_Click(object sender, EventArgs e)
        {
            // Reset button click event handler
            // Clear form fields
        }

        protected void viewDetailsButton_Click(object sender, EventArgs e)
        {
            // View details button click event handler
            // Retrieve selected KPP ID and navigate to provider details page
        }

        protected void viewProvidersButton_Click(object sender, EventArgs e)
        {
            // View providers button click event handler
            // Retrieve selected state and navigate to providers by state page
        }
    }
}
