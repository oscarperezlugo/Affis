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
    public partial class AdminCert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {

                
                string saveStaff = "INSERT into Certificados (Certificados, Numero, Ejecutivo, Accion, Fecha, Observaciones) VALUES (@Certificados, @Numero, @Ejecutivo, @Accion, @Fecha, @Observaciones)";
                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@Certificados", SqlDbType.VarChar).Value = TextBox5.Text;
                    querySaveStaff.Parameters.Add("@Numero", SqlDbType.SmallInt).Value = Int16.Parse(TextBox5.Text);
                    querySaveStaff.Parameters.Add("@Ejecutivo", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                    querySaveStaff.Parameters.Add("@Accion", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;
                    querySaveStaff.Parameters.Add("@Fecha", SqlDbType.DateTime).Value = DateTime.Now;
                    querySaveStaff.Parameters.Add("@Observaciones", SqlDbType.VarChar).Value = TextBox6.Text;
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('ASIGNACION EXITOSO')</script>");
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }




                }
            }
        }

        public void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioProceso.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCert.aspx");

        }
    }
}