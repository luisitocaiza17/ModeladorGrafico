using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using ClosedXML.Excel;

namespace SDP_MasCercadeTi
{
    public partial class ResultadoConsulta : System.Web.UI.Page
    {
        protected List<SDP_MasCercadeTi> lst
        {
            get
            {
                return (List<SDP_MasCercadeTi>)ViewState["lst"];
            }
            set
            {
                ViewState["lst"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Me.RevisarSesion(true)) return;

            if (string.IsNullOrEmpty(Request["k"]))
            {
                Response.Redirect("~/Consulta.aspx");
                return;
            }

            string key = Request["k"];

            if (!IsPostBack)
            {
                if (Session[key] == null)
                {
                    Response.Redirect("~/Consulta.aspx");
                    return;
                }


                CriteriosBusqueda criterios = (CriteriosBusqueda)Session[key];

                Session[key] = null;

                // Procedimiento de búsqueda
                SDP_ActualizacionDatosEntities model = new SDP_ActualizacionDatosEntities();
                lst = model.SDP_MasCercadeTi_Consulta(
                    criterios.Texto,
                    criterios.Genero,
                    criterios.EstadoCivil,
                    criterios.MesNacimiento,
                    criterios.Ciudad,
                    criterios.MesAniversarioEmpresa,
                    criterios.Deporte,
                    criterios.Hincha,
                    criterios.GeneroCine,
                    criterios.ComidaFavorita,
                    criterios.GeneroMusical,
                    criterios.GeneroLiteratura,
                    criterios.ActividadesInteres,
                    criterios.TieneHijos).ToList();

                rpt_resultado.DataSource = lst;
                rpt_resultado.DataBind();
            }
        }

        protected string CalcularEdad(DateTime? Fecha)
        {
            if (!Fecha.HasValue) return "";
            TimeSpan ts = (DateTime.Today - Fecha.Value);
            return ((int)(ts.TotalDays / 365.2425)).ToString();
        }

        protected void btn_Descarga_Click(object sender, ImageClickEventArgs e)
        {
            DataTable dt = new DataTable("Datos");
            foreach (var c in typeof(SDP_MasCercadeTi).GetProperties())
            {
                dt.Columns.Add(c.Name, typeof(string));
            }

            foreach (var row in lst)
            {
                List<Object> vals = new List<object>();
                foreach (var c in typeof(SDP_MasCercadeTi).GetProperties())
                {
                    object val = typeof(SDP_MasCercadeTi).GetProperty(c.Name).GetValue(row, null);
                    if (val == null)
                        vals.Add("");
                    else
                        vals.Add(val.ToString());
                }

                dt.Rows.Add(vals.ToArray());
            }

            XLWorkbook wb = new XLWorkbook();
            wb.ColumnWidth = 100;
            wb.Worksheets.Add(dt);
            MemoryStream ms = new MemoryStream();
            wb.SaveAs(ms, false);

            byte[] file = ms.ToArray();

            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", String.Format("attachment;filename=\"{0}\"", "Datos.xlsx"));
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.BinaryWrite(file);
            Response.End();
        }

        //protected void rpt_resultado_ItemCommand(object source, RepeaterCommandEventArgs e)
        //{
        //    if (e.CommandName == "Detalle")
        //    {
        //        Guid RegistroID = new Guid(e.CommandArgument.ToString());

        //        Response.Redirect("ResumenEdicion.aspx?r=" + RegistroID.ToString());
        //    }
        //}
    }
}