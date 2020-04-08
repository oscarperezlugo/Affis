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
    public partial class Reclamos2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["caso"].ToString();
            TextBox2.Text = Session["nombrecaso"].ToString();
            Label10.Text = Session["numerocaso"].ToString();
            Label11.Text = Session["fechacaso"].ToString();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {


                string saveStaff = "INSERT into RECLAMOS (cedula, nombre, relacion, asegurado, cobertura, diagnostico, causa, casa, plano, fecha, observaciones, numero) VALUES (@cedula, @nombre, @relacion, @asegurado, @cobertura, @diagnostico, @causa, @casa, @plano, @fecha, @observaciones, @numero)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@cedula", SqlDbType.VarChar).Value = TextBox1.Text;
                    querySaveStaff.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBox2.Text;
                    querySaveStaff.Parameters.Add("@relacion", SqlDbType.VarChar).Value = DropDownList5.SelectedValue;
                    querySaveStaff.Parameters.Add("@asegurado", SqlDbType.VarChar).Value = DropDownList12.SelectedValue;
                    querySaveStaff.Parameters.Add("@cobertura", SqlDbType.VarChar).Value = DropDownList8.SelectedValue;
                    querySaveStaff.Parameters.Add("@diagnostico", SqlDbType.VarChar).Value = TextBox5.Text;
                    querySaveStaff.Parameters.Add("@causa", SqlDbType.VarChar).Value = DropDownList9.SelectedValue;
                    querySaveStaff.Parameters.Add("@casa", SqlDbType.VarChar).Value = DropDownList10.SelectedValue;
                    querySaveStaff.Parameters.Add("@plano", SqlDbType.VarChar).Value = DropDownList11.SelectedValue;
                    querySaveStaff.Parameters.Add("@fecha", SqlDbType.DateTime).Value = DateTime.Parse(Session["fechacaso"].ToString());
                    querySaveStaff.Parameters.Add("@observaciones", SqlDbType.VarChar).Value = TextBox6.Text;
                    querySaveStaff.Parameters.Add("@numero", SqlDbType.Int).Value = Int16.Parse(Label10.Text);
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('RECLAMO CREADO')</script>");
                        Response.Redirect("documentos.aspx");
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
            Session["caso"] = null;
            Session["nombrecaso"] = null;
            Session["numerocaso"] = null;
            Session["fechacaso"] = null;
            Response.Redirect("InicioProceso.aspx");
        }
    }
}