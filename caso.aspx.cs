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
    public partial class caso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList3.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList4.SelectedValue = DateTime.Now.Day.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {


                string saveStaff = "INSERT into CASOS (cedula, telefonodom, entidadtomadora, nombre, direccion, ejecutivo, Fecha) VALUES (@cedula, @telefonodom, @entidadtomadora, @nombre, @direccion, @ejecutivo, @Fecha)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@cedula", SqlDbType.VarChar).Value = TextBox1.Text;
                    querySaveStaff.Parameters.Add("@telefonodom", SqlDbType.VarChar).Value = TextBox3.Text;
                    querySaveStaff.Parameters.Add("@entidadtomadora", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                    querySaveStaff.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBox2.Text;
                    querySaveStaff.Parameters.Add("@direccion", SqlDbType.VarChar).Value = TextBox4.Text;
                    querySaveStaff.Parameters.Add("@ejecutivo", SqlDbType.VarChar).Value = DropDownList2.SelectedValue + "/" + DropDownList4.SelectedValue + "/" + DropDownList11.SelectedValue;                    
                    querySaveStaff.Parameters.Add("@Fecha", SqlDbType.VarChar).Value = DropDownList3.SelectedValue + "/" + DropDownList11.SelectedValue + "/" + DropDownList4.SelectedValue;

                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('CASO CREADO')</script>");
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }




                }
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioProceso.aspx");
        }
    }
}