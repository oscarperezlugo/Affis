using System;
using System.Data;

namespace Affis
{


    public partial class InicioProceso : System.Web.UI.Page
    {
        ConexionesDB conn = new ConexionesDB();
        private DataTable source = null;
        private void recuperarInfo()
        {
            string filtro = TextBox1.Text;
            source = conn.Obtenerinfo2(filtro);

            GridView1.DataSource = source;
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                Label3.Text = "El numero de cedula no se encuentra en nuestra base de datos";
            }
            else
            {
                Session["valor"] = TextBox1.Text;
                //Response.Redirect("InicioAdicion.aspx");
            }

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            // Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            if (IsPostBack)
                recuperarInfo();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            recuperarInfo();

        }

        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            //empresa = GridView1.SelectedRow.Cells[1].ToString();
        }

        public void Button2_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                int i = GridView1.SelectedIndex;

                string cedula = source.Rows[i].Field<string>("CEDULA");

                Session["cedula"] = cedula;
                Session["cedul"] = cedula;
                Session["Rela"] = "TOMADOR";

                string nombre = source.Rows[i].Field<string>("NOMBRESCOMPLETOS");
                Session["nombre"] = nombre;
                Session["nombres"] = nombre;

                string genero = source.Rows[i].Field<string>("GENERO");
                Session["genero"] = genero;

                string fechaN = source.Rows[i].Field<string>("FECHADENACIMIENTO");
                Session["fechanac"] = fechaN;

                Response.Redirect("IncluDesc.aspx");
            }
            else
            {
                Session["cedula"] = TextBox1.Text;
                Response.Redirect("Inclusion.aspx");
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string url = "https://srienlinea.sri.gob.ec/sri-en-linea/SriDeclaracionesWeb/ConsultaImpuestoRenta/Consultas/consultaImpuestoRenta";
            Response.Write("<script> window.open('" + url + "','_blank'); </script>");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            string url = "https://www.registrocivil.gob.ec/";
            Response.Write("<script> window.open('" + url + "','_blank'); </script>");
        }
        public void Button5_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Response.Redirect(Request.RawUrl);
        }
    }

}