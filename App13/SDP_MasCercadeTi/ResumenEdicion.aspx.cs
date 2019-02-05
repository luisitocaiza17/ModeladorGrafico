using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_MasCercadeTi
{
    public partial class ResumenEdicion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Me.RevisarSesion(true)) return;

            if (string.IsNullOrEmpty(Request["r"]))
            {
                Response.Redirect("~/Consulta.aspx");
                return;
            }

            Guid RegistroID = new Guid(Request["R"]);


            SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
            var registro = model.SDP_MasCercadeTi.FirstOrDefault(r => r.RegistroID == RegistroID);

            lbl_NombresT.Text = registro.Nombres;
            lbl_ApellidosT.Text = registro.Apellidos;
            lbl_Nombres.Text = registro.Nombres;
            lbl_Apellidos.Text = registro.Apellidos;
            lbl_Identificación.Text = registro.Identificacion;
            lbl_EstadoCivil.Text = registro.EstadoCivilNombre;
            lbl_Sexo.Text = registro.SexoNombre;
            lbl_FechaNacimiento.Text = registro.FechaNacimiento.Value.ToString("dd/MMM/yyyy");
            lbl_Edad.Text = Me.CalcularEdad(registro.FechaNacimiento) + " años";
            lbl_Telefono.Text = registro.Telefono;
            lbl_Celular.Text = registro.Celular;
            lbl_EmailLaboral.Text = registro.EmailLaboral;
            lbl_EmailPersonal.Text = registro.EmailPersonal;
            lbl_Empresa.Text = registro.Empresa;
            lbl_Direccion.Text = registro.Direccion;
            lbl_Ciudad.Text = registro.CiudadNombre;
            lbl_Cargo.Text = registro.Cargo;
            lbl_AniversarioEmpresa.Text = registro.AniversarioEmpresa.Value.ToString("dd/MMM/yyyy");
            lbl_AniosEmpresa.Text = Me.CalcularEdad(registro.AniversarioEmpresa) + " años";
            lbl_Deporte.Text = registro.DeporteNombre;
            lbl_ActividadInteres.Text = registro.ActividadesInteresNombre;
            lbl_Hincha.Text = registro.HinchaNombre;
            lbl_GeneroMusical.Text = registro.GeneroMusicalNombre;
            lbl_GeneroCine.Text = registro.GeneroCineNombre;
            lbl_GeneroLiteratura.Text = registro.GeneroLiteraturaNombre;
            lbl_ComidaFavorita.Text = registro.ComidaFavoritaNombre;
            lbl_FechaConyuge.Text = registro.NacimientoConyuge.Value.ToString("dd/MMM/yyyy");
            lbl_EdadConyuge.Text = Me.CalcularEdad(registro.NacimientoConyuge) + " años";
            lbl_Aniversario.Text = registro.FechaAniversario.Value.ToString("dd/MMM/yyyy");
            lbl_AniosAniversario.Text = Me.CalcularEdad(registro.FechaAniversario);
            lbl_NumeroHijos.Text = registro.NumeroHijos.Value.ToString();
            
            bloqueHijo1.Visible = registro.NumeroHijos.Value >= 1;
            lbl_SexoHijo1.Text = registro.SexoHijo1Nombre;
            lbl_FechaHijo1.Text = registro.FechaHijo1.HasValue ? registro.FechaHijo1.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo1.Text = registro.FechaHijo1.HasValue ? Me.CalcularEdad(registro.FechaHijo1) : "";

            bloqueHijo2.Visible = registro.NumeroHijos.Value >= 2;
            lbl_SexoHijo2.Text = registro.SexoHijo2Nombre;
            lbl_FechaHijo2.Text = registro.FechaHijo2.HasValue ? registro.FechaHijo2.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo2.Text = registro.FechaHijo2.HasValue ? Me.CalcularEdad(registro.FechaHijo2) : "";

            bloqueHijo3.Visible = registro.NumeroHijos.Value >= 3;
            lbl_SexoHijo3.Text = registro.SexoHijo3Nombre;
            lbl_FechaHijo3.Text = registro.FechaHijo3.HasValue ? registro.FechaHijo3.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo3.Text = registro.FechaHijo3.HasValue ? Me.CalcularEdad(registro.FechaHijo3) : "";

            bloqueHijo4.Visible = registro.NumeroHijos.Value >= 4;
            lbl_SexoHijo4.Text = registro.SexoHijo4Nombre;
            lbl_FechaHijo4.Text = registro.FechaHijo4.HasValue ? registro.FechaHijo4.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo4.Text = registro.FechaHijo4.HasValue ? Me.CalcularEdad(registro.FechaHijo4) : "";

            bloqueHijo5.Visible = registro.NumeroHijos.Value >= 5;
            lbl_SexoHijo5.Text = registro.SexoHijo5Nombre;
            lbl_FechaHijo5.Text = registro.FechaHijo5.HasValue ? registro.FechaHijo5.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo5.Text = registro.FechaHijo5.HasValue ? Me.CalcularEdad(registro.FechaHijo5) : "";

            bloqueHijo6.Visible = registro.NumeroHijos.Value >= 6;
            lbl_SexoHijo6.Text = registro.SexoHijo6Nombre;
            lbl_FechaHijo6.Text = registro.FechaHijo6.HasValue ? registro.FechaHijo6.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo6.Text = registro.FechaHijo6.HasValue ? Me.CalcularEdad(registro.FechaHijo6) : "";

            bloqueHijo7.Visible = registro.NumeroHijos.Value >= 7;
            lbl_SexoHijo7.Text = registro.SexoHijo7Nombre;
            lbl_FechaHijo7.Text = registro.FechaHijo7.HasValue ? registro.FechaHijo7.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo7.Text = registro.FechaHijo7.HasValue ? Me.CalcularEdad(registro.FechaHijo7) : "";

            bloqueHijo8.Visible = registro.NumeroHijos.Value >= 8;
            lbl_SexoHijo8.Text = registro.SexoHijo8Nombre;
            lbl_FechaHijo8.Text = registro.FechaHijo8.HasValue ? registro.FechaHijo8.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo8.Text = registro.FechaHijo8.HasValue ? Me.CalcularEdad(registro.FechaHijo8) : "";

            bloqueHijo9.Visible = registro.NumeroHijos.Value >= 9;
            lbl_SexoHijo9.Text = registro.SexoHijo9Nombre;
            lbl_FechaHijo9.Text = registro.FechaHijo9.HasValue ? registro.FechaHijo9.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo9.Text = registro.FechaHijo9.HasValue ? Me.CalcularEdad(registro.FechaHijo9) : "";

            bloqueHijo10.Visible = registro.NumeroHijos.Value >= 10;
            lbl_SexoHijo10.Text = registro.SexoHijo10Nombre;
            lbl_FechaHijo10.Text = registro.FechaHijo10.HasValue ? registro.FechaHijo10.Value.ToString("dd/MMM/yyyy") : "";
            lbl_EdadHijo10.Text = registro.FechaHijo10.HasValue ? Me.CalcularEdad(registro.FechaHijo10) : "";
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            Guid RegistroID = new Guid(Request["R"]);
            Response.Redirect("Editar.aspx?r=" + RegistroID.ToString());
        }
    }
}