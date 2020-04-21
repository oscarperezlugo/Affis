using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class Cobranza2 : System.Web.UI.Page
    {
        private decimal total = (decimal)0.0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label9.Text = Session["mescobro"].ToString() + " " + DateTime.Now.Year.ToString();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PRIMA"));
                Session["prima"] = total;
                //if (this.GridView1.Rows.Count != 0)
                //    this.GridView1.Visible = false;
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[4].Text = String.Format("TOTAL {0:0.00}$", total);
                Session["prima"] = e.Row.Cells[4].Text;
            }
        }
    }
}