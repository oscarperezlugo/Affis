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
    public partial class CreacionProductosWSM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {

                string plan = DropDownList1.SelectedValue.ToString();

                string edadmin = DropDownList2.SelectedValue.ToString();

                string edadmaxtom = DropDownList3.SelectedValue.ToString();

                string edadmaxren = DropDownList4.SelectedValue.ToString();
                string aplica = DropDownList5.SelectedValue.ToString();
                string valor = TextBox5.Text;
                string codigo = TextBox6.Text;
                string producto = TextBox7.Text;

                string saveStaff = "INSERT into PRODUCTOS (Codigo, Producto, Plano, Edadminima, Edadmaxima, Edadmaximarenova, Aplicaa, Valor) VALUES (@Codigo, @Producto, @Plano, @Edadminima, @Edadmaxima, @Edadmaximarenova, @Aplicaa, @Valor)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@Codigo", SqlDbType.VarChar).Value = codigo;
                    querySaveStaff.Parameters.Add("@Producto", SqlDbType.VarChar).Value = producto;
                    querySaveStaff.Parameters.Add("@Plano", SqlDbType.VarChar).Value = plan;
                    querySaveStaff.Parameters.Add("@Edadminima", SqlDbType.VarChar).Value = edadmin;
                    querySaveStaff.Parameters.Add("@Edadmaxima", SqlDbType.VarChar).Value = edadmaxtom;
                    querySaveStaff.Parameters.Add("@Edadmaximarenova", SqlDbType.VarChar).Value = edadmaxren;
                    querySaveStaff.Parameters.Add("@Aplicaa", SqlDbType.VarChar).Value = aplica;
                    querySaveStaff.Parameters.Add("@Valor", SqlDbType.VarChar).Value = valor;



                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('PRODUCTO CREADO')</script>");
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }




                }
            }
        }
    }
}