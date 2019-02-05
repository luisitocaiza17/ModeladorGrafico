using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_MasCercadeTi
{
    public partial class Editar : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                ConfiguracionInicial();

                SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
                var registro = model.SDP_MasCercadeTi.FirstOrDefault(r => r.RegistroID == RegistroID);

                lbl_NombresT.Text = registro.Nombres;
                lbl_ApellidosT.Text = registro.Apellidos;
                txt_Nombres.Text = registro.Nombres;
                txt_Apellidos.Text = registro.Apellidos;
                txt_Identificacion.Text = registro.Identificacion;
                Me.DropDownSetValue(ddl_EstadoCivil, registro.EstadoCivil.ToString());
                Me.DropDownSetValue(ddl_Sexo, registro.Sexo.ToString());
                Me.DropDownSetValue(ddl_Sexo, registro.Sexo.ToString());
                Me.SetFecha(registro.FechaNacimiento.Value, ddl_PersonalesDia, ddl_PersonalesMes, ddl_PersonalesAnio);
                txt_Telefono.Text = registro.Telefono;
                txt_Celular.Text = registro.Celular;
                txt_EmailLaboral.Text = registro.EmailLaboral;
                txt_EmailPersonal.Text = registro.EmailPersonal;
                txt_Empresa.Text = registro.Empresa;
                txt_Direccion.Text = registro.Direccion;
                Me.DropDownSetValue(ddl_Ciudad, registro.Ciudad.ToString());
                txt_Cargo.Text = registro.Cargo;
                Me.SetFecha(registro.AniversarioEmpresa.Value, ddl_AniversarioEmpresaDia, ddl_AniversarioEmpresaMes, ddl_AniversarioEmpresaAnio);
                Me.DropDownSetValue(ddl_Deporte, registro.Deporte.ToString());
                Me.DropDownSetValue(ddl_ActividadesInteres, registro.ActividadesInteres.ToString());
                Me.DropDownSetValue(ddl_Hincha, registro.Hincha.ToString());
                Me.DropDownSetValue(ddl_GeneroMusical, registro.GeneroMusical.ToString());
                Me.DropDownSetValue(ddl_Cine, registro.GeneroCine.ToString());
                Me.DropDownSetValue(ddl_GeneroLiteratura, registro.GeneroLiteratura.ToString());
                Me.DropDownSetValue(ddl_ComidaFavorita, registro.ComidaFavorita.ToString());
                Me.SetFecha(registro.NacimientoConyuge.Value, ddl_ConyugeDia, ddl_ConyugeMes, ddl_ConyugeAnio);
                Me.SetFecha(registro.FechaAniversario.Value, ddl_AniversarioDia, ddl_AniversarioMes, ddl_AniversarioAnio);
                Me.DropDownSetValue(ddl_NumeroHijos, registro.NumeroHijos.ToString());


                if (registro.SexoHijo1.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo1, registro.SexoHijo1.ToString());
                if (registro.FechaHijo1.HasValue)
                    Me.SetFecha(registro.FechaHijo1.Value, ddl_DiaHijo1, ddl_MesHijo1, ddl_AnioHijo1);

                if (registro.SexoHijo2.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo2, registro.SexoHijo2.ToString());
                if (registro.FechaHijo2.HasValue)
                    Me.SetFecha(registro.FechaHijo2.Value, ddl_DiaHijo2, ddl_MesHijo2, ddl_AnioHijo2);

                if (registro.SexoHijo3.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo3, registro.SexoHijo3.ToString());
                if (registro.FechaHijo3.HasValue)
                    Me.SetFecha(registro.FechaHijo3.Value, ddl_DiaHijo3, ddl_MesHijo3, ddl_AnioHijo3);

                if (registro.SexoHijo4.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo4, registro.SexoHijo4.ToString());
                if (registro.FechaHijo4.HasValue)
                    Me.SetFecha(registro.FechaHijo4.Value, ddl_DiaHijo4, ddl_MesHijo4, ddl_AnioHijo4);

                if (registro.SexoHijo5.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo5, registro.SexoHijo5.ToString());
                if (registro.FechaHijo5.HasValue)
                    Me.SetFecha(registro.FechaHijo5.Value, ddl_DiaHijo5, ddl_MesHijo5, ddl_AnioHijo5);

                if (registro.SexoHijo6.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo6, registro.SexoHijo6.ToString());
                if (registro.FechaHijo6.HasValue)
                    Me.SetFecha(registro.FechaHijo6.Value, ddl_DiaHijo6, ddl_MesHijo6, ddl_AnioHijo6);

                if (registro.SexoHijo7.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo7, registro.SexoHijo7.ToString());
                if (registro.FechaHijo7.HasValue)
                    Me.SetFecha(registro.FechaHijo7.Value, ddl_DiaHijo7, ddl_MesHijo7, ddl_AnioHijo7);

                if (registro.SexoHijo8.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo8, registro.SexoHijo8.ToString());
                if (registro.FechaHijo8.HasValue)
                    Me.SetFecha(registro.FechaHijo8.Value, ddl_DiaHijo8, ddl_MesHijo8, ddl_AnioHijo8);

                if (registro.SexoHijo9.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo9, registro.SexoHijo9.ToString());
                if (registro.FechaHijo9.HasValue)
                    Me.SetFecha(registro.FechaHijo9.Value, ddl_DiaHijo9, ddl_MesHijo9, ddl_AnioHijo9);

                if (registro.SexoHijo10.HasValue)
                    Me.DropDownSetValue(ddl_SexoHijo10, registro.SexoHijo10.ToString());
                if (registro.FechaHijo10.HasValue)
                    Me.SetFecha(registro.FechaHijo10.Value, ddl_DiaHijo10, ddl_MesHijo10, ddl_AnioHijo10);

            }
        }

        protected void btn_Enviar_Click(object sender, EventArgs e)
        {
            // Proceso de validación
            string msg = ValidarFormulario();
            if (msg != "")
            {
                Me.MessageBox(this, msg);
                return;
            }

            Guid RegistroID = new Guid(Request["R"]);

            SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
            var item = model.SDP_MasCercadeTi.FirstOrDefault(r => r.RegistroID == RegistroID);

            // Proceso de grabación

            int NumeroHijos = int.Parse(ddl_NumeroHijos.SelectedValue);

            item.ActividadesInteres = Guid.Parse(ddl_ActividadesInteres.SelectedValue);
            item.ActividadesInteresNombre = ddl_ActividadesInteres.SelectedItem.Text;
            item.AniversarioEmpresa = Me.ObtenerFecha(ddl_AniversarioEmpresaDia, ddl_AniversarioEmpresaMes, ddl_AniversarioEmpresaAnio);
            item.Apellidos = txt_Apellidos.Text;
            item.Cargo = txt_Cargo.Text;
            item.Celular = txt_Celular.Text;
            item.Ciudad = Guid.Parse(ddl_Ciudad.SelectedValue);
            item.CiudadNombre = ddl_Ciudad.SelectedItem.Text;
            item.ComidaFavorita = Guid.Parse(ddl_ComidaFavorita.SelectedValue);
            item.ComidaFavoritaNombre = ddl_ComidaFavorita.SelectedItem.Text;
            item.Deporte = Guid.Parse(ddl_Deporte.SelectedValue);
            item.DeporteNombre = ddl_Deporte.SelectedItem.Text;
            item.Direccion = txt_Direccion.Text;
            item.EmailLaboral = txt_EmailLaboral.Text;
            item.EmailPersonal = txt_EmailPersonal.Text;
            item.Empresa = txt_Empresa.Text;
            item.EstadoCivil = Guid.Parse(ddl_EstadoCivil.SelectedValue);
            item.EstadoCivilNombre = ddl_EstadoCivil.SelectedItem.Text;
            item.FechaActualizacion = DateTime.Now;
            item.FechaAniversario = Me.ObtenerFecha(ddl_AniversarioDia, ddl_AniversarioMes, ddl_AniversarioAnio);
            item.FechaNacimiento = Me.ObtenerFecha(ddl_PersonalesDia, ddl_PersonalesMes, ddl_PersonalesAnio);
            item.GeneroCine = Guid.Parse(ddl_Cine.SelectedValue);
            item.GeneroCineNombre = ddl_Cine.SelectedItem.Text;
            item.GeneroLiteratura = Guid.Parse(ddl_GeneroLiteratura.SelectedValue);
            item.GeneroLiteraturaNombre = ddl_GeneroLiteratura.SelectedItem.Text;
            item.GeneroMusical = Guid.Parse(ddl_GeneroMusical.SelectedValue);
            item.GeneroMusicalNombre = ddl_GeneroMusical.SelectedItem.Text;
            item.Hincha = Guid.Parse(ddl_Hincha.SelectedValue);
            item.HinchaNombre = ddl_Hincha.SelectedItem.Text;
            item.Identificacion = txt_Identificacion.Text;
            item.NacimientoConyuge = Me.ObtenerFecha(ddl_ConyugeDia, ddl_ConyugeMes, ddl_ConyugeAnio);
            item.Nombres = txt_Nombres.Text;
            item.NumeroHijos = int.Parse(ddl_NumeroHijos.SelectedValue);
            item.Sexo = Guid.Parse(ddl_Sexo.SelectedValue);
            item.SexoNombre = ddl_Sexo.SelectedItem.Text;
            item.Telefono = txt_Telefono.Text;
            item.UsuarioActualizacion = Me.UsuarioLogueado.UsuarioID;

            if (NumeroHijos >= 1)
            {
                item.FechaHijo1 = Me.ObtenerFecha(ddl_DiaHijo1, ddl_MesHijo1, ddl_AnioHijo1);
                item.SexoHijo1 = Guid.Parse(ddl_SexoHijo1.SelectedValue);
                item.SexoHijo1Nombre = ddl_SexoHijo1.SelectedItem.Text;
            }

            if (NumeroHijos >= 2)
            {
                item.FechaHijo2 = Me.ObtenerFecha(ddl_DiaHijo2, ddl_MesHijo2, ddl_AnioHijo2);
                item.SexoHijo2 = Guid.Parse(ddl_SexoHijo2.SelectedValue);
                item.SexoHijo2Nombre = ddl_SexoHijo2.SelectedItem.Text;
            }

            if (NumeroHijos >= 3)
            {
                item.FechaHijo3 = Me.ObtenerFecha(ddl_DiaHijo3, ddl_MesHijo3, ddl_AnioHijo3);
                item.SexoHijo3 = Guid.Parse(ddl_SexoHijo3.SelectedValue);
                item.SexoHijo3Nombre = ddl_SexoHijo3.SelectedItem.Text;
            }

            if (NumeroHijos >= 4)
            {
                item.FechaHijo4 = Me.ObtenerFecha(ddl_DiaHijo4, ddl_MesHijo4, ddl_AnioHijo4);
                item.SexoHijo4 = Guid.Parse(ddl_SexoHijo4.SelectedValue);
                item.SexoHijo4Nombre = ddl_SexoHijo4.SelectedItem.Text;
            }

            if (NumeroHijos >= 5)
            {
                item.FechaHijo5 = Me.ObtenerFecha(ddl_DiaHijo5, ddl_MesHijo5, ddl_AnioHijo5);
                item.SexoHijo5 = Guid.Parse(ddl_SexoHijo5.SelectedValue);
                item.SexoHijo5Nombre = ddl_SexoHijo5.SelectedItem.Text;
            }

            if (NumeroHijos >= 6)
            {
                item.FechaHijo6 = Me.ObtenerFecha(ddl_DiaHijo6, ddl_MesHijo6, ddl_AnioHijo6);
                item.SexoHijo6 = Guid.Parse(ddl_SexoHijo6.SelectedValue);
                item.SexoHijo6Nombre = ddl_SexoHijo6.SelectedItem.Text;
            }

            if (NumeroHijos >= 7)
            {
                item.FechaHijo7 = Me.ObtenerFecha(ddl_DiaHijo7, ddl_MesHijo7, ddl_AnioHijo7);
                item.SexoHijo7 = Guid.Parse(ddl_SexoHijo7.SelectedValue);
                item.SexoHijo7Nombre = ddl_SexoHijo7.SelectedItem.Text;
            }

            if (NumeroHijos >= 8)
            {
                item.FechaHijo8 = Me.ObtenerFecha(ddl_DiaHijo8, ddl_MesHijo8, ddl_AnioHijo8);
                item.SexoHijo8 = Guid.Parse(ddl_SexoHijo8.SelectedValue);
                item.SexoHijo8Nombre = ddl_SexoHijo8.SelectedItem.Text;
            }

            if (NumeroHijos >= 9)
            {
                item.FechaHijo9 = Me.ObtenerFecha(ddl_DiaHijo9, ddl_MesHijo9, ddl_AnioHijo9);
                item.SexoHijo9 = Guid.Parse(ddl_SexoHijo9.SelectedValue);
                item.SexoHijo9Nombre = ddl_SexoHijo9.SelectedItem.Text;
            }

            if (NumeroHijos >= 10)
            {
                item.FechaHijo10 = Me.ObtenerFecha(ddl_DiaHijo10, ddl_MesHijo10, ddl_AnioHijo10);
                item.SexoHijo10 = Guid.Parse(ddl_SexoHijo10.SelectedValue);
                item.SexoHijo10Nombre = ddl_SexoHijo10.SelectedItem.Text;
            }

            model.SaveChanges();

            Response.Redirect("ResumenEdicion.aspx?r=" + RegistroID.ToString());
        }


        private void ConfiguracionInicial()
        {
            // Llenado de combos
            Me.DropDownBind(ddl_ActividadesInteres, Me.ObtenerCatalogo("Actividades Interes"));
            Me.DropDownBind(ddl_AnioHijo1, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo10, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo2, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo3, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo4, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo5, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo6, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo7, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo8, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AnioHijo9, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AniversarioAnio, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AniversarioEmpresaAnio, Me.ObtenerAnios());
            Me.DropDownBind(ddl_ConyugeAnio, Me.ObtenerAnios());
            Me.DropDownBind(ddl_PersonalesAnio, Me.ObtenerAnios());
            Me.DropDownBind(ddl_PersonalesAnio, Me.ObtenerAnios());
            Me.DropDownBind(ddl_AniversarioDia, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_AniversarioEmpresaDia, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_ConyugeDia, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo1, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo10, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo2, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo3, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo4, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo5, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo6, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo7, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo8, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_DiaHijo9, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_PersonalesDia, Me.ObtenerCatalogo("Dia"));
            Me.DropDownBind(ddl_AniversarioEmpresaMes, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_AniversarioMes, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_ConyugeMes, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo1, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo10, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo2, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo3, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo4, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo5, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo6, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo7, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo8, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_MesHijo9, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_PersonalesMes, Me.ObtenerCatalogo("Mes"));
            Me.DropDownBind(ddl_Cine, Me.ObtenerCatalogo("Cine"));
            Me.DropDownBind(ddl_Ciudad, Me.ObtenerCatalogo("Ciudad"));
            Me.DropDownBind(ddl_ComidaFavorita, Me.ObtenerCatalogo("Comida Favorita"));
            Me.DropDownBind(ddl_Deporte, Me.ObtenerCatalogo("Deporte"));
            Me.DropDownBind(ddl_EstadoCivil, Me.ObtenerCatalogo("Estado Civil"));
            Me.DropDownBind(ddl_GeneroLiteratura, Me.ObtenerCatalogo("Genero Literatura"));
            Me.DropDownBind(ddl_GeneroMusical, Me.ObtenerCatalogo("Genero Musical"));
            Me.DropDownBind(ddl_Hincha, Me.ObtenerCatalogo("Hincha"));
            Me.DropDownBind(ddl_Sexo, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo1, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo10, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo2, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo3, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo4, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo5, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo6, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo7, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo8, Me.ObtenerCatalogo("Sexo"));
            Me.DropDownBind(ddl_SexoHijo9, Me.ObtenerCatalogo("Sexo"));

        }

        private string ValidarFormulario()
        {
            string msg = "";

            if (txt_Nombres.Text == "")
            {
                msg += "El campo Nombres es obligatorio" + Environment.NewLine;
            }

            if (txt_Apellidos.Text == "")
            {
                msg += "El campo Apellidos es obligatorio" + Environment.NewLine;
            }

            if (txt_Identificacion.Text == "")
            {
                msg += "El campo Cédula de Identidad es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_Sexo.SelectedValue)))
            {
                msg += "El campo Género es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_PersonalesDia.SelectedValue)))
            {
                msg += "El campo Fecha de Nacimiento (Día) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_PersonalesMes.SelectedValue)))
            {
                msg += "El campo Fecha de Nacimiento (Mes) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiquetaAnio(Guid.Parse(ddl_PersonalesAnio.SelectedValue)))
            {
                msg += "El campo Fecha de Nacimiento (Año) es obligatorio" + Environment.NewLine;
            }

            if (!Me.FechaValida(ddl_PersonalesDia, ddl_PersonalesMes, ddl_PersonalesAnio))
            {
                msg += "La fecha de nacimiento no es válida" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_EstadoCivil.SelectedValue)))
            {
                msg += "El campo Estado Civil es obligatorio" + Environment.NewLine;
            }

            if (txt_Telefono.Text == "")
            {
                msg += "El campo Teléfono es obligatorio" + Environment.NewLine;
            }

            if (txt_Celular.Text == "")
            {
                msg += "El campo Celular es obligatorio" + Environment.NewLine;
            }

            if (txt_EmailLaboral.Text == "")
            {
                msg += "El campo Correo Electrónico Laboral es obligatorio" + Environment.NewLine;
            }

            if (txt_EmailPersonal.Text == "")
            {
                msg += "El campo Correo Electrónico Personal es obligatorio" + Environment.NewLine;
            }

            if (!Me.EmailValido(txt_EmailLaboral.Text))
            {
                msg += "El campo Correo Electrónico Laboral no contiene un correo electrónico válido" + Environment.NewLine;
            }

            if (!Me.EmailValido(txt_EmailPersonal.Text))
            {
                msg += "El campo Correo Electrónico Personal no contiene un correo electrónico válido" + Environment.NewLine;
            }

            if (txt_Empresa.Text == "")
            {
                msg += "El campo Empresa es obligatorio" + Environment.NewLine;
            }

            if (txt_Direccion.Text == "")
            {
                msg += "El campo Dirección es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_Ciudad.SelectedValue)))
            {
                msg += "El campo Ciudad es obligatorio" + Environment.NewLine;
            }

            if (txt_Cargo.Text == "")
            {
                msg += "El campo Cargo es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_AniversarioEmpresaDia.SelectedValue)))
            {
                msg += "El campo Fecha de Aniversario Empresa (Día) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_AniversarioEmpresaMes.SelectedValue)))
            {
                msg += "El campo Fecha de Aniversario Empresa (Mes) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiquetaAnio(Guid.Parse(ddl_AniversarioEmpresaAnio.SelectedValue)))
            {
                msg += "El campo Fecha de Aniversario Empresa (Año) es obligatorio" + Environment.NewLine;
            }

            if (!Me.FechaValida(ddl_AniversarioEmpresaDia, ddl_AniversarioEmpresaMes, ddl_AniversarioEmpresaAnio))
            {
                msg += "La Fecha de Aniversario Empresa no es válida" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_Deporte.SelectedValue)))
            {
                msg += "El campo Deporte es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_ActividadesInteres.SelectedValue)))
            {
                msg += "El campo Actividades de Interés (hobbies) es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_Hincha.SelectedValue)))
            {
                msg += "El campo Hicha Equipo de Fútbol es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_GeneroMusical.SelectedValue)))
            {
                msg += "El campo Género Musical es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_Cine.SelectedValue)))
            {
                msg += "El campo Género Cine es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_GeneroLiteratura.SelectedValue)))
            {
                msg += "El campo Género Literatura es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_ComidaFavorita.SelectedValue)))
            {
                msg += "El campo Comida Favorita es obligatorio. En caso de no tener un preferido, escoja Ninguno." + Environment.NewLine;
            }


            if (Me.EsEtiqueta(Guid.Parse(ddl_ConyugeDia.SelectedValue)))
            {
                msg += "El campo Fecha de Nacimiento Cónyuge (Día) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_ConyugeMes.SelectedValue)))
            {
                msg += "El campo Fecha de Nacimiento Cónyuge (Mes) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiquetaAnio(Guid.Parse(ddl_ConyugeAnio.SelectedValue)))
            {
                msg += "El campo Fecha de Nacimiento Cónyuge (Año) es obligatorio" + Environment.NewLine;
            }

            if (!Me.FechaValida(ddl_ConyugeDia, ddl_ConyugeMes, ddl_ConyugeAnio))
            {
                msg += "La Fecha de Nacimiento Cónyuge no es válida" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_AniversarioDia.SelectedValue)))
            {
                msg += "El campo Fecha Aniversario (Día) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiqueta(Guid.Parse(ddl_AniversarioMes.SelectedValue)))
            {
                msg += "El campo Fecha Aniversario (Mes) es obligatorio" + Environment.NewLine;
            }

            if (Me.EsEtiquetaAnio(Guid.Parse(ddl_AniversarioAnio.SelectedValue)))
            {
                msg += "El campo Fecha Aniversario (Año) es obligatorio" + Environment.NewLine;
            }

            if (!Me.FechaValida(ddl_AniversarioDia, ddl_AniversarioMes, ddl_AniversarioAnio))
            {
                msg += "La Fecha Aniversario no es válida" + Environment.NewLine;
            }

            int NumeroHijos = int.Parse(ddl_NumeroHijos.SelectedValue);

            if (NumeroHijos >= 1 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo1.SelectedValue)))
            {
                msg += "El campo Género del Hijo 1 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 1 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo1.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 1 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 1 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo1.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 1 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 1 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo1.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 1 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 1 && !Me.FechaValida(ddl_DiaHijo1, ddl_MesHijo1, ddl_AnioHijo1))
            {
                msg += "La Fecha Nacimiento Hijo 1 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 2 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo2.SelectedValue)))
            {
                msg += "El campo Género del Hijo 2 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 2 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo2.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 2 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 2 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo2.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 2 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 2 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo2.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 2 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 2 && !Me.FechaValida(ddl_DiaHijo2, ddl_MesHijo2, ddl_AnioHijo2))
            {
                msg += "La Fecha Nacimiento Hijo 2 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 3 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo3.SelectedValue)))
            {
                msg += "El campo Género del Hijo 3 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 3 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo3.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 3 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 3 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo3.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 3 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 3 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo3.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 3 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 3 && !Me.FechaValida(ddl_DiaHijo3, ddl_MesHijo3, ddl_AnioHijo3))
            {
                msg += "La Fecha Nacimiento Hijo 3 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 4 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo4.SelectedValue)))
            {
                msg += "El campo Género del Hijo 4 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 4 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo4.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 4 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 4 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo4.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 4 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 4 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo4.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 4 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 4 && !Me.FechaValida(ddl_DiaHijo4, ddl_MesHijo4, ddl_AnioHijo4))
            {
                msg += "La Fecha Nacimiento Hijo 4 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 5 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo5.SelectedValue)))
            {
                msg += "El campo Género del Hijo 5 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 5 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo5.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 5 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 5 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo5.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 5 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 5 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo5.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 5 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 5 && !Me.FechaValida(ddl_DiaHijo5, ddl_MesHijo5, ddl_AnioHijo5))
            {
                msg += "La Fecha Nacimiento Hijo 5 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 6 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo6.SelectedValue)))
            {
                msg += "El campo Género del Hijo 6 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 6 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo6.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 6 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 6 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo6.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 6 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 6 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo6.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 6 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 6 && !Me.FechaValida(ddl_DiaHijo6, ddl_MesHijo6, ddl_AnioHijo6))
            {
                msg += "La Fecha Nacimiento Hijo 6 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 7 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo7.SelectedValue)))
            {
                msg += "El campo Género del Hijo 7 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 7 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo7.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 7 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 7 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo7.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 7 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 7 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo7.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 7 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 7 && !Me.FechaValida(ddl_DiaHijo7, ddl_MesHijo7, ddl_AnioHijo7))
            {
                msg += "La Fecha Nacimiento Hijo 7 no es válida" + Environment.NewLine;
            }


            if (NumeroHijos >= 8 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo8.SelectedValue)))
            {
                msg += "El campo Género del Hijo 8 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 8 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo8.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 8 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 8 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo8.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 8 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 8 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo8.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 8 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 8 && !Me.FechaValida(ddl_DiaHijo8, ddl_MesHijo8, ddl_AnioHijo8))
            {
                msg += "La Fecha Nacimiento Hijo 8 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 9 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo9.SelectedValue)))
            {
                msg += "El campo Género del Hijo 9 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 9 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo9.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 9 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 9 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo9.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 9 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 9 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo9.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 9 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 9 && !Me.FechaValida(ddl_DiaHijo9, ddl_MesHijo9, ddl_AnioHijo9))
            {
                msg += "La Fecha Nacimiento Hijo 9 no es válida" + Environment.NewLine;
            }

            if (NumeroHijos >= 10 && Me.EsEtiqueta(Guid.Parse(ddl_SexoHijo10.SelectedValue)))
            {
                msg += "El campo Género del Hijo 10 es obligatorio." + Environment.NewLine;
            }

            if (NumeroHijos >= 10 && Me.EsEtiqueta(Guid.Parse(ddl_DiaHijo10.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 10 (Día) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 10 && Me.EsEtiqueta(Guid.Parse(ddl_MesHijo10.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 10 (Mes) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 10 && Me.EsEtiquetaAnio(Guid.Parse(ddl_AnioHijo10.SelectedValue)))
            {
                msg += "El campo Fecha Nacimiento Hijo 10 (Año) es obligatorio" + Environment.NewLine;
            }

            if (NumeroHijos >= 10 && !Me.FechaValida(ddl_DiaHijo10, ddl_MesHijo10, ddl_AnioHijo10))
            {
                msg += "La Fecha Nacimiento Hijo 10 no es válida" + Environment.NewLine;
            }


            return msg;
        }
    }
}