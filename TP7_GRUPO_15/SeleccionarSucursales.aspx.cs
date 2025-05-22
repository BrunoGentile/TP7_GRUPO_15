using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP7_GRUPO_15.Clases;
using System.Data.SqlClient;

namespace TP7_GRUPO_15
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                // CARGA LA LISTA DE SUCURSALES AL CARGAR LA PÁGINA
                CargarListView();
            }

        }

        // CARGA LA LISTA DE SUCURSALES EN EL LISTVIEW
        protected void CargarListView()
        {
            GestionSucursales GS = new GestionSucursales();
            ListViewSucursales.DataSource = GS.MostrarSucursales();
            ListViewSucursales.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            if (txtBuscarSucursal.Text == string.Empty)
            {
                CargarListView();
            }
            else // BUSCA SUCURSALES POR NOMBRE EN EL LISTVIEW
            {
                GestionSucursales GS = new GestionSucursales();
                ListViewSucursales.DataSource = GS.MostrarSucursalesIngresadas(txtBuscarSucursal.Text);
                ListViewSucursales.DataBind();
            }

        }

        // MÉTODO PARA LA PAGINACIÓN DEL LISTVIEW
        protected void ListViewSucursales_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            // ENCUENTRA EL DATAPAGER
            DataPager pager = (DataPager)ListViewSucursales.FindControl("DataPager1");

            // ACTUALIZA EL ÍNDICE DE PÁGINA SIN HACER UN DATABIND INMEDIATO (false)
            pager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            // REASIGNA DATOS A LA GRILLA
            if (Session["provinciaSeleccionada"] != null)
            {
            int idProvincia = Convert.ToInt32(Session["provinciaSeleccionada"]);
            GestionSucursales GS = new GestionSucursales();
            ListViewSucursales.DataSource = GS.CargarSucursalesPorProvincia(idProvincia);
            ListViewSucursales.DataBind();
            }
        }

        protected void btnProvincias_Command(object sender, CommandEventArgs e)
        {
          
            if (e.CommandName == "filtrarProvincia")
            {
                int idProvincia = Convert.ToInt32(e.CommandArgument);
                Session["provinciaSeleccionada"] = idProvincia;
                GestionSucursales gs = new GestionSucursales();
                ListViewSucursales.DataSource = gs.CargarSucursalesPorProvincia(idProvincia);
                ListViewSucursales.DataBind();
            }
        }
    }
}
    
