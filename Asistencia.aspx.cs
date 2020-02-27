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
    public partial class Asistencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {
                string saveStaff = "INSERT into Asistencia (Ejecutivo, Mes, Año, Dias) VALUES (@Ejecutivo, @Mes, @Año, @Dias)";
                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@Ejecutivo", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@Mes", SqlDbType.VarChar).Value = DropDownList3.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@Año", SqlDbType.VarChar).Value = DropDownList2.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@Dias", SqlDbType.VarChar).Value = TextBox6.Text;                    
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('REGISTRO CREADO')</script>");
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }
                }




            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Asistencia.aspx");
        }
    }
}