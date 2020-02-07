using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{
    
    
    public partial class Inclusion : System.Web.UI.Page
    {
        

        ConexionesDB conn = new ConexionesDB();
        private void recuperarInfo()
        {
            string filtro = DropDownList1.SelectedValue.ToString();
            GridView1.DataSource = conn.Obtenerinfo(filtro);
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
                Session["empresa"] = GridView1.SelectedRow.Cells[1].Text;
                Session["direccion"] = GridView1.SelectedRow.Cells[2].Text;
                Session["telefono"] = GridView1.SelectedRow.Cells[4].Text;
                Session["medio"] = GridView1.SelectedRow.Cells[3].Text;
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
            Response.Redirect("InicioProceso.aspx");
        }
    }
}