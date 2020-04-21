using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{


    public partial class InicioAdicionAs : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();
        



        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["cedulaadc"] = TextBox1.Text;
            Session["fechaadc"] = DateTime.Now.ToString();

        }

        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                Session["cedulaadc2"] = GridView1.SelectedRow.Cells[0].Text;
                Session["nombreadicion"] = GridView1.SelectedRow.Cells[1].Text;
                Session["relacionadicion"] = GridView1.SelectedRow.Cells[3].Text;
                Session["certificadoadicion"] = GridView1.SelectedRow.Cells[2].Text;
                

                Response.Redirect("Adicion4.aspx");
            }
            else
            {
                Session["cedulaadc"] = TextBox1.Text;
                Response.Redirect("InicioAdicionAs.aspx");
            }
        }

        
    }
            
}