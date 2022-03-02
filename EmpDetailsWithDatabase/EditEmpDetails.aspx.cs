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
    public partial class EditEmpDetails : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = EmpInfo; Integrated security = true");
                if (Request.QueryString["id"] != null && !IsPostBack)
                {
                    string select = "select * from TableEmp where EmpID = " + Request.QueryString["id"].ToString();
                    cmd = new SqlCommand();
                    cmd.CommandText = select;
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            //txtName.Text = dr.GetString(1);
                            //txtAge.Text = dr.GetInt32(2).ToString();
                            //txtPhone.Text = dr.GetString(3);
                            //txtSalary.Text = dr.GetInt32(4).ToString();
                            //txtEmail.Text = dr.GetString(5);
                            //Image1.ImageUrl = dr.GetString(6);

                            txtName.Text = dr["Name"].ToString();
                            txtAge.Text = dr["Age"].ToString();
                            txtPhone.Text = dr["Phone"].ToString();
                            txtSalary.Text = dr["Salary"].ToString();
                            txtEmail.Text = dr["Email"].ToString();
                            Image1.ImageUrl = dr["Image"].ToString();

                        }
                    }
                }
            }

            catch(Exception ex)
            {
                //lblMsg.Text = "<font color='red'>" + ex.Message + "</font>";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string imagepath = "";
                if (FileUpload1.HasFile)
                {
                    string path = Server.MapPath("UploadData") + "//" + FileUpload1.PostedFile.FileName;
                    FileUpload1.SaveAs(path);
                    imagepath = "~/UploadData/" + FileUpload1.PostedFile.FileName;
                }
                string insertionquery = "update TableEmp set Name='"+txtName.Text+"', Phone='"+txtPhone.Text+"', Salary='"+txtSalary.Text+"', Age='"+txtAge.Text+"', Email='"+txtEmail.Text+"', Image='"+imagepath+"' where EmpID = "+Request.QueryString["id"].ToString();
                cmd = new SqlCommand();
                cmd.CommandText = insertionquery;
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row > 0)
                {
                    lblMsg.Text = "<script>alert('Data has been updated !!!')</script>";
                    Response.Redirect("WebForm1.aspx");
                }
            }

            catch (Exception ex)
            {
                lblMsg.Text = "<font color='red'>" + ex.Message + "</font>";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string deletequery = "delete from TableEmp where EmpID=" + Request.QueryString["id"];
            cmd = new SqlCommand();
            cmd.CommandText = deletequery;
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();

            if (row > 0)
            {
                lblMsg.Text = "<script>alert('Data has been deleted !!!')</script>";
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}