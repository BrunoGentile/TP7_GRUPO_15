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

    }
      
}
