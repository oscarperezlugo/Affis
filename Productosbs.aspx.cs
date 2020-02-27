using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{
    
    
    public partial class Productosbs : System.Web.UI.Page
    {
        

        ConexionesDB conn = new ConexionesDB();
        
        

        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = String.Format("Bienvenido {0}", Session["bienvenido"].ToString());
            
            
        }

        

        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           //empresa = GridView1.SelectedRow.Cells[1].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                    Response.Redirect("InicioProceso.aspx");
            





            

            
        }
    }

}