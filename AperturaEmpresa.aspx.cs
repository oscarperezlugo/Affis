using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows;
//using System.Windows.Forms;

namespace Affis
{
    public partial class Base : System.Web.UI.Page
    {
        public DropDownList DropDownList11;
        public Label nombrevacio;
        public TextBox Textbox99;

        protected void Page_Load1(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
        }

        public bool vacio; // Variable utilizada para saber si hay algún TextBox vacio.

        public HtmlInputText Text2 { get; private set; }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            //using (SqlConnection openCon = new SqlConnection("Data Source=OscarJCPL;Initial Catalog=Affinity;Integrated Security=True"))
            {
                //string empresa = String.Format("{0}", Request.Form["TextBox1"]);
                //string direccion = String.Format("{0}", Request.Form["TextBox2"]);
                //string medio = String.Format("{0}", Request.Form["TextBox3"]);
                //string telempresa = String.Format("{0}", Request.Form["TextBox4"]);
                //string ruc = String.Format("{0}", Request.Form["Text1"]);
                //string dirper = String.Format("{0}", Request.Form["Text1"]);
                //string email = String.Format("{0}", Request.Form["Text2"]);
                //string cargo = String.Format("{0}", Request.Form["cargo"]);
                //string cargo = "prueba";
                //string fechanac = String.Format("{0}", DropDownList1.SelectedValue + DropDownList3.SelectedValue + DropDownList4.SelectedValue);
                //string fechavig = String.Format("{0}", DropDownList5.SelectedValue + DropDownList6.SelectedValue + DropDownList7.SelectedValue);
                // string fechaefec = String.Format("{0}", DropDownList8.SelectedValue + DropDownList9.SelectedValue + DropDownList10.SelectedValue);
                string nombre = Text2.Value;
                //string codigo = String.Format("{0}", Request.Form["codigo"]);
                //string telcelular = String.Format("{0}", Request.Form["Text7"]);
                //string teldom = String.Format("{0}", Request.Form["Text8"]);
                string mdc = String.Format("{0}", DropDownList11.SelectedValue);

                string saveStaff = "INSERT into EMPRESAS (NOMBRECOMERCIAL, MEDIODECOBRO) VALUES (@NOMBRECOMERCIAL, @MEDIODECOBRO)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    //querySaveStaff.Parameters.Add("@RUC", SqlDbType.VarChar).Value = ruc.ToString();
                    querySaveStaff.Parameters.Add("@NOMBRECOMERCIAL", SqlDbType.VarChar).Value = nombre.ToString();
                    querySaveStaff.Parameters.Add("@MEDIODECOBRO", SqlDbType.VarChar).Value = mdc.ToString();
                    //querySaveStaff.Parameters.Add("@TOMADORPRINCIPAL", SqlDbType.VarChar).Value = TextBox1.Text;
                    //querySaveStaff.Parameters.Add("@ENTIDADTOMADORA", SqlDbType.VarChar).Value = empresa.ToString();
                    //querySaveStaff.Parameters.Add("@DIRECCIONEMPLEADOR", SqlDbType.VarChar).Value = direccion.ToString();
                    //querySaveStaff.Parameters.Add("@MEDIODECOBRO", SqlDbType.VarChar).Value = medio.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONOEMPRESA", SqlDbType.VarChar).Value = telempresa.ToString();
                    //querySaveStaff.Parameters.Add("@DIRECCION", SqlDbType.VarChar).Value = dirper.ToString();
                    //querySaveStaff.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = email.ToString();
                    //querySaveStaff.Parameters.Add("@CARGO", SqlDbType.VarChar).Value = cargo.ToString();
                    //querySaveStaff.Parameters.Add("@FECHANAC", SqlDbType.VarChar).Value = fechanac.ToString();
                    //querySaveStaff.Parameters.Add("@FECHAEFECTIVA", SqlDbType.VarChar).Value = fechaefec.ToString();
                    //querySaveStaff.Parameters.Add("@FECHAVIGENCIA", SqlDbType.VarChar).Value = fechavig.ToString();
                    //querySaveStaff.Parameters.Add("@CODIGO", SqlDbType.VarChar).Value = codigo.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONOCELULAR", SqlDbType.VarChar).Value = telcelular.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONODOMICILIO", SqlDbType.VarChar).Value = teldom.ToString();                    
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        Response.Write(ex);
                    }
                    finally
                    {
                        if(Text2.Value == String.Empty)
                        {
                            this.nombrevacio.Text = "Ingrese un nombre comercial";
                            
                        }
                        else {
                            openCon.Close();
                            //Response.Write(Text2.Value+"<script>alert('')</script>");
                        }

                    }


                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Response.Redirect("InicioProceso.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Response.Redirect("Beneficiarios.aspx");
        }
    }
}