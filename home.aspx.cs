using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace KPP_Pricing_Tool
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        //{

        //}

        //protected void cptsearch_TextChanged(object sender, EventArgs e)
        //{

        //}
        protected void search_Click(object sender, EventArgs e)
        {
            string procedureCode = cptsearch.Text.Trim();
            string connectionString = "Data Source=devsql01;Initial Catalog=LOOKUP Tools;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT [Allowable], [Percent_num], [Why_Not_Approved] FROM [cptsearchdb] WHERE [Procedure_Code] = @Procedure_Code";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Procedure_Code", procedureCode);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    decimal allowable = Convert.ToDecimal(reader["Allowable"]);
                    decimal percent = Convert.ToDecimal(reader["Percent_num"]);

                    decimal userInputPrice = Convert.ToDecimal(priceTextBox.Text);

                    if (userInputPrice <= (allowable * percent / 100))
                    {
                        // Approved
                        GridView.BackColor = System.Drawing.Color.Green;
                        ClearNotApprovedLabel();
                        DisplayApprovedLabel();
                    }
                    else
                    {
                        // Not Approved
                        GridView.BackColor = System.Drawing.Color.Red;
                        
                        DisplayNotApprovedLabel();
                        ClearApprovedLabel();
                        //Response.Redirect("notapproved.aspx");
                        return; 
                    }
                }
                else
                {
                    // CPT code not found
                    GridView.BackColor = System.Drawing.Color.Yellow;
                }

                reader.Close();
            }

        }

        private void DisplayNotApprovedLabel()
        {
            Label notApprovedLabel = new Label();
            notApprovedLabel.Text = "Not Approved Ask sam if you have any other questions";
            
            notApprovedLabel.ForeColor = System.Drawing.Color.White;
            notApprovedLabel.BackColor = System.Drawing.Color.Red;
            notApprovedLabel.Style["padding"] = "25px";
            notApprovedLabel.Style["font-weight"] = "bold";
            notApprovedLabel.Style["margin-top"] = "10px";
            notApprovedLabel.Style["text-align"] = "center";

            // Add the label control to a container on your page

            container.Controls.Add(notApprovedLabel); // Replace 'container' with the actual container ID where you want to display the label


        }

        private void ClearNotApprovedLabel()
        {
            // Remove the label control from the container, if it exists
            Label notApprovedLabel = container.FindControl("notApprovedLabel") as Label; // Replace 'container' and 'notApprovedLabel' with the actual container ID and label ID
            if (notApprovedLabel != null)
            {
                container.Controls.Remove(notApprovedLabel);
            }
        }
        private void DisplayApprovedLabel()
        {
            Label ApprovedLabel = new Label();
            ApprovedLabel.Text = "Approved";
            ApprovedLabel.ForeColor = System.Drawing.Color.White;
            ApprovedLabel.BackColor = System.Drawing.Color.Green;
            ApprovedLabel.Style["padding"] = "25px";
            ApprovedLabel.Style["font-weight"] = "bold";
            ApprovedLabel.Style["margin-top"] = "10px";
            ApprovedLabel.Style["text-align"] = "center";

            // Add the label control to a container on your page

            container.Controls.Add(ApprovedLabel); // Replace 'container' with the actual container ID where you want to display the label


        }

        private void ClearApprovedLabel()
        {
            // Remove the label control from the container, if it exists
            Label ApprovedLabel = container.FindControl("ApprovedLabel") as Label; // Replace 'container' and 'notApprovedLabel' with the actual container ID and label ID
            if (ApprovedLabel != null)
            {
                container.Controls.Remove(ApprovedLabel);
            }
        }
        protected void search2_Click(object sender, EventArgs e)
        {
            string procedureCode = TextBox1.Text.Trim();
            string connectionString = "Data Source=devsql01;Initial Catalog=LOOKUP Tools;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT [Allowable], [Percent_num], [Why_Not_Approved] FROM [drgsearchdb] WHERE [Procedure_Code] = @Procedure_Code";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Procedure_Code", procedureCode);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    decimal allowable = Convert.ToDecimal(reader["Allowable"]);
                    decimal percent = Convert.ToDecimal(reader["Percent_num"]);

                    decimal userInputPrice = Convert.ToDecimal(TextBox2.Text);

                    if (userInputPrice <= (allowable * percent / 100))
                    {
                        // Approved
                        GridView1.BackColor = System.Drawing.Color.Green;
                        ClearNotApprovedLabel();
                        DisplayApprovedLabel();
                    }
                    else
                    {
                        // Not Approved
                        GridView1.BackColor = System.Drawing.Color.Red;

                        DisplayNotApprovedLabel();
                        ClearApprovedLabel();
                        //Response.Redirect("notapproved.aspx");
                        return;
                    }
                }
                else
                {
                    // CPT code not found
                    GridView1.BackColor = System.Drawing.Color.Red;
                }

                reader.Close();
            }

        }
    }

   }






















