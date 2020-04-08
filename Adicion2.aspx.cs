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
    public partial class Adicion2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label14.Text = Session["nombreadicion"].ToString();
            Label15.Text = Session["relacionadicion"].ToString();
        }

        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["productoadc"] = DropDownList8.SelectedValue.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["planadc"] = DropDownList7.SelectedValue.ToString();
            Session["nombre"] = Session["nombreadicion"];
            Session["cedula"] = Session["cedulaadc"];
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {


                string saveStaff = "INSERT into ASEGURADOS (CEDULA, NOMBRESCOMPLETOS, TOMADOR, RELACION, PRIMARENTADIARIAPORHOSPITALIZACION, PRIMABECAEDUCATIVA, FECHAVENTA) VALUES (@CEDULA, @NOMBRESCOMPLETOS, @TOMADOR, @RELACION, @PRIMARENTADIARIAPORHOSPITALIZACION, @PRIMABECAEDUCATIVA, @FECHAVENTA)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@CEDULA", SqlDbType.VarChar).Value = Session["cedulaadc2"];
                    querySaveStaff.Parameters.Add("@NOMBRESCOMPLETOS", SqlDbType.VarChar).Value = Session["nombreadicion"];                    
                    querySaveStaff.Parameters.Add("@RELACION", SqlDbType.VarChar).Value = Session["relacionadicion"];
                    querySaveStaff.Parameters.Add("@TOMADOR", SqlDbType.VarChar).Value = Session["cedulaadc"];
                    querySaveStaff.Parameters.Add("@FECHAVENTA", SqlDbType.VarChar).Value = Session["fecha"];
                    querySaveStaff.Parameters.Add("@PRIMARENTADIARIAPORHOSPITALIZACION", SqlDbType.VarChar).Value = DropDownList8.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@PRIMABECAEDUCATIVA", SqlDbType.VarChar).Value = DropDownList7.SelectedValue.ToString();
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('REGISTRO EXITOSO')</script>");
                        Response.Redirect("Certificado.aspx");
                    }
                    catch (SqlException ex)
                    {
                        //Response.Write("<script>alert('ERROR')</script>");
                        MessageBox.Show("Error" + ex);
                    }




                }
            }
        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}