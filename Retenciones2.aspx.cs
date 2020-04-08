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
    public partial class Retenciones2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["cedulacer"] = TextBox5.Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["cedulacer"] = null;
            Session["nombrecer"] = GridView1.SelectedRow.Cells[0].Text;
            Session["cedulacer"] = GridView1.SelectedRow.Cells[1].Text;
            Session["empresacer"] = GridView1.SelectedRow.Cells[2].Text;
            Session["certicer"] = GridView1.SelectedRow.Cells[3].Text;
            Response.Redirect("Retenciones1.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["cedulacer"] = null;
            Session["nombrecer"] = GridView2.SelectedRow.Cells[0].Text;
            Session["cedulacer"] = GridView2.SelectedRow.Cells[1].Text;
            Session["empresacer"] = GridView2.SelectedRow.Cells[2].Text;
            Session["certicer"] = GridView2.SelectedRow.Cells[3].Text;
            Response.Redirect("Retenciones1.aspx");
        }

        
    }
}