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


    public partial class Certificado : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();

        private decimal total = (decimal)0.0;
        private int ultimo;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label5.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            if (Session["nombre"] != null)
            {
                Label3.Text = Session["nombre"].ToString();
                Label4.Text = Session["cedula"].ToString();

            }






        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            String certificado = "SELECT distinct TOP 1 (Certificados) FROM Certificados ORDER BY Certificados DESC";
            SqlConnection Con = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity");
            SqlCommand ejecutar = new SqlCommand(certificado, Con);
            Con.Open();
            SqlDataReader leer = ejecutar.ExecuteReader();
            if (leer.Read() == true)
            {
                ultimo = Convert.ToInt32(leer["Certificados"].ToString());
                ultimo++;
                Con.Close();
                Label2.Text = ultimo.ToString();
                using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
                {
                    string saveStaff = "INSERT into Certificados (Certificados) VALUES (@Certificados)";
                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Certificados", SqlDbType.VarChar).Value = ultimo.ToString();

                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                        }
                        catch (SqlException ex)
                        {
                            MessageBox.Show("Error" + ex);
                        }
                        finally
                        {
                            openCon.Close();
                            
                            //MessageBox.Show("Registro Exitoso");
                            //Session["cedula"] = String.Format("{0}", Request.Form["Text3"]);
                            //Server.Transfer("Adicion.aspx");
                        }
                    }
                }
            }


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            // define your connection string (typically from a .config file) and your query WITH parameters!
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "UPDATE ASEGURADOS SET NUMERODECERTIFICADO=@cer WHERE CEDULA=@user AND RELACION=@pwd";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = Label4.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = "TOMADOR";
                cmd.Parameters.Add("@cer", SqlDbType.VarChar, 50).Value = Label2.Text;

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
                    Response.Redirect("Beneficiarios.aspx");
                }




                
            }
        }
    }
        
}