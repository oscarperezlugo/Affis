using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{
    public partial class RecuperarPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["nombreusuario"] = TextBox1.Text;
            if (TextBox2.Text == TextBox3.Text)
            {

                string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
                string query = "UPDATE LOGIN$ SET CONTRASENA=@pass WHERE USUARIO=@user";


                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = TextBox2.Text;
                    cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = TextBox1.Text;


                    // open connection
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }
                    finally
                    {
                        con.Close();
                        Response.Write("<script>alert('ACTUALIZADO')</script>");
                        Response.Redirect("login.aspx");
                    }

                }
            }
            else
            {
                Response.Write("<script>alert('Las Contrasenas no coinciden')</script>");
            }
        }
    }
}