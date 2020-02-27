using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Label = System.Web.UI.WebControls.Label;
//using Label = System.Windows.Forms.Label;
using TextBox = System.Web.UI.WebControls.TextBox;

namespace Affis
{


    public partial class Beneficiarios : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();

        private decimal total = (decimal)0.0;
        private int ultimo;
        string tipocuenta;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label5.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            if (Session["cedula"] != null)
            {
                //Label3.Text = Session["nombre"].ToString();
                Label4.Text = Session["cedula"].ToString();

            }
            







        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            // define your connection string (typically from a .config file) and your query WITH parameters!
            //string connectionString = "Data Source=OSCARJCPL;Initial Catalog=Affinity;Integrated Security=True";
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "UPDATE ASEGURADOS SET BENEFICIARIO1=@b1, BENEFICIARIO2=@b2, BENEFICIARIO3=@b3, BENEFICIARIO4=@b4, BENEFICIARIO5=@b5 WHERE CEDULA=@user AND RELACION=TOMADOR";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = Label4.Text;                
                cmd.Parameters.Add("@b1", SqlDbType.VarChar, 50).Value = TextBox1.Text + TextBox2.Text + TextBox3.Text;
                cmd.Parameters.Add("@b2", SqlDbType.VarChar, 50).Value = TextBox4.Text + TextBox5.Text + TextBox6.Text;
                cmd.Parameters.Add("@b3", SqlDbType.VarChar, 50).Value = TextBox7.Text + TextBox8.Text + TextBox9.Text;
                cmd.Parameters.Add("@b4", SqlDbType.VarChar, 50).Value = TextBox10.Text + TextBox11.Text + TextBox12.Text;
                cmd.Parameters.Add("@b5", SqlDbType.VarChar, 50).Value = TextBox13.Text + TextBox14.Text + TextBox15.Text;
                //cmd.Parameters.Add("@cer", SqlDbType.VarChar, 50).Value = Label3.Text;

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
                    Response.Write("<script>alert('REGISTRO EXITOSO')</script>");
                    //MessageBox.Show("PROCESO EXITOSO");
                }
            }



        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Response.Redirect("InicioProceso.aspx");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {            
            Response.Redirect("Cobranzas.aspx");
        }
    }
}
    
            

        


                
           
        
   
        
