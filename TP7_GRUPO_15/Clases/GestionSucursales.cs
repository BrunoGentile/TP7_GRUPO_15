using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TP7_GRUPO_15.Clases;

namespace TP7_GRUPO_15.Clases
{
    public class GestionSucursales
    {
        private Conexion conexion;
        private Sucursales sucursal;

        // CONSTRUCTOR
        public GestionSucursales()
        {
            conexion = new Conexion();
        }

        public GestionSucursales(Sucursales sucursal)
        {
            this.sucursal = sucursal;
            conexion = new Conexion();
        }

        // RETORNA UN DATATABLE CON LA TABLA DE SUCURSALES
        public DataTable MostrarSucursales()
        {
            DataSet ds = new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("SELECT * FROM Sucursal", conexion.ObtenerConexion());

            sqlDataAdapter.Fill(ds, "Sucursal");

            conexion.ObtenerConexion().Close();

            return ds.Tables["Sucursal"];
        }

        public DataTable MostrarSucursalesIngresadas(string Busqueda)
        {
            
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Sucursal WHERE NombreSucursal LIKE @Busqueda", conexion.ObtenerConexion());
            sqlCommand.Parameters.AddWithValue("@Busqueda", "%" + Busqueda + "%");

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);

            conexion.ObtenerConexion().Close();

            return dt;
        }

        public DataTable OrdenDescendente()
        {
            //ORDENA LAS SUCURSALES EN BASE A SU ID DE FORMA DESCENDENTE (DE MAYOR A MENOR)
            DataSet ds = new DataSet();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("SELECT * FROM Sucursal ORDER BY Id_Sucursal DESC", conexion.ObtenerConexion());
            sqlDataAdapter.Fill(ds, "Sucursal");
            conexion.ObtenerConexion().Close();
            return ds.Tables["Sucursal"];
        }
    }
    
}
