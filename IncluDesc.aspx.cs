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


    public partial class IncluDesc : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();
        private void recuperarInfo()
        {
            Session["cedul"] = Text3.Text;
            Session["nombres"] = Text6.Text;
            Session["Rela"] = DropDownList5.SelectedValue;
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
                Text3.Text = Session["cedul"].ToString();
                Text6.Text = Session["nombres"].ToString();
                
                if (Session["Rela"] != null) 
                {
                    DropDownList5.SelectedValue = Session["Rela"].ToString();
                }
                else
                {
                    DropDownList5.SelectedValue = "RELACION";
                }                
                if (Session["tomasegur"] != null) 
                {
                    Text3.Text = Session["cedula"].ToString();
                    Text6.Text = Session["nombre"].ToString();
                    DropDownList1.SelectedValue = Session["genero"].ToString();
                    DropDownList5.SelectedValue = "TOMADOR";
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
            
            
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            {
                

                string saveStaff = "INSERT into ASEGURADOS (CEDULA, NOMBRESCOMPLETOS, GENERO, FECHADENACIMIENTO, ENTIDADTOMADORA, DIRECCIONEMPLEADOR, MEDIODECOBRO, TELEFONOEMPRESA, DIRECCION, EMAIL, CARGO, FECHAEFECTIVA, FECHAVIGENCIA, CODIGO, TELEFONOCELULAR, TELEFONODOMICILIO, TOMADOR, RELACION, FECHAVENTA, PRIMARENTADIARIAPORHOSPITALIZACION, TOTALPRIMAASEGURADO, PRIMABECAEDUCATIVA) VALUES (@CEDULA, @NOMBRESCOMPLETOS, @GENERO, @FECHADENACIMIENTO, @ENTIDADTOMADORA, @DIRECCIONEMPLEADOR, @MEDIODECOBRO, @TELEFONOEMPRESA, @DIRECCION, @EMAIL, @CARGO, @FECHAEFECTIVA, @FECHAVIGENCIA, @CODIGO, @TELEFONOCELULAR, @TELEFONODOMICILIO, @TOMADOR, @RELACION, @FECHAVENTA, @PRIMARENTADIARIAPORHOSPITALIZACION, @TOTALPRIMAASEGURADO, @PRIMABECAEDUCATIVA)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@CEDULA", SqlDbType.VarChar).Value = Text3.Text;
                    querySaveStaff.Parameters.Add("@NOMBRESCOMPLETOS", SqlDbType.VarChar).Value = Text6.Text;
                    querySaveStaff.Parameters.Add("@GENERO", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@RELACION", SqlDbType.VarChar).Value = DropDownList5.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@TOMADOR", SqlDbType.VarChar).Value = TextBox1.Text;                    
                    querySaveStaff.Parameters.Add("@FECHADENACIMIENTO", SqlDbType.VarChar).Value = Session["fechanac"].ToString();                                                            
                    querySaveStaff.Parameters.Add("@ENTIDADTOMADORA", SqlDbType.VarChar).Value = Session["empresa"].ToString();
                    querySaveStaff.Parameters.Add("@DIRECCIONEMPLEADOR", SqlDbType.VarChar).Value = Session["direccion"].ToString();
                    querySaveStaff.Parameters.Add("@MEDIODECOBRO", SqlDbType.VarChar).Value = Session["medio"].ToString();
                    querySaveStaff.Parameters.Add("@TELEFONOEMPRESA", SqlDbType.VarChar).Value = Session["telefono"].ToString();
                    querySaveStaff.Parameters.Add("@DIRECCION", SqlDbType.VarChar).Value = Session["dirper"].ToString();
                    querySaveStaff.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = Session["email"].ToString();
                    querySaveStaff.Parameters.Add("@CARGO", SqlDbType.VarChar).Value = Session["cargo"].ToString();                    
                    querySaveStaff.Parameters.Add("@FECHAEFECTIVA", SqlDbType.VarChar).Value = Session["fechaef"].ToString();
                    querySaveStaff.Parameters.Add("@FECHAVIGENCIA", SqlDbType.VarChar).Value = Session["fechavig"].ToString();
                    querySaveStaff.Parameters.Add("@CODIGO", SqlDbType.VarChar).Value = Session["codigo"].ToString();
                    querySaveStaff.Parameters.Add("@TELEFONOCELULAR", SqlDbType.VarChar).Value = Session["telcel"].ToString();
                    querySaveStaff.Parameters.Add("@TELEFONODOMICILIO", SqlDbType.VarChar).Value = Session["teldom"].ToString();
                    querySaveStaff.Parameters.Add("@FECHAVENTA", SqlDbType.VarChar).Value = Session["fecha"];
                    querySaveStaff.Parameters.Add("@TOTALPRIMAASEGURADO", SqlDbType.VarChar).Value = String.Format(GridView1.Rows[0].Cells[0].Text);
                    querySaveStaff.Parameters.Add("@PRIMABECAEDUCATIVA", SqlDbType.VarChar).Value = DropDownList7.SelectedValue.ToString();
                    querySaveStaff.Parameters.Add("@PRIMARENTADIARIAPORHOSPITALIZACION", SqlDbType.VarChar).Value = DropDownList8.SelectedValue.ToString();
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
            Session["cedul"] = null;
            Session["nombres"] = null;
            Session["Rela"] = null;
            Session["tomasegur"] = null;
            Session["genero"] = null;
            using (SqlConnection openCon = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity"))
            
            {
                string fecha = Session["fecha"].ToString();
                string ficha = Session["ficha"].ToString();
                string tomador = TextBox1.Text;                
                string cobertura = String.Format("{0}", DropDownList8.SelectedValue);
                string plan = String.Format("{0}", DropDownList7.SelectedValue);                
                string nombre = Text6.Text;                
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
                    querySaveStaff.Parameters.Add("@PLAN", SqlDbType.VarChar).Value = plan.ToString();                                       
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