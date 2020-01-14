using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{
    
    
    public partial class Reemplazo : System.Web.UI.Page
    {
        

        ConexionesDB conn = new ConexionesDB();
        
        

        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["reemplazo"] = TextBox1.Text;

            Response.Redirect("Reemplazo2.aspx");
        }

        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           //empresa = GridView1.SelectedRow.Cells[1].ToString();
        }

        
    }
}