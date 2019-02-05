<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultadoConsulta.aspx.cs" Inherits="SDP_MasCercadeTi.ResultadoConsulta" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Más cerca de ti...</title>
    <!--CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/Site.css" rel="stylesheet" type="text/css" />
    
    <!--JS-->
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
   
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div id="fondoancho">
        <div id="logo">
            <div id="imglogo"></div>
        </div>
        <div id="titulo">
            <div id="imgCercaDeTi"></div>
        </div>
        <br />
        <div class="saltoLineaM"></div>
        <!--Nav Bar-->
         <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-10">
              <a href="SubMenu.aspx"><img id="menu_home" src="images/spacer.gif" alt="Home" width="74" height="28"></a>
              <a href="Consulta.aspx"><img id="menu_consulta" src="images/spacer.gif" alt="Consulta" width="118" height="28"></a>
              <a href="Formulario.aspx"><img id="menu_nuevo" src="images/spacer.gif" alt="Ingresar Nuevo" width="170" height="28"></a>
              <a href="Proximamente.aspx"><img id="menu_cumpleanos" src="images/spacer.gif" alt="Cumpleaños" width="141" height="28"></a>
              <a href="Proximamente.aspx"><img id="menu_regalos" src="images/spacer.gif" alt="Regalos de Navidad" width="204" height="28"></a>
              <a href="Proximamente.aspx"><img id="menu_eventos" src="images/spacer.gif" alt="Eventos" width="106" height="28"></a>
            </div>
            <div class="col-md-1">
            </div>
        </div>
        <div class="saltoLineaM"></div>
        <div class="saltoLineaM"></div>
        <div class="saltoLineaM"></div>
        <div class="saltoLineaM"></div>
        <!--fin nav-->
        <div class="row">  
           <div class="col-md-2">
            </div> 
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-10">
                        <div class="saltoLineaM"></div>
                        <div class="laboral">
                            <div id="resultadoConsulta"></div>
                        </div>
                    </div>                    
                    <div class="col-md-2">
                        <div class="saltoLineaM"></div>
                            <asp:ImageButton ID="btn_Descarga" runat="server" 
                            ImageUrl="~/Images/spacer.gif" Width="70" Height="70" 
                            onclick="btn_Descarga_Click" /> 
                    </div>
                </div> 
                <div class="saltoLineaM"></div> 
                      
            </div>
            <div class="col-md-2">
            </div>
         </div>    
         <div class="row"> 
          <div class="col-md-2">
            </div> 
            <div class="col-md-8">

            <asp:Repeater ID="rpt_resultado" runat="server" >
                    <%--onitemcommand="rpt_resultado_ItemCommand">--%>
            <ItemTemplate>
            <div class="item">
                <div class="row">
                    <div class="col-md-1">
                    <img src="images/itemConsulta.png" />
                    </div>
                    <div class="col-md-10">
                        <asp:Label ID="lbl_Apellidos" runat="server" Font-Bold="true" Font-Size="X-Large" Text='<%# Eval("Apellidos") %>'></asp:Label><span>&nbsp;&nbsp;&nbsp;</span><asp:Label ID="lbl_Nombres" runat="server" Font-Size="X-Large" Text='<%# Eval("Nombres") %>'></asp:Label>
                    </div>
                    <div class="col-md-1">
                    <asp:HyperLink id="lnk_Detalle" runat="server" NavigateUrl='<%# "ResumenEdicion.aspx?r=" + (Eval("RegistroID")).ToString() %>'><asp:Image ID="img_lnk" runat="server" ImageUrl="Images/DetalleFlecha.png" Width="24" Height="24" BorderStyle="None" /></asp:HyperLink>
                    <%--<asp:ImageButton ID="btn_Detalle" runat="server" ImageUrl="Images/DetalleFlecha.png" Width="24" Height="24" CommandName="Detalle" CommandArgument='<%# Eval("RegistroID") %>' />--%>
                    </div>
                </div>
               
               <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                         <div class="row">
                            <div class="col-md-4">
                            <div class="itemsubtitle">Género</div>
                            <asp:Label ID="lbl_Sexo" runat="server" Text='<%# Eval("SexoNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Estado Civil</div>
                            <asp:Label ID="lbl_EstadoCivil" runat="server" Text='<%# Eval("EstadoCivilNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Fecha Nacimiento</div>
                            <asp:Label ID="lbl_FechaNacimiento" runat="server" Text='<%# ((DateTime)Eval("FechaNacimiento")).Month.ToString() %>'></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                <br />
                 <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                         <div class="row">
                            <div class="col-md-4">
                            <div class="itemsubtitle">Ciudad</div>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CiudadNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Aniversario Empresa</div>
                            <asp:Label ID="Label2" runat="server" Text='<%# ((DateTime)Eval("AniversarioEmpresa")).Month.ToString() %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Deporte</div>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("DeporteNombre") %>'></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                         <div class="row">
                            <div class="col-md-4">
                            <div class="itemsubtitle">Hincha Equipo Fútbol</div>
                            <asp:Label ID="lbl_Hincha" runat="server" Text='<%# Eval("HinchaNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Género Cine</div>
                            <asp:Label ID="lbl_GeneroCine" runat="server" Text='<%# Eval("GeneroCineNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Comida Favorita</div>
                            <asp:Label ID="lbl_ComidaFavorita" runat="server" Text='<%# Eval("ComidaFavoritaNombre") %>'></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                         <div class="row">
                            <div class="col-md-4">
                            <div class="itemsubtitle">Género Musical</div>
                            <asp:Label ID="lbl_GeneroMusical" runat="server" Text='<%# Eval("GeneroMusicalNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Género Literatura</div>
                            <asp:Label ID="lbl_GeneroLiteratura" runat="server" Text='<%# Eval("GeneroLiteraturaNombre") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Actividades Interés</div>
                            <asp:Label ID="lbl_ActividadesInteres" runat="server" Text='<%# Eval("ActividadesInteresNombre") %>'></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                         <div class="row">
                            <div class="col-md-4">
                            <div class="itemsubtitle">Hijos</div>
                            <asp:Label ID="lbl_NumeroHijos" runat="server" Text='<%# Eval("NumeroHijos") %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Edad Hijo 1</div>
                            <asp:Label ID="lbl_EdadHijo1" runat="server" Text='<%# CalcularEdad((DateTime?)Eval("FechaHijo1")) %>'></asp:Label>
                            </div>
                            <div class="col-md-4">
                            <div class="itemsubtitle">Edad Hijo 2</div>
                            <asp:Label ID="lbl_EdadHijo2" runat="server" Text='<%# CalcularEdad((DateTime?)Eval("FechaHijo2")) %>'></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
                <br />

            </div>

            </ItemTemplate>
            </asp:Repeater>




            </div> 
            <div class="col-md-2">
            </div>
         </div>
    </div>
    <div id="pie">
    </div>
    </form>
</body>
</html>
