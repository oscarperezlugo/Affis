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


    public partial class Cobranzas : System.Web.UI.Page
    {


        //ConexionesDB conn = new ConexionesDB();

        //private decimal total = (decimal)0.0;
        //private int ultimo;
        string tipocuenta;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label5.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            if (Session["nombre"] != null)
            {
                TextBox6.Text = Session["nombre"].ToString();
                TextBox7.Text = Session["cedula"].ToString();

            }
            if (CheckBox1.Checked)
            {
                tipocuenta = CheckBox1.Text;
            }
            else if (CheckBox2.Checked)
            {
                tipocuenta = CheckBox2.Text;
            }
            else
            {
                tipocuenta = null;
            }
            if (Session["prima"] != null)
            {
                Label7.Text = Session["prima"].ToString();
            }
            else
            {
                Label7.Text = "0.0";
            }







        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "UPDATE ASEGURADOS SET MEDIODECOBRO=@pwd, TARJETA=@tar, BANCO=@ban, CUENTANUMERO=@cn, VENCIMIENTO=@ven, NUMERO=@num, CODIGODESEGURIDAD=@cds, TIPOCUENTA=@tdc WHERE CEDULA=@user";

            
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = TextBox7.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedValue.ToString();
                cmd.Parameters.Add("@tar", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedValue.ToString();
                cmd.Parameters.Add("@ban", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@cn", SqlDbType.VarChar, 50).Value = TextBox2.Text;
                cmd.Parameters.Add("@ven", SqlDbType.VarChar, 50).Value = TextBox3.Text;
                cmd.Parameters.Add("@num", SqlDbType.VarChar, 50).Value = TextBox5.Text;
                cmd.Parameters.Add("@cds", SqlDbType.VarChar, 50).Value = TextBox4.Text;
                cmd.Parameters.Add("@tdc", SqlDbType.VarChar, 50).Value = tipocuenta;
                

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
                    // MessageBox.Show("PROCESO EXITOSO");
                }
            }




        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Response.Redirect("InicioProceso.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            string fecha = Session["fecha"].ToString();
            string ficha = Session["ficha"].ToString();
            string bienvenido = Session["bienvenido"].ToString();
            Session.Clear();
            Session["bienvenido"] = bienvenido.ToString();
            Session["ficha"] = ficha.ToString();
            Session["fecha"] = fecha.ToString();
            Response.Redirect("InicioProceso.aspx");
        }
    }
}
    
            

        


                
           
        
   
        
