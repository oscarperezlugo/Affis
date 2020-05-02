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
        //TimeSpan tspan;
        //DateTime inicio;
        //DateTime final;


        protected void Page_Load(object sender, EventArgs e)
        {
            //if (GridView1.Rows.Count + GridView5.Rows.Count  == 0)
            if (GridView1.Rows.Count == 0)
            {
                Label4.Text = "USUARIO NO ENCONTRADO";
                Label3.Text = "";
                Label6.Text = "";
            }
            else
            {
                Label4.Text = "TOMADOR PRINCIPAL";
                Label3.Text = "ASEGURADOS";
                Label6.Text = "CONSULTA";
            }




        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (GridView4.Rows.Count != 0)
        //    {
        //        inicio = DateTime.Now;

        //        string iDate = GridView4.Rows[0].Cells[3].Text;
        //        DateTime oDate = Convert.ToDateTime(iDate);

        //        final = oDate;
        //        tspan = final.Subtract(inicio).Duration();

        //        int x = (int)tspan.TotalDays;

        //        if (x > 365)
        //        {
        //            Label5.Text = "VENCIDO";
        //        }
        //        else
        //        {
        //            Label5.Text = "VIGENTE";
        //        }

        //    }
        //    else
        //    {
        //        inicio = DateTime.Now;

        //        string iDate = GridView7.Rows[0].Cells[3].Text;
        //        DateTime oDate = Convert.ToDateTime(iDate);

        //        final = oDate;
        //        tspan = final.Subtract(inicio).Duration();

        //        int x = (int)tspan.TotalDays;

        //        if (x > 365)
        //        {
        //            Label5.Text = "VENCIDO";
        //        }
        //        else
        //        {
        //            Label5.Text = "VIGENTE";
        //        }

        //    }


        //}
    }
}