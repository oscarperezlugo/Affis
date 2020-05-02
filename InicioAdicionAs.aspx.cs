using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Affis
{


    public partial class InicioAdicionAs : System.Web.UI.Page
    {


        ConexionesDB bd = new ConexionesDB();




        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["cedulaadc"] = TextBox1.Text;
            Session["fechaadc"] = DateTime.Now.ToString();
            Label3.Visible = true;

            //string ced = Session["cedulaadc"].ToString();
            //string sql = "SELECT TOP 1 [CEDULA], [NOMBRESCOMPLETOS], [NUMERODECERTIFICADO], [RELACION], [ESTADO] FROM [ASEGURADOS] WHERE ([TOMADOR] = " + ced + " AND RELACION = 'TOMADOR')";

            //SqlCommand command = new SqlCommand(sql, bd.conn);

            //bd.conn.Open();

            //SqlDataReader reader = command.ExecuteReader();

            //if (reader.Read())
            //{
            //    Label1.Text = string.Format("NOMBRE TOMADOR: {0}", reader["NOMBRESCOMPLETOS"].ToString());
            //}
            //reader.Close();

            //bd.conn.Close();
        }

        public void BtnCancelar_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;
            Session["cedulaadc"] = null;
            Session["fechaadc"] = null;
            Response.Redirect("InicioAdicionAs.aspx");
        }

        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                Session["cedulaadc2"] = GridView1.SelectedRow.Cells[0].Text;
                Session["nombreadicion"] = GridView1.SelectedRow.Cells[1].Text;
                Session["relacionadicion"] = GridView1.SelectedRow.Cells[3].Text;
                Session["certificadoadicion"] = GridView1.SelectedRow.Cells[2].Text;


                Response.Redirect("Adicion4.aspx");
            }
            else
            {
                Session["cedulaadc"] = TextBox1.Text;
                Response.Redirect("InicioAdicionAs.aspx");
            }
        }


    }

}