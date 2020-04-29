using System;

namespace Affis
{
    public partial class Inclusion2 : System.Web.UI.Page
    {
        ConexionesDB conn = new ConexionesDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime startDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
            DateTime endDate = startDate.AddMonths(1);

            DropDownList7.SelectedValue = "1";
            DropDownList11.SelectedValue = endDate.Month.ToString();
            DropDownList5.SelectedValue = DateTime.Now.Year.ToString();
            //DropDownList10.SelectedValue = "1";
            //DropDownList12.SelectedValue = endDate.Month.ToString();
            //DropDownList8.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList4.SelectedValue = DateTime.Now.Day.ToString();
            DropDownList3.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList2.SelectedValue = DateTime.Now.Year.ToString();

            if (Session["cedula"] != null)
            {
                Text3.Text = Session["cedula"].ToString();
                if (Session["nombre"] != null && Session["genero"] != null)
                {
                    Text6.Text = Session["nombre"].ToString();
                    DropDownList1.SelectedValue = Session["genero"].ToString();
                    DropDownList1.Enabled = false;
                }
            }
            RadioButtonList1.SelectedIndexChanged += RadioButtonList1_SelectedIndexChanged;
        }

        private void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            Session["tomasegur"] = RadioButtonList1.SelectedIndex == 0 ? "si" : "no";
        }
        
        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            Session["cedula"] = Text3.Text;
            Session["cedul"] = Text3.Text;
            Session["nombre"] = Text6.Text;
            Session["nombres"] = Text6.Text;
            Session["genero"] = String.Format("{0}", DropDownList1.SelectedValue);
            Session["ano"] = String.Format("{0}", DropDownList2.SelectedValue);
            Session["mes"] = String.Format("{0}", DropDownList3.SelectedValue);
            Session["dia"] = String.Format("{0}", DropDownList4.SelectedValue);
            Session["dirper"] = Text1.Text;
            Session["email"] = Text2.Text;
            Session["cargo"] = cargo1.Text;
            string fechaNacimiento = DropDownList2.SelectedValue + "/" + DropDownList3.SelectedValue + "/" + DropDownList4.SelectedValue;
            Session["fechanac"] = fechaNacimiento;
            Session["fechaef"] = "" + DropDownList5.SelectedValue + "/" + DropDownList11.SelectedValue + "/" + DropDownList7.SelectedValue + "";
            //Session["fechavig"] = "" + DropDownList8.SelectedValue + "/" + DropDownList12.SelectedValue + "/" + DropDownList10.SelectedValue + "";
            Session["codigo"] = Text9.Text;
            Session["telcel"] = Text7.Text;
            Session["teldom"] = Text8.Text;
            Session["tomasegur"] = RadioButtonList1.SelectedIndex == 0 ? "si" : "no";
            Response.Write("<script>alert('REGISTRO EXITOSO')</script>");
            Response.Redirect("IncluDesc.aspx");
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adicion.aspx");

        }
        
        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["tomasegur"] = "si";
        }

        #region Según requerimientos del cliente no deberían ir en esta pantalla, sino en la pantalla asegurados 
        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("ConsultaCedula");
        //}

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    string url = "https://srienlinea.sri.gob.ec/sri-en-linea/SriDeclaracionesWeb/ConsultaImpuestoRenta/Consultas/consultaImpuestoRenta";
        //    Response.Write("<script> window.open('" + url + "','_blank'); </script>");
        //}

        //protected void Button7_Click(object sender, EventArgs e)
        //{
        //    string url = "https://www.registrocivil.gob.ec/";
        //    Response.Write("<script> window.open('" + url + "','_blank'); </script>");
        //}
        #endregion

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["cedula"] = null;
            Response.Redirect("InicioProceso.aspx");
        }

        //protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        //{
        //    Session["tomasegur"] = "si";
        //    CheckBox2.Checked = false;
        //}

        //protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        //{
        //    CheckBox1.Checked = false;
        //}
    }
}