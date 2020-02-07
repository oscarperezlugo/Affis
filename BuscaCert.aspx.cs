using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class BuscaCert : System.Web.UI.Page
    {
        TimeSpan tspan;
        DateTime inicio;
        DateTime final;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            inicio = DateTime.Now;

            string iDate = GridView4.Rows[0].Cells[3].Text;
            DateTime oDate = Convert.ToDateTime(iDate);

            final = oDate;
            tspan = final.Subtract(inicio).Duration();

            int x = (int)tspan.TotalDays;

            if (x > 365)
            {
                Label5.Text = "VENCIDO";
            }
            else
            {
                Label5.Text = "VIGENTE";
            }


        }
    }
}