using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EmpDetailsWithDatabase
{
    public partial class DisplayEmpDetails : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = EmpInfo; Integrated security = true");
                string readquery = "select * from TableEmp";
                adapter = new SqlDataAdapter(readquery, con);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            catch(Exception ex)
            {
                //lblMsg.Text = "<font color='red'>" + ex.Message + "</font>";
            }
        }
    }
}