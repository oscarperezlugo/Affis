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
    public partial class Retenciones1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList4.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList13.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList16.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList14.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList17.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList12.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList15.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList18.SelectedValue = DateTime.Now.Day.ToString();
            if (Session["cedulacer"] != null) 
            {
                TextBox1.Text = Session["cedulacer"].ToString();
                TextBox2.Text = Session["nombrecer"].ToString();
                TextBox3.Text = Session["empresacer"].ToString();
                TextBox5.Text = Session["certicer"].ToString();
            }

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioProceso.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {


                string saveStaff = "INSERT into RETENCIONES (certificado, cedula, nombre, empresa, ejecutivoasignado, responsable, motivo, canal, fechasolicitud, fechaasignacion, fecharesolucion) VALUES (@certificado, @cedula, @nombre, @empresa, @ejecutivoasignado, @responsable, @motivo, @canal, @fechasolicitud, @fechaasignacion, @fecharesolucion)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@certificado", SqlDbType.VarChar).Value = TextBox5.Text;
                    querySaveStaff.Parameters.Add("@cedula", SqlDbType.VarChar).Value = TextBox1.Text;
                    querySaveStaff.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBox2.Text;
                    querySaveStaff.Parameters.Add("@empresa", SqlDbType.VarChar).Value = TextBox3.Text;
                    querySaveStaff.Parameters.Add("@ejecutivoasignado", SqlDbType.VarChar).Value = TextBox4.Text;
                    querySaveStaff.Parameters.Add("@responsable", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                    querySaveStaff.Parameters.Add("@motivo", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;                    
                    querySaveStaff.Parameters.Add("@canal", SqlDbType.VarChar).Value = DropDownList3.SelectedValue;
                    querySaveStaff.Parameters.Add("@fechasolicitud", SqlDbType.DateTime).Value = DropDownList4.SelectedValue + "/" + DropDownList11.SelectedValue + "/" + DropDownList12.SelectedValue;
                    querySaveStaff.Parameters.Add("@fechaasignacion", SqlDbType.DateTime).Value = DropDownList13.SelectedValue + "/" + DropDownList14.SelectedValue + "/" + DropDownList15.SelectedValue;
                    querySaveStaff.Parameters.Add("@fecharesolucion", SqlDbType.DateTime).Value = DropDownList16.SelectedValue + "/" + DropDownList17.SelectedValue + "/" + DropDownList18.SelectedValue;
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('RETENCION REGISTRADA')</script>");
                    }
                    catch (SqlException ex)
                    {
                        Response.Write("<script>alert('Error "+ex+"')</script>");                        
                    }
                }
            }
        }
    }
}