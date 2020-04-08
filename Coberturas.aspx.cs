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


    public partial class Coberturas : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();

        private decimal total = (decimal)0.0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "COSTO"));
                Session["total"] = total;
            }
            else if(e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = String.Format("TOTAL {0:0.00}$", total);
                Session["prima"] = e.Row.Cells[4].Text;
            }
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {


                string saveStaff = "UPDATE ASEGURADOS SET TOTAL=@TOTAL WHERE CEDULA=@CEDULA AND RELACION='TOMADOR'";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    Double total = Double.Parse(Session["total"].ToString());
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@TOTAL", SqlDbType.Money).Value = total;
                    querySaveStaff.Parameters.Add("@CEDULA", SqlDbType.VarChar).Value = Session["cedula"];



                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('REGISTRO EXITOSO')</script>");
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }




                }
            }
            Response.Redirect("Certificado.aspx");
        }

       
    }
        
}