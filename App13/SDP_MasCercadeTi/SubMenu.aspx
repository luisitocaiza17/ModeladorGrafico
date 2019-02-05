<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubMenu.aspx.cs" Inherits="SDP_MasCercadeTi.SubMenu" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Más cerca de ti...</title>
    <!--CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/Site.css" rel="stylesheet" type="text/css" />
    <link href="css/Principal.css" rel="stylesheet" type="text/css" />
    <!--JS-->
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
   
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div id="fondo">
        <div id="logo">
            <div id="imglogo"></div>
        </div>
        <div id="titulo">
            <div id="imgCercaDeTi" ></div>
        </div>
        <br />
        <div id="saltoLinea"></div>
        
        <!--Cuerpo del formulario de ingreso-->
        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="personalDetalle">
                        <blockquote class="cambioColorCeleste">
                        <div class="saltoLineaM"></div>
                        <div class="row">                           
                            <div class="col-md-3">                               
                            </div>
                            <div class="col-md-7">
                            <div class="saltoLineaM"></div>                           
                               <%--<button type="submit"  class="colorRojo" id="Button5" ><div id="imgMConsulta"></div></button> --%>
                                <asp:ImageButton ID="btn_Consulta" runat="server" CssClass="colorRojo" 
                                    ImageUrl="~/images/spacer.gif" Width="360" Height="58" 
                                    onclick="btn_Consulta_Click" />
                            <div class="saltoLineaM"></div>                           
                               <%--<button type="submit"  class="colorNaranja" id="Button6" ><div id="imgMNuevo"></div></button>    --%>
                               <asp:ImageButton ID="btn_IngresarNuevo" runat="server" CssClass="colorNaranja" 
                                    ImageUrl="~/images/spacer.gif" Width="360" Height="58" 
                                    onclick="btn_IngresarNuevo_Click" />
                             <div class="saltoLineaM"></div>                           
                               <%--<button type="submit"  class="colorCeleste" id="Button7" ><div id="imgMCumpleanios"></div></button>    --%>
                               <asp:ImageButton ID="btn_Cumpleanios" runat="server" CssClass="colorCeleste" 
                                    ImageUrl="~/images/spacer.gif" Width="360" Height="58" 
                                    onclick="btn_Cumpleanios_Click" />
                            <div class="saltoLineaM"></div>                           
                               <%--<button type="submit"  class="colorVerdeOscuro" id="Button8" ><div id="imgMNavidad"></div></button>  --%>
                               <asp:ImageButton ID="btn_Navidad" runat="server" CssClass="colorVerdeOscuro" 
                                    ImageUrl="~/images/spacer.gif" Width="360" Height="58" 
                                    onclick="btn_Navidad_Click" />
                            <div class="saltoLineaM"></div>                           
                               <%--<button type="submit"  class="colorVerdeClaro" id="Button9" ><div id="imgMEvento"></div></button> --%>
                               <asp:ImageButton ID="btn_Eventos" runat="server" CssClass="colorVerdeClaro" 
                                    ImageUrl="~/images/spacer.gif" Width="360" Height="58" 
                                    onclick="btn_Eventos_Click" />
                            </div>
                            <div class="col-md-2">
                            </div>
                        </div> 
                        <div class="saltoLineaM"></div>
                        <div class="saltoLineaM"></div>
                    </blockquote>
                    </div>
                </div>
                <div class="col-md-2"></div>
        </div>

    <div id="pie">
    </div>
    </form>
</body>
</html>
