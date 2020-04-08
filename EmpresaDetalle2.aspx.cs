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
    public partial class EmpresaDetalle2 : System.Web.UI.Page
    {
        string medio;
        string formapago;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( Session["empresa"] != null) 
            {
                TextBox2.Text = Session["empresa"].ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int telefono2 = Int32.Parse(TextBox10.Text);
            int telefono3 = Int32.Parse(TextBox14.Text);
            int telefono11 = Int32.Parse(TextBox7.Text);
            int telefono12 = Int32.Parse(TextBox11.Text);
            int telefono21 = Int32.Parse(TextBox15.Text);
            int telefono22 = Int32.Parse(TextBox18.Text);
            int telefono23 = Int32.Parse(TextBox22.Text);
            int telefono24 = Int32.Parse(TextBox19.Text);
            int telefono25 = Int32.Parse(TextBox23.Text);
            int telefono26 = Int32.Parse(TextBox26.Text);
            int telefono27 = Int32.Parse(TextBox30.Text);
            int telefono28 = Int32.Parse(TextBox27.Text);
            int telefono29 = Int32.Parse(TextBox31.Text);
            int porcen = Int32.Parse(TextBox39.Text);
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "UPDATE EMPRESAS SET [RUC]=@ruc, [RAZON SOCIAL]=@razon, [DIRECCION]=@direccion, [PROVINCIA]=@provincia, [CIUDAD]=@ciudad, [CLASE]=@clase, [POLIZA]=@poliza, [MEDIODECOBRO]=@medio, [CONTACTO DE FACTURACION 1]=@contacto1, [CONTACTO DE FACTURACION 2]=@contacto2, [CONTACTO DE FACTURACION 3]=@contacto3, [TELEFONO1]=@telefono1, [TELEFONO2]=@telefono2, [TELEFONO 3]=@telefono3, [CELULAR 1]=@celular1, [CELULAR 2]=@celular2, [CELULAR 3]=@celular3, [EMAIL FACTURACION 1]=@email1, [EMAIL FACTURACION 2]=@email2, [EMAIL FACTURACION 3]=@email3, [CONTACTO DEL LISTADO 1]=@contactol1, [CONTACTO DEL LISTADO 2]=@contactol2, [TELEFONO 11]=@telefono11, [TELEFONO 21]=@telefono21, [CELULAR 11]=@celular11, [CELULAR 21]=@celular21, [EMAIL LISTADO 1]=@emaill1, [EMAIL LISTADO 2]=@emaill2, [CONTACTO COBRANZA 1]=@contactoc1, [CONTACTO COBRANZA 2]=@contactoc2, [TELEFONO 12]=@telefono12, [TELEFONO 22]=@telefono22, [CELULAR 12]=@celular12, [CELULAR 22]=@celular22, [EMAIL COBRANZA 1]=@emailc1, [EMAIL COBRANZA 2]=@emailc2, [EJECUTIVO APERTURA]=@ejecutivo, [FECHA DE EMISION FACTURA]=@fechafac, [FECHA DE ENVÍO DE LISTADO]=@fechalist, [TIPO DE LISTADO]=@tipolist, [EMITEN FACTURA DE COMISIÓN]=@emitenfac, [PORCENTAJE DE COMISIÓN]=@porcen, [FECHA DE LLAMADA PARA EL COBRO]=@fechallam, [FORMA DE PAGO]=@formapago  WHERE [NOMBRECOMERCIAL]=@empresa";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("@ruc", SqlDbType.VarChar, 50).Value = Text3.Text;
                cmd.Parameters.Add("@razon", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@direccion", SqlDbType.VarChar, 50).Value = TextBox5.Text;
                cmd.Parameters.Add("@provincia", SqlDbType.VarChar, 50).Value = TextBox3.Text;
                cmd.Parameters.Add("ciudad", SqlDbType.VarChar, 50).Value = TextBox4.Text;
                cmd.Parameters.Add("empresa", SqlDbType.VarChar, 50).Value = Session["empresa"];
                cmd.Parameters.Add("clase", SqlDbType.Float, 50).Value = Int16.Parse(TextBox34.Text);
                cmd.Parameters.Add("poliza", SqlDbType.NVarChar, 50).Value = TextBox33.Text;
                cmd.Parameters.Add("medio", SqlDbType.VarChar, 50).Value = medio;
                cmd.Parameters.Add("contacto1", SqlDbType.VarChar, 50).Value = Text5.Text;
                cmd.Parameters.Add("contacto2", SqlDbType.VarChar, 50).Value = TextBox9.Text;
                cmd.Parameters.Add("contacto3", SqlDbType.VarChar, 50).Value = TextBox13.Text;
                cmd.Parameters.Add("telefono1", SqlDbType.VarChar, 50).Value = TextBox6.Text;
                cmd.Parameters.Add("telefono2", SqlDbType.Float, 50).Value = telefono2;
                cmd.Parameters.Add("telefono3", SqlDbType.Float, 50).Value = telefono3;
                cmd.Parameters.Add("celular1", SqlDbType.Float, 50).Value = telefono11;
                cmd.Parameters.Add("celular2", SqlDbType.Float, 50).Value = telefono12;
                cmd.Parameters.Add("celular3", SqlDbType.Float, 50).Value = telefono21;
                cmd.Parameters.Add("email1", SqlDbType.VarChar, 50).Value = TextBox8.Text;
                cmd.Parameters.Add("email2", SqlDbType.VarChar, 50).Value = TextBox12.Text;
                cmd.Parameters.Add("email3", SqlDbType.VarChar, 50).Value = TextBox16.Text;
                cmd.Parameters.Add("contactol1", SqlDbType.VarChar, 50).Value = TextBox17.Text;
                cmd.Parameters.Add("contactol2", SqlDbType.VarChar, 50).Value = TextBox21.Text;
                cmd.Parameters.Add("telefono11", SqlDbType.Float, 50).Value = telefono22;
                cmd.Parameters.Add("telefono21", SqlDbType.Float, 50).Value = telefono23;
                cmd.Parameters.Add("celular11", SqlDbType.Float, 50).Value = telefono24;
                cmd.Parameters.Add("celular21", SqlDbType.Float, 50).Value = telefono25;
                cmd.Parameters.Add("emaill1", SqlDbType.VarChar, 50).Value = TextBox20.Text;
                cmd.Parameters.Add("emaill2", SqlDbType.VarChar, 50).Value = TextBox24.Text;
                cmd.Parameters.Add("contactoc1", SqlDbType.VarChar, 50).Value = TextBox25.Text;
                cmd.Parameters.Add("contactoc2", SqlDbType.VarChar, 50).Value = TextBox29.Text;
                cmd.Parameters.Add("telefono12", SqlDbType.Float, 50).Value = telefono26;
                cmd.Parameters.Add("telefono22", SqlDbType.Float, 50).Value = telefono27;
                cmd.Parameters.Add("celular12", SqlDbType.Float, 50).Value = telefono28;
                cmd.Parameters.Add("celular22", SqlDbType.Float, 50).Value = telefono29;
                cmd.Parameters.Add("emailc1", SqlDbType.VarChar, 50).Value = TextBox28.Text;
                cmd.Parameters.Add("emailc2", SqlDbType.VarChar, 50).Value = TextBox32.Text;
                cmd.Parameters.Add("ejecutivo", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedValue.ToString();
                cmd.Parameters.Add("fechafac", SqlDbType.VarChar, 50).Value = TextBox35.Text;
                cmd.Parameters.Add("fechalist", SqlDbType.VarChar, 50).Value = TextBox36.Text;
                cmd.Parameters.Add("tipolist", SqlDbType.VarChar, 50).Value = TextBox37.Text;
                cmd.Parameters.Add("emitenfac", SqlDbType.VarChar, 50).Value = TextBox38.Text;
                cmd.Parameters.Add("porcen", SqlDbType.Float, 50).Value = porcen;
                cmd.Parameters.Add("fechallam", SqlDbType.VarChar, 50).Value = TextBox40.Text;
                cmd.Parameters.Add("formapago", SqlDbType.VarChar, 50).Value = formapago;
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
                    Response.Write("<script>alert('EMPRESA ACTUALIZADA')</script>");
                    //MessageBox.Show("PROCESO EXITOSO");
                }
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["empresa"] = null;
            Response.Redirect("InicioProceso.aspx");
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            medio = "AMBOS";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            medio = "TARJETA DE CREDITO";
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            medio = "ROL DE PAGO";
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            formapago = "TRANSFERENCIA";
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            formapago = "MIX";
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            formapago = "CHEQUE";
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            formapago = "DEBITO BANCARIO";
        }
    }
}