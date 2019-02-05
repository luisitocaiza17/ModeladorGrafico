using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Text.RegularExpressions;

namespace SDP_MasCercadeTi
{
    public class Me
    {


        public static List<SDP_Catalogo_VTA> ObtenerCatalogo(string NombreTipo)
        {
            SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
            return model.SDP_Catalogo_VTA.Where(c => c.TipoCatalogo == NombreTipo).OrderBy(c => c.Orden).ThenBy(c => c.Nombre).ToList();
        }

        public static List<SDP_Catalogo_VTA> ObtenerAnios()
        {
            List<SDP_Catalogo_VTA> lst = new List<SDP_Catalogo_VTA>();

            for (int i = DateTime.Now.Year - 100; i <= DateTime.Now.Year; i++)
            {
                SDP_Catalogo_VTA n = new SDP_Catalogo_VTA();
                n.Activo = true;
                n.CatalogoID = Guid.NewGuid();
                n.Nombre = i.ToString();
                n.Orden = i;
                n.TipoCatalogo = "Anio";
                n.TipoCatalogoID = Guid.NewGuid();
                n.Var1 = null;
                n.Var2 = null;
                n.Var3 = null;
                n.Var4 = null;
                n.Var5 = null;

                lst.Add(n);

            }

            SDP_Catalogo_VTA nv = new SDP_Catalogo_VTA();
            nv.Activo = true;
            nv.CatalogoID = new Guid("44444444-4444-4444-4444-444444444444");
            nv.Nombre = "Año";
            nv.Orden = 5000;
            nv.TipoCatalogo = "Anio";
            nv.TipoCatalogoID = Guid.NewGuid();
            nv.Var1 = null;
            nv.Var2 = null;
            nv.Var3 = null;
            nv.Var4 = null;
            nv.Var5 = null;

            lst.Add(nv);

            return lst.OrderByDescending(c => c.Orden).ToList();
        }

        public static void DropDownBind(DropDownList ddl, List<SDP_Catalogo_VTA> lst)
        {
            ddl.DataSource = lst;
            ddl.DataTextField = "Nombre";
            ddl.DataValueField = "CatalogoID";
            ddl.DataBind();
        }

        public static void DropDownSetValue(DropDownList ddl, string value)
        {
            ddl.ClearSelection();
            ddl.SelectedValue = value;
        }

        public static void SetFecha(DateTime Fecha, DropDownList ddl_dia, DropDownList ddl_mes, DropDownList ddl_anio)
        {
            ddl_dia.ClearSelection();
            ddl_mes.ClearSelection();
            ddl_anio.ClearSelection();

            foreach (ListItem item in ddl_dia.Items)
            {
                if (EsEtiqueta(new Guid(item.Value))) continue;
                if (int.Parse(item.Text) == Fecha.Day)
                {
                    item.Selected = true;
                    break;
                }
            }

            foreach (ListItem item in ddl_mes.Items)
            {
                if (EsEtiqueta(new Guid(item.Value))) continue;
                if (int.Parse(item.Text) == Fecha.Month)
                {
                    item.Selected = true;
                    break;
                }
            }

            foreach (ListItem item in ddl_anio.Items)
            {
                if (EsEtiquetaAnio(new Guid(item.Value))) continue;
                if (int.Parse(item.Text) == Fecha.Year)
                {
                    item.Selected = true;
                    break;
                }
            }
        }

        public static bool EsEtiqueta(Guid CatalogoID)
        {
            SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
            return model.SDP_Catalogo_VTA.FirstOrDefault(c => c.CatalogoID == CatalogoID).Orden == 0;
        }

        public static bool EsEtiquetaAnio(Guid CatalogoID)
        {
            if (CatalogoID == new Guid("44444444-4444-4444-4444-444444444444")) return true;

            return false;
        }
        public static string CalcularEdad(DateTime? Fecha)
        {
            if (Fecha.HasValue) return "";
            TimeSpan ts = (DateTime.Today - Fecha.Value);
            return ((int)(ts.TotalDays / 365.2425)).ToString();
        }

        public static bool FechaValida(DropDownList dia, DropDownList mes, DropDownList anio)
        {
            try
            {
                int dd = int.Parse(dia.SelectedItem.Text);
                int mm = int.Parse(mes.SelectedItem.Text);
                int yy = int.Parse(anio.SelectedItem.Text);
                DateTime d = new DateTime(yy, mm, dd);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static DateTime? ObtenerFecha(DropDownList dia, DropDownList mes, DropDownList anio)
        {
            if (!FechaValida(dia, mes, anio)) return (DateTime?)null;
            int dd = int.Parse(dia.SelectedItem.Text);
            int mm = int.Parse(mes.SelectedItem.Text);
            int yy = int.Parse(anio.SelectedItem.Text);

            return (DateTime?)new DateTime(yy, mm, dd);
        }

        public static bool EmailValido(string email)
        {
            string expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, string.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public static SDP_Usuario UsuarioLogueado {
            get
            {
                return (SDP_Usuario)HttpContext.Current.Session["UsuarioLogueado"];
            }
            set
            {
                HttpContext.Current.Session["UsuarioLogueado"] = value;
            }
        }

        public static bool Loguear(string Usuario, string Password)
        {
            SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
            string un = Usuario.ToLower();
            var match = model.SDP_Usuario.Where(u => u.Username.ToLower() == un && u.Password == Password);

            if (match.Count() == 0)
            {
                UsuarioLogueado = null;
                return false;
            }
            if (match.Count() == 1)
            {
                UsuarioLogueado = match.First();
                return true;
            }
            if (match.Count() > 1)
            {
                UsuarioLogueado = match.First();
                return true;
            }

            return false;

        }

        public static bool RevisarSesion(bool Redirect)
        {
            if (UsuarioLogueado == null)
            {
                if (Redirect)
                {
                    HttpContext.Current.Response.Redirect("~/Logeo.aspx");
                    HttpContext.Current.Response.End();
                }
                return false;
            }

            return true;
        }

        

        public static void MessageBox(Page p, string Message)
        {
            p.RegisterStartupScript(Guid.NewGuid().ToString(), "<script>alert('" + Message.Replace(Environment.NewLine, "\\n") + "');</script>");
        }
    }

    public class CriteriosBusqueda
    {
        public string Texto { get; set; }
        public Guid? Genero { get; set; }
        public Guid? EstadoCivil { get; set; }
        public int? MesNacimiento { get; set; }
        public Guid? Ciudad { get; set; }
        public int? MesAniversarioEmpresa { get; set; }
        public Guid? Deporte { get; set; }
        public Guid? Hincha { get; set; }
        public Guid? GeneroCine { get; set; }
        public Guid? ComidaFavorita { get; set; }
        public Guid? GeneroMusical { get; set; }
        public Guid? GeneroLiteratura { get; set; }
        public Guid? ActividadesInteres { get; set; }
        public bool TieneHijos { get; set; }
    }
}