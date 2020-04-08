using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class Reclamos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["caso"] = TextBox1.Text;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioProceso.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["nombrecaso"] = GridView1.SelectedRow.Cells[2].Text;
            Session["fechacaso"] = GridView1.SelectedRow.Cells[0].Text;
            Session["numerocaso"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("Reclamos2.aspx");
        }
    }
}