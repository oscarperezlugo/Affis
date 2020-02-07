using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TextBox = System.Web.UI.WebControls.TextBox;

namespace Affis
{


    public partial class Adicion : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();
        private void recuperarInfo()
        {
            
            filtrovalor filtrosend = new filtrovalor();
            filtrosend.filtro = DropDownList8.SelectedValue;
            filtrosend.plan = DropDownList7.SelectedValue;
            filtrosend.relacion = DropDownList5.SelectedValue;
            GridView1.DataSource = conn.Obtenerinfo3(filtrosend);
            GridView1.DataBind();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            //Label4.Text = "";//String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            if (IsPostBack)
                recuperarInfo();
            if (Session["cedula"] != null)
            {
                TextBox1.Text = Session["cedula"].ToString();
                Text6.Text = Session["nombre"].ToString();
                DropDownList1.SelectedValue = Session["genero"].ToString();
                DropDownList5.SelectedValue = "Titular";
                if (Session["tomasegur"] != null) 
                {
                    Text3.Text = Session["cedula"].ToString();
                    Text6.Text = Session["nombre"].ToString();
                    DropDownList1.SelectedValue = Session["genero"].ToString();
                    DropDownList5.SelectedValue = "Titular";
                    DropDownList4.SelectedValue = DateTime.Now.Day.ToString();                        
                    DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
                    DropDownList2.SelectedValue = DateTime.Now.Year.ToString();

                }
                else 
                {
                    DropDownList4.SelectedValue = DateTime.Now.Day.ToString();
                    DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
                    DropDownList2.SelectedValue = DateTime.Now.Year.ToString();
                }
            
            }
            else
            {
                DropDownList4.SelectedValue = DateTime.Now.Day.ToString();
                DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
                DropDownList2.SelectedValue = DateTime.Now.Year.ToString();
            }
        }
        

        protected void Button3_Click(object sender, EventArgs e)
        {
            recuperarInfo();
            Label5.Text = "$";
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //using (SqlConnection openCon = new SqlConnection("Data Source=OscarJCPL;Initial Catalog=Affinity;Integrated Security=True"))
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {
                //string empresa = String.Format("{0}", Request.Form["TextBox1"]);
                //string direccion = String.Format("{0}", Request.Form["TextBox2"]);
                //string medio = String.Format("{0}", Request.Form["TextBox3"]);
                //string telempresa = String.Format("{0}", Request.Form["TextBox4"]);
                string cedula = String.Format("{0}", Request.Form["Text3"]);
                //string dirper = String.Format("{0}", Request.Form["Text1"]);
                //string email = String.Format("{0}", Request.Form["Text2"]);
                //string cargo = String.Format("{0}", Request.Form["cargo"]);
                //string cargo = "prueba";
                string fechanac = String.Format("{0}", DropDownList2.SelectedValue + DropDownList11.SelectedValue + DropDownList4.SelectedValue);
                //string fechavig = String.Format("{0}", DropDownList5.SelectedValue + DropDownList6.SelectedValue + DropDownList7.SelectedValue);
                // string fechaefec = String.Format("{0}", DropDownList8.SelectedValue + DropDownList9.SelectedValue + DropDownList10.SelectedValue);
                string nombre = Text6.Text;
                //string codigo = String.Format("{0}", Request.Form["codigo"]);
                //string telcelular = String.Format("{0}", Request.Form["Text7"]);
                //string teldom = String.Format("{0}", Request.Form["Text8"]);
                string genero = String.Format("{0}", DropDownList1.SelectedValue);
                string relacion = String.Format("{0}", DropDownList5.SelectedValue);

                string saveStaff = "INSERT into ASEGURADOS (CEDULA, NOMBRESCOMPLETOS, GENERO, FECHADENACIMIENTO, TOMADOR, RELACION) VALUES (@CEDULA, @NOMBRESCOMPLETOS, @GENERO, @FECHADENACIMIENTO, @TOMADOR, @RELACION)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@CEDULA", SqlDbType.VarChar).Value = cedula.ToString();
                    querySaveStaff.Parameters.Add("@NOMBRESCOMPLETOS", SqlDbType.VarChar).Value = nombre.ToString();
                    querySaveStaff.Parameters.Add("@GENERO", SqlDbType.VarChar).Value = genero.ToString();
                    querySaveStaff.Parameters.Add("@RELACION", SqlDbType.VarChar).Value = relacion.ToString();
                    querySaveStaff.Parameters.Add("@TOMADOR", SqlDbType.VarChar).Value = TextBox1.Text;
                    //querySaveStaff.Parameters.Add("@ENTIDADTOMADORA", SqlDbType.VarChar).Value = empresa.ToString();
                    //querySaveStaff.Parameters.Add("@DIRECCIONEMPLEADOR", SqlDbType.VarChar).Value = direccion.ToString();
                    //querySaveStaff.Parameters.Add("@MEDIODECOBRO", SqlDbType.VarChar).Value = medio.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONOEMPRESA", SqlDbType.VarChar).Value = telempresa.ToString();
                    //querySaveStaff.Parameters.Add("@DIRECCION", SqlDbType.VarChar).Value = dirper.ToString();
                    //querySaveStaff.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = email.ToString();
                    //querySaveStaff.Parameters.Add("@CARGO", SqlDbType.VarChar).Value = cargo.ToString();
                    querySaveStaff.Parameters.Add("@FECHADENACIMIENTO", SqlDbType.VarChar).Value = fechanac.ToString();
                    //querySaveStaff.Parameters.Add("@FECHAEFECTIVA", SqlDbType.VarChar).Value = fechaefec.ToString();
                    //querySaveStaff.Parameters.Add("@FECHAVIGENCIA", SqlDbType.VarChar).Value = fechavig.ToString();
                    //querySaveStaff.Parameters.Add("@CODIGO", SqlDbType.VarChar).Value = codigo.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONOCELULAR", SqlDbType.VarChar).Value = telcelular.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONODOMICILIO", SqlDbType.VarChar).Value = teldom.ToString();                    
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('REGISTRO EXITOSO')</script>");
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }
                   
                    


                }
            }
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            //using (SqlConnection openCon = new SqlConnection("Data Source=OscarJCPL;Initial Catalog=Affinity;Integrated Security=True"))
            {
                string fecha = Session["fecha"].ToString();
                string ficha = Session["ficha"].ToString();
                string tomador = TextBox1.Text;
                //string telempresa = String.Format("{0}", Request.Form["TextBox4"]);
                string cobertura = String.Format("{0}", DropDownList8.SelectedValue);
                string plan = String.Format("{0}", DropDownList7.SelectedValue);
                //string dirper = String.Format("{0}", Request.Form["Text1"]);
                //string email = String.Format("{0}", Request.Form["Text2"]);
                //string cargo = String.Format("{0}", Request.Form["cargo"]);
                //string cargo = "prueba";
                //string fechanac = String.Format("{0}", DropDownList2.SelectedValue + DropDownList3.SelectedValue + DropDownList4.SelectedValue);
                //string fechavig = String.Format("{0}", DropDownList5.SelectedValue + DropDownList6.SelectedValue + DropDownList7.SelectedValue);
                // string fechaefec = String.Format("{0}", DropDownList8.SelectedValue + DropDownList9.SelectedValue + DropDownList10.SelectedValue);
                string nombre = Text6.Text;
                //string codigo = String.Format("{0}", Request.Form["codigo"]);
                //string telcelular = String.Format("{0}", Request.Form["Text7"]);
                //string teldom = String.Format("{0}", Request.Form["Text8"]);
                string valornat = String.Format(GridView1.Rows[0].Cells[0].Text);
                double valor = Double.Parse(valornat);
                string relacion = String.Format("{0}", DropDownList5.SelectedValue);

                string saveStaff = "INSERT into VENTATEMP (NOMBRE, RELACION, COBERTURA, [PLAN], COSTO, FECHA, FICHA, TOMADOR) VALUES (@NOMBRE, @RELACION, @COBERTURA, @PLAN, @COSTO, @FECHA, @FICHA, @TOMADOR)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@COBERTURA", SqlDbType.VarChar).Value = cobertura.ToString();
                    querySaveStaff.Parameters.Add("@NOMBRE", SqlDbType.VarChar).Value = nombre.ToString();
                    querySaveStaff.Parameters.Add("@COSTO", SqlDbType.Money).Value = valor;
                    querySaveStaff.Parameters.Add("@RELACION", SqlDbType.VarChar).Value = relacion.ToString();
                    querySaveStaff.Parameters.Add("@FECHA", SqlDbType.VarChar).Value = fecha.ToString();
                    querySaveStaff.Parameters.Add("@FICHA", SqlDbType.VarChar).Value = ficha.ToString();
                    querySaveStaff.Parameters.Add("@TOMADOR", SqlDbType.VarChar).Value = TextBox1.Text;
                    //querySaveStaff.Parameters.Add("@MEDIODECOBRO", SqlDbType.VarChar).Value = medio.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONOEMPRESA", SqlDbType.VarChar).Value = telempresa.ToString();
                    //querySaveStaff.Parameters.Add("@DIRECCION", SqlDbType.VarChar).Value = dirper.ToString();
                    //querySaveStaff.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = email.ToString();
                    //querySaveStaff.Parameters.Add("@CARGO", SqlDbType.VarChar).Value = cargo.ToString();
                    querySaveStaff.Parameters.Add("@PLAN", SqlDbType.VarChar).Value = plan.ToString();
                    //querySaveStaff.Parameters.Add("@FECHAEFECTIVA", SqlDbType.VarChar).Value = fechaefec.ToString();
                    //querySaveStaff.Parameters.Add("@FECHAVIGENCIA", SqlDbType.VarChar).Value = fechavig.ToString();
                    //querySaveStaff.Parameters.Add("@CODIGO", SqlDbType.VarChar).Value = codigo.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONOCELULAR", SqlDbType.VarChar).Value = telcelular.ToString();
                    //querySaveStaff.Parameters.Add("@TELEFONODOMICILIO", SqlDbType.VarChar).Value = teldom.ToString();                    
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
                        Text3.Text = "";
                        Text6.Text = "";
                        DropDownList1.SelectedValue = "GENERO";
                        DropDownList5.SelectedValue = "RELACION";
                        DropDownList4.SelectedValue = DateTime.Now.Day.ToString();
                        DropDownList11.SelectedValue = DateTime.Now.Month.ToString();
                        DropDownList2.SelectedValue = DateTime.Now.Year.ToString();
                        Label5.Text = "";
                    }
                    



                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coberturas.aspx");
        }

        protected void buttonsearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coberturas.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {            
            Session["cedula"] = null;
            Response.Redirect("InicioProceso.aspx");            
        }
    }
}