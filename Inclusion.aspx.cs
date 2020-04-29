using System;
using System.Data;

namespace Affis
{


    public partial class Inclusion : System.Web.UI.Page
    {
        ConexionesDB conn = new ConexionesDB();
        private DataTable source = null;

        private void recuperarInfo()
        {
            string filtro = DropDownList1.SelectedValue.ToString();
            this.source = conn.Obtenerinfo(filtro);

            GridView1.DataSource = source;
            GridView1.DataBind();
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
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

                string empresa = source.Rows[i].Field<string>("NOMBRECOMERCIAL");
                string direccion = source.Rows[i].Field<string>("DIRECCION");
                string telefono = source.Rows[i].Field<string>("TELEFONO2");
                string medio = source.Rows[i].Field<string>("MEDIODECOBRO");

                Session["empresa"] = empresa;
                Session["direccion"] = direccion;
                Session["telefono"] = telefono;
                Session["medio"] = medio;
                Response.Redirect("Inclusion2.aspx");
            }
            else
            {
                Response.Write("<script>alert('SELECCIONE UNA EMPRESA')</script>");
                //MessageBox.Show("Seleccione una Empresa");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Session["empresa"] = null;
            Session["direccion"] = null;
            Session["telefono"] = null;
            Session["medio"] = null;
            Response.Redirect("InicioProceso.aspx");
        }
    }
}