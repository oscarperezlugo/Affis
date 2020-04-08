using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Affis
{
    public class ConexionesDB
    {
        public static DataTable usuariosDT;
        SqlConnection conn = new SqlConnection("workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity");
        string conex = "workstation id=Affinity.mssql.somee.com;packet size=4096;user id=operezlugo_SQLLogin_1;pwd=tc65ztfi6o;data source=Affinity.mssql.somee.com;persist security info=False;initial catalog=Affinity";
        public DataSet Obtenerinfo(string filtro)
        {
            DataSet ds = new DataSet();
            

            string sqlQuery = "SELECT * FROM EMPRESAS WHERE NOMBRECOMERCIAL Like '%" + filtro + "%'";
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, conn);
            conn.Open();
            da.Fill(ds);
            conn.Close();

            return ds;
        }
        public DataSet Obtenerinfo2(string filtro)
        {
            DataSet ds = new DataSet();
            

            string sqlQuery = "SELECT * FROM ASEGURADOS WHERE CEDULA Like '%" + filtro + "%'";
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, conn);
            conn.Open();
            da.Fill(ds);
            conn.Close();                       
            return ds;
           
               
        }
        public DataSet Obtenerinfo3(filtrovalor filtrorec)
        {
            string filtro = filtrorec.filtro;
            string plan = filtrorec.plan;
            string relacion = filtrorec.relacion;
            DataSet ds = new DataSet();


            string sqlQuery = "SELECT DISTINCT[Valor] FROM[PRODUCTOS] WHERE(([Producto] LIKE '%" + filtro + "%') AND ([Aplicaa] LIKE '%" + relacion + "%') AND ([Plano] LIKE '%" + plan +"%'))";
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, conn);
            conn.Open();
            da.Fill(ds);
            conn.Close();
            return ds;


        }
    }
}