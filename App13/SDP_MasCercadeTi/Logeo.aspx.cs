using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_MasCercadeTi
{
    public partial class Logeo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_registrar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Formulario.aspx");
        }

        protected void btn_Ingresar_Click(object sender, ImageClickEventArgs e)
        {
            if (!Me.Loguear(txt_Usuario.Text, txt_Password.Text))
            {
                Me.MessageBox(this, "Credenciales incorrectas");
                return;
            }
            else
            {
                Response.Redirect("~/SubMenu.aspx");
            }
        }
    }
}