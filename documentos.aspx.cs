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
    public partial class documentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList3.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList4.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList1.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList2.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList5.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList6.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList7.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList8.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList9.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList10.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList12.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList13.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList14.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList15.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList16.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList17.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList18.SelectedValue = DateTime.Now.Day.ToString();
            Label19.Text = Session["numerocaso"].ToString();
            Label20.Text = Session["fechacaso"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {


                string saveStaff = "UPDATE RECLAMOS SET recepcion=@recepcion, entrega=@entrega, confirmacion=@confirmacion, salidapago=@salidapago, ingreso=@ingreso, alta=@alta, hospitalizado=@hospitalizado, uci=@uci, observacionesdoc=@observacionesdoc, valor=@valor, registrado=@registrado WHERE numero=@numero";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@recepcion", SqlDbType.VarChar).Value = DropDownList3.SelectedValue + "/" + DropDownList11.SelectedValue + "/" + DropDownList4.SelectedValue;
                    querySaveStaff.Parameters.Add("@entrega", SqlDbType.VarChar).Value = DropDownList1.SelectedValue + "/" + DropDownList2.SelectedValue + "/" + DropDownList5.SelectedValue;
                    querySaveStaff.Parameters.Add("@confirmacion", SqlDbType.VarChar).Value = DropDownList6.SelectedValue + "/" + DropDownList7.SelectedValue + "/" + DropDownList8.SelectedValue;
                    querySaveStaff.Parameters.Add("@salidapago", SqlDbType.VarChar).Value = DropDownList9.SelectedValue + "/" + DropDownList10.SelectedValue + "/" + DropDownList12.SelectedValue;
                    querySaveStaff.Parameters.Add("@ingreso", SqlDbType.VarChar).Value = DropDownList13.SelectedValue + "/" + DropDownList14.SelectedValue + "/" + DropDownList15.SelectedValue;
                    querySaveStaff.Parameters.Add("@alta", SqlDbType.VarChar).Value = DropDownList16.SelectedValue + "/" + DropDownList17.SelectedValue + "/" + DropDownList18.SelectedValue;
                    //querySaveStaff.Parameters.Add("@fecha", SqlDbType.DateTime).Value = DateTime.Parse(Label20.Text);
                    querySaveStaff.Parameters.Add("@numero", SqlDbType.Int).Value = Int16.Parse(Label19.Text);
                    querySaveStaff.Parameters.Add("@hospitalizado", SqlDbType.Int).Value = Int16.Parse(TextBox2.Text);
                    querySaveStaff.Parameters.Add("@uci", SqlDbType.Int).Value = Int16.Parse(TextBox7.Text);
                    querySaveStaff.Parameters.Add("@observacionesdoc", SqlDbType.VarChar).Value = TextBox6.Text;
                    querySaveStaff.Parameters.Add("@valor", SqlDbType.Money).Value = Double.Parse(TextBox8.Text);
                    querySaveStaff.Parameters.Add("@registrado", SqlDbType.VarChar).Value = DropDownList19.SelectedValue.ToString();
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