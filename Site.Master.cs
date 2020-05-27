using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public Label Label2;
        public Label Label1;
        public TextBox TextBox4;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = String.Format("Bienvenido(a): {0}", Session["bienvenido"].ToString());
            Label1.Text = DateTime.Now.ToLocalTime().ToString();
        }

        protected void buttonsearch_Click(object sender, EventArgs e)
        {
            Session["valor"] = TextBox4.Text;
            Response.Redirect("BuscaCedula");
        }

        protected void certbutton_click(object sender, EventArgs e)
        {
            Session["valor"] = TextBox4.Text;
            Response.Redirect("BuscaCert");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}