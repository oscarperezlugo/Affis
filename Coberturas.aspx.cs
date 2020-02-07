using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Label = System.Web.UI.WebControls.Label;
//using Label = System.Windows.Forms.Label;
using TextBox = System.Web.UI.WebControls.TextBox;

namespace Affis
{


    public partial class Coberturas : System.Web.UI.Page
    {


        ConexionesDB conn = new ConexionesDB();

        private decimal total = (decimal)0.0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "COSTO"));
            }
            else if(e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = String.Format("TOTAL {0:c}", total);
                Session["prima"] = e.Row.Cells[4].Text;
            }
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Certificado.aspx");
        }

       
    }
        
}