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
    

    public partial class TomadorPrincipal : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            using (SqlConnection openCon = new SqlConnection("Data Source=OscarJCPL;Initial Catalog=Affinity;Integrated Security=True"))
            {
                string cedula = String.Format("{0}", Request.Form["cedula"]);
                string nombre = String.Format("{0}", Request.Form["nombre"]);
                string dropDownList1 = String.Format("{0}", DropDownList1.SelectedValue);
                string teldomicilio = String.Format("{0}", Request.Form["teldomicilio"]);
                string telcelular = String.Format("{0}", Request.Form["telcelular"]);
                string dirempresa = String.Format("{0}", Request.Form["dirempresa"]);
                string email = String.Format("{0}", Request.Form["email"]);
                string telempresa = String.Format("{0}", Request.Form["telempresa"]);
                string dropDownList2 = String.Format("{0}", DropDownList2.SelectedValue);
                string dropDownList3 = String.Format("{0}", DropDownList3.SelectedValue);
                string cargo = String.Format("{0}", Request.Form["cargo"]);
                string codigo = String.Format("{0}", Request.Form["codigo"]);
               
                string saveStaff = "INSERT into ASEGURADOS (CEDULA, NOMBRESCOMPLETOS, GENERO, FECHADENACIMIENTO) VALUES (@CEDULA, @NOMBRESCOMPLETOS, @GENERO, @FECHADENACIMIENTO)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@CEDULA", SqlDbType.VarChar).Value = cedula.ToString();
                    querySaveStaff.Parameters.Add("@NOMBRESCOMPLETOS", SqlDbType.VarChar).Value = nombre.ToString();
                    querySaveStaff.Parameters.Add("@GENERO", SqlDbType.VarChar).Value = dropDownList1;
                    


                    //openCon.Open();
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }
                    finally
                    {
                        openCon.Close();
                        MessageBox.Show("Registro Exitoso");
                    }


                }
            }
        }
    }
}