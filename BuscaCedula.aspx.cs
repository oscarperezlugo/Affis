using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class BuscaCedula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (GridView1.Rows.Count == 0)
            //{
            //    Label4.Text = "USUARIO NO ENCONTRADO";
            //    Label3.Text = "";
            //}
            //else
            //{
            //    Label4.Text = "TOMADOR PRINCIPAL";
            //    Label3.Text = "ASEGURADOS";
            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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
            
        }
    }
}