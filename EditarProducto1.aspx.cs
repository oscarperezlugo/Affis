using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class EditarProducto1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void BtnCancelar_Click(object sender, EventArgs e)
        {
            Session["CodigoCreacion"] = null;
            Response.Redirect("InicioProceso.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["CodigoCreacion"] = DropDownList1.SelectedValue.ToString();
            
            // define your connection string (typically from a .config file) and your query WITH parameters!
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "SELECT Producto, Plano, Edadminima, Edadmaxima, Edadmaximarenova, Aplicaa, Valor FROM PRODUCTOS WHERE Codigo=@codigo";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("Codigo", SqlDbType.VarChar, 50).Value = Session["CodigoCreacion"].ToString();


                // open connection
                con.Open();

                // establish data reader
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    // if at least one row is returned....  
                    if (dr.Read())
                    {
                        // get employee ID and role from the reader
                        string producto = dr.GetFieldValue<string>(0);
                        string plan = dr.GetFieldValue<string>(1);
                        string edadminima = dr.GetFieldValue<string>(2);
                        string edadmaxima = dr.GetFieldValue<string>(3);
                        string edadminimar = dr.GetFieldValue<string>(4);
                        string aplica = dr.GetFieldValue<string>(5);
                        decimal valor = dr.GetFieldValue<decimal>(6);
                        Session["producto"] = producto.ToString();
                        Session["plan"] = plan.ToString();
                        Session["edadminima"] = edadminima.ToString();
                        Session["edadmaxima"] = edadmaxima.ToString();
                        Session["edadminimar"] = edadminimar.ToString();
                        Session["aplica"] = aplica.ToString();
                        Session["valor"] = valor.ToString();
                        Response.Redirect("EditarProducto2");
                    }


                    dr.Close();
                }

                con.Close();
            }
        }
    }
}