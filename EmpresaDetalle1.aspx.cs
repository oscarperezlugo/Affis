using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class EmpresaDetalle1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["empresa"] = null;
            Response.Redirect("InicioProceso.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["empresa"] = DropDownList1.Text;
            Response.Redirect("EmpresaDetalle2.aspx");            
        }
    }
}