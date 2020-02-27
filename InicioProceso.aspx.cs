using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{


    public partial class InicioProceso : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();
        private void recuperarInfo()
        {
            string filtro = TextBox1.Text;
            GridView1.DataSource = conn.Obtenerinfo2(filtro);
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                Label3.Text = "El numero de cedula no se encuentra en nuestra base de datos";
            }
            else
            {
                Label3.Text = "El numero de cedula ya es parte de nuestro sistema";
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
                Session["cedula"] = GridView1.SelectedRow.Cells[1].Text;
                Session["cedul"] = GridView1.SelectedRow.Cells[1].Text;
                Session["Rela"] = "Tomador";
                Session["nombre"] = GridView1.SelectedRow.Cells[2].Text;
                Session["nombres"] = GridView1.SelectedRow.Cells[2].Text;
                Session["genero"] = GridView1.SelectedRow.Cells[4].Text;

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