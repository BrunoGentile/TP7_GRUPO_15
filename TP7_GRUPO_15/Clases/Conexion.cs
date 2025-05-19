using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_15.Clases
{
    public class Conexion
    {
        private const string cadenaConexion = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";

        //CONSTRUCTOR
        public Conexion() 
        {
        }



        // OBTENGO CONEXIÓN CON LA BASE DE DATOS Y ABRO ESA CONEXIÓN ( ".Open" )
        public SqlConnection ObtenerConexion()
        {
            try
            {
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                conexion.Open();
                return conexion;
            }
            catch (Exception exception)
            {
                return null;
            }
        }

        // OBTENGO VARIABLE DONDE ALMACENO LA TABLA PEDIDA EN LA CONSULTA QUE RECIBE COMO PARÁMETRO
        // ESTE MÉTODO TAMBIÉN ABRE LA CONEXIÓN YA QUE HACE LLAMADA AL METODO OBTENER CONEXIÓN
        public SqlDataAdapter ObtenerAdaptador(string consultaSql)
        {
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlDataAdapter = new SqlDataAdapter(consultaSql, ObtenerConexion());
                return sqlDataAdapter;
            }
            catch (Exception exception)
            {
                return null;
            }
        }
    }
}
