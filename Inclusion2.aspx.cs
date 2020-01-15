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


    public partial class Inclusion2 : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            if (Session["empresa"] != null)
            {
                TextBox1.Text = Session["empresa"].ToString();
                TextBox2.Text = Session["direccion"].ToString();
                TextBox3.Text = Session["medio"].ToString();
                TextBox4.Text = Session["telefono"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["cedula"] = Text3.Text;
            Session["nombre"] = Text6.Text;
            Session["genero"] = String.Format("{0}", DropDownList1.SelectedValue);
            Session["ano"] = String.Format("{0}", DropDownList2.SelectedValue);
            Session["mes"] = String.Format("{0}", DropDownList3.SelectedValue);
            Session["dia"] = String.Format("{0}", DropDownList4.SelectedValue);

            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {
                string empresa = TextBox1.Text;
                string direccion = TextBox2.Text;
                string medio = TextBox3.Text;
                string telempresa = TextBox4.Text;
                string cedula = Text3.Text;
                string dirper = Text1.Text;
                string email = Text2.Text;
                //string cargo = String.Format("{0}", Request.Form["cargo"]);
                string cargo = cargo1.Text;
                string fechanac = String.Format("{0}", DropDownList2.SelectedValue + DropDownList3.SelectedValue + DropDownList4.SelectedValue);
                string fechavig = String.Format("{0}", DropDownList5.SelectedValue + DropDownList6.SelectedValue + DropDownList7.SelectedValue);
                string fechaefec = String.Format("{0}", DropDownList8.SelectedValue + DropDownList9.SelectedValue + DropDownList10.SelectedValue);
                string nombre = Text6.Text;
                string codigo = "codigo";
                string telcelular = Text7.Text;
                string teldom = Text8.Text;
                string genero = String.Format("{0}", DropDownList1.SelectedValue);
                

                string saveStaff = "INSERT into ASEGURADOS (CEDULA, NOMBRESCOMPLETOS, GENERO, FECHADENACIMIENTO, ENTIDADTOMADORA, DIRECCIONEMPLEADOR, MEDIODECOBRO, TELEFONOEMPRESA, DIRECCION, EMAIL, CARGO, FECHAEFECTIVA, FECHAVIGENCIA, CODIGO, TELEFONOCELULAR, TELEFONODOMICILIO) VALUES (@CEDULA, @NOMBRESCOMPLETOS, @GENERO, @FECHADENACIMIENTO, @ENTIDADTOMADORA, @DIRECCIONEMPLEADOR, @MEDIODECOBRO, @TELEFONOEMPRESA, @DIRECCION, @EMAIL, @CARGO, @FECHAEFECTIVA, @FECHAVIGENCIA, @CODIGO, @TELEFONOCELULAR, @TELEFONODOMICILIO)";
                
                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@CEDULA", SqlDbType.VarChar).Value = cedula.ToString();
                    querySaveStaff.Parameters.Add("@NOMBRESCOMPLETOS", SqlDbType.VarChar).Value = nombre.ToString();
                    querySaveStaff.Parameters.Add("@GENERO", SqlDbType.VarChar).Value = genero.ToString();
                    querySaveStaff.Parameters.Add("@ENTIDADTOMADORA", SqlDbType.VarChar).Value = empresa.ToString();
                    querySaveStaff.Parameters.Add("@DIRECCIONEMPLEADOR", SqlDbType.VarChar).Value = direccion.ToString();
                    querySaveStaff.Parameters.Add("@MEDIODECOBRO", SqlDbType.VarChar).Value = medio.ToString();
                    querySaveStaff.Parameters.Add("@TELEFONOEMPRESA", SqlDbType.VarChar).Value = telempresa.ToString();
                    querySaveStaff.Parameters.Add("@DIRECCION", SqlDbType.VarChar).Value = dirper.ToString();
                    querySaveStaff.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = email.ToString();
                    querySaveStaff.Parameters.Add("@CARGO", SqlDbType.VarChar).Value = cargo.ToString();
                    querySaveStaff.Parameters.Add("@FECHADENACIMIENTO", SqlDbType.VarChar).Value = fechanac.ToString();
                    querySaveStaff.Parameters.Add("@FECHAEFECTIVA", SqlDbType.VarChar).Value = fechaefec.ToString();
                    querySaveStaff.Parameters.Add("@FECHAVIGENCIA", SqlDbType.VarChar).Value = fechavig.ToString();
                    querySaveStaff.Parameters.Add("@CODIGO", SqlDbType.VarChar).Value = codigo.ToString();
                    querySaveStaff.Parameters.Add("@TELEFONOCELULAR", SqlDbType.VarChar).Value = telcelular.ToString();
                    querySaveStaff.Parameters.Add("@TELEFONODOMICILIO", SqlDbType.VarChar).Value = teldom.ToString();
                    
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        



                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }
                    finally 
                    {
                        Response.Write("<script>alert('REGISTRO EXITOSO')</script>");
                        Response.Redirect("Adicion.aspx"); 
                    }
                    
                   


                }
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adicion.aspx");
            //Server.Transfer("Adicion.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://srienlinea.sri.gob.ec/sri-en-linea/SriDeclaracionesWeb/ConsultaImpuestoRenta/Consultas/consultaImpuestoRenta");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConsultaCedula");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["tomasegur"] = "si"; 
        }
            
    }
}