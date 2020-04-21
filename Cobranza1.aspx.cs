using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class Cobranza1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["empresacobro"] = GridView1.SelectedRow.Cells[0].Text;
            Session["mescobro"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("Cobranza2.aspx");
        }
    }
}