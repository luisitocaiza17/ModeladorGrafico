using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_MasCercadeTi
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Me.RevisarSesion(true)) return;

            if (!IsPostBack)
            {
                ConfiguracionInicial();
            }
        }

        protected void ConfiguracionInicial()
        {
            Me.DropDownBind(ddl_Sexo, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_EstadoCivil, Me.ObtenerCatalogo("Estado Civil"));
            Me.DropDownBind(ddl_PersonalesMes, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_Ciudad, Me.ObtenerCatalogo("Ciudad"));
            Me.DropDownBind(ddl_AniversarioEmpresaMes, Me.ObtenerCatalogo("Mes"));

            Me.DropDownBind(ddl_ActividadesInteres, Me.ObtenerCatalogo("Actividades Interes"));
            Me.DropDownBind(ddl_ComidaFavorita, Me.ObtenerCatalogo("Comida Favorita"));
            Me.DropDownBind(ddl_Deporte, Me.ObtenerCatalogo("Deporte"));
            Me.DropDownBind(ddl_GeneroLiteratura, Me.ObtenerCatalogo("Genero Literatura"));
            Me.DropDownBind(ddl_GeneroMusical, Me.ObtenerCatalogo("Genero Musical"));
            Me.DropDownBind(ddl_Hincha, Me.ObtenerCatalogo("Hincha"));
            Me.DropDownBind(ddl_Cine, Me.ObtenerCatalogo("Cine"));


        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            CriteriosBusqueda criterios = new CriteriosBusqueda();

            criterios.Texto = txt_Criterio.Text;
            criterios.Genero = (Me.EsEtiqueta(Guid.Parse(ddl_Sexo.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_Sexo.SelectedValue));
            criterios.EstadoCivil = (Me.EsEtiqueta(Guid.Parse(ddl_EstadoCivil.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_EstadoCivil.SelectedValue));
            criterios.MesNacimiento = (Me.EsEtiqueta(Guid.Parse(ddl_PersonalesMes.SelectedValue)) ? (int?)null : int.Parse(ddl_PersonalesMes.SelectedItem.Text));
            criterios.Ciudad = (Me.EsEtiqueta(Guid.Parse(ddl_Ciudad.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_Ciudad.SelectedValue));
            criterios.MesAniversarioEmpresa = (Me.EsEtiqueta(Guid.Parse(ddl_AniversarioEmpresaMes.SelectedValue)) ? (int?)null : int.Parse(ddl_AniversarioEmpresaMes.SelectedItem.Text));
            criterios.Deporte = (Me.EsEtiqueta(Guid.Parse(ddl_Deporte.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_Deporte.SelectedValue));
            criterios.Hincha = (Me.EsEtiqueta(Guid.Parse(ddl_Hincha.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_Hincha.SelectedValue));
            criterios.GeneroCine = (Me.EsEtiqueta(Guid.Parse(ddl_Cine.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_Cine.SelectedValue));
            criterios.ComidaFavorita = (Me.EsEtiqueta(Guid.Parse(ddl_ComidaFavorita.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_ComidaFavorita.SelectedValue));
            criterios.GeneroMusical = (Me.EsEtiqueta(Guid.Parse(ddl_GeneroMusical.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_GeneroMusical.SelectedValue));
            criterios.GeneroLiteratura = (Me.EsEtiqueta(Guid.Parse(ddl_GeneroLiteratura.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_GeneroLiteratura.SelectedValue));
            criterios.ActividadesInteres = (Me.EsEtiqueta(Guid.Parse(ddl_ActividadesInteres.SelectedValue)) ? (Guid?)null : Guid.Parse(ddl_ActividadesInteres.SelectedValue));
            criterios.TieneHijos = chk_TieneHijos.Checked;

            Guid Key = Guid.NewGuid();
            Session[Key.ToString()] = criterios;

            Response.Redirect("~/ResultadoConsulta.aspx?k=" + Key.ToString());
        }
    }
}