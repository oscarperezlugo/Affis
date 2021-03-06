﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Affis
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string connectionString = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
            string query = "SELECT NOMBRE, ROL, FICHA FROM LOGIN$ WHERE USUARIO=@user AND CONTRASENA=@pwd;";

            // set up a connection and command in using() blocks
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // add parameters and set their values
                cmd.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = TextBox2.Text;

                // open connection
                con.Open();

                // establish data reader
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    // if at least one row is returned....  
                    if (dr.Read())
                    {
                        // get employee ID and role from the reader
                        string employeeId = dr.GetFieldValue<string>(0);
                        int role = dr.GetFieldValue<int>(1);
                        double ficha = dr.GetFieldValue<double>(2);
                        Session["bienvenido"] = employeeId.ToString();
                        Session["ficha"] = ficha.ToString();
                        Session["fecha"] = DateTime.Now.ToString();
                        Session["dia"] = DateTime.Now.Day.ToString();
                        Session["fechacurso"] = DateTime.Now.Month.ToString();
                        Session["mes"] = "Enero";//DateTime.Now.Month.ToString("MMMM", CultureInfo.InvariantCulture).ToUpper();
                        Session["ano"] = DateTime.Now.Year.ToString();

                        // depending on role, jump off to various pages
                        switch (role)
                        {
                            //case "admin":
                              //  Response.Redirect("Admin.aspx");
                              //  break;

                            //case "manager":
                            //    Response.Redirect("manager.aspx");
                             //   break;

                            default:
                                Response.Redirect("InicioProceso.aspx");
                                break;
                        }
                    }
                    else
                    {
                        string error = "Usuario y Contraseña incorrectos";
                        Label1.Text = error;

                        // what do you want to do if NO ROW was returned? E.g. user/pwd combo is wrong
                    }

                    dr.Close();
                }

                con.Close();
            }
        }

        protected void LinkButtonClicked(object sender, EventArgs e)
        {
            Response.Redirect("RecuperarPass");
        }
    }
}