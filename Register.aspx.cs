using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FreeRegister
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StringCOn"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Register(Id,Name,phone,Email,Address,DOB) values(@Id,@Name,@phone,@Email,@Address,@DOB)", con);
            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(txtid.Text));
            cmd.Parameters.AddWithValue("@Name",txtname.Text);
            cmd.Parameters.AddWithValue("@phone",txtphone.Text);
            cmd.Parameters.AddWithValue("@Email",txtemail.Text);
            cmd.Parameters.AddWithValue("@Address",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DOB",txtdob.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Registered Successfully...')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed...')</script>");
            }
        }
    }
}