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
    
    
    public partial class Reemplazo2 : System.Web.UI.Page
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
            // define your connection string (typically from a .config file) and your query WITH parameters!
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "DELETE FROM ASEGURADOS WHERE NOMBRESCOMPLETOS=@cer AND CEDULA=@user";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = GridView1.SelectedRow.Cells[2].Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = GridView1.SelectedRow.Cells[3].ToString();
                cmd.Parameters.Add("@cer", SqlDbType.VarChar, 50).Value = GridView1.SelectedRow.Cells[1].Text;

                // open connection
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Error" + ex);
                }
                finally
                {
                    con.Close();
                    //Label3.Text = GridView1.SelectedRow.Cells[1].Text;
                    Response.Redirect("Reemplazo3.aspx");
                }
            }





            

            
        }
    }

}