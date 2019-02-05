using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_MasCercadeTi
{
    public partial class SubMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Me.RevisarSesion(true)) return;

        }

        protected void btn_Consulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Consulta.aspx");
        }

        protected void btn_IngresarNuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Formulario.aspx");
        }

        protected void btn_Cumpleanios_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Proximamente.aspx");
        }

        protected void btn_Navidad_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Proximamente.aspx");
        }

        protected void btn_Eventos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Proximamente.aspx");
        }


        
    }
}