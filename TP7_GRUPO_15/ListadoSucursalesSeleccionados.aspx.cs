using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP7_GRUPO_15
{
    public partial class ListadoSucursalesSeleccionados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["SucursalSeleccionadas"] != null)
                {
                    gvSucursalesSeleccionadas.DataSource = Session["SucursalSeleccionadas"];
                    gvSucursalesSeleccionadas.DataBind();
                }
            }

        }

        protected void btnEliminarSeleccion_Click(object sender, EventArgs e)
        {
            Session.Remove("SucursalSeleccionadas");
            gvSucursalesSeleccionadas.DataSource = null;
            gvSucursalesSeleccionadas.DataBind();
        }
    }
}