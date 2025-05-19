using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_15.Clases
{
    public class Sucursales
    {

        //PROPIEDADES 
        private int _ID;
        private string _Nombre;
        private string _Descripcion;
        private string _URLImagen;

        //CONSTRUCTORES
        public Sucursales()
        {

        }

        public Sucursales(int ID, string Nombre, string Descripcion, string URLImagen)
        {
            _ID = ID;
            _Nombre = Nombre;
            _Descripcion = Descripcion;
            _URLImagen = URLImagen;
        }

        public Sucursales(int ID, string Nombre, string Descripcion)
        {
            _ID = ID;
            _Nombre = Nombre;
            _Descripcion = Descripcion;
        }

        // SETTERS Y GETTERS
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public string Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }

        public string Descripcion
        {
            get { return _Descripcion; }
            set { _Descripcion = value; }
        }

        public string URLImagen
        {
            get { return _URLImagen; }
            set { _URLImagen = value; }
        }
    }
}