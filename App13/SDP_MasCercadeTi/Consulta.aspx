<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="SDP_MasCercadeTi.Consulta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Más cerca de ti...</title>
    <!--CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/Site.css" rel="stylesheet" type="text/css" />
    
    <!--JS-->
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
    
    <script >
        $(document).ready(function () {

//            $("#buscarBtn").click(function () {
//                var genero = $("#genero").val();
//                var estado = $("#estado").val();
//                var fecha = $("#fecha").val();
//                var ciudad = $("#ciudad").val();
//                var aniversario = $("#aniversario").val();
//                var deporte = $("#deporte").val();
//                var equipo = $("#equipo").val();
//                var cine = $("#cine").val();
//                var comida = $("#comida").val();
//                var musica = $("#musica").val();
//                var literatura = $("#literatura").val();
//                var interes = $("#interes").val();
//                var buscar = $("#busquedaGeneral").val();

//                if (genero == null && estado == null && fecha == null && ciudad == null && aniversario == null && deporte == null && equipo == null
//                    && cine == null && comida == null && musica == null && literatura == null && interes == null && buscar == "")
//                    alert("No existe ningún criterio de busqueda, Por favor Seleccione al menos uno para continuar");

//            })

        });
    </script>
       
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div id="fondoancho">
        <div id="logo">
            <div id="imglogo" ></div>            
        </div>
         <div id="titulo">
            <div id="imgCercaDeTi" ></div>
         </div>
         <br />
         <div class="saltoLineaM" >
         </div>
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
         <!--Cuerpo html-->
         <div class="row">        
            <div class="col-md-1">                
            </div> 
            <div class="col-md-10">
               <!--Seccion Consulta General-->
                <div class="col-md-6">
                    <!--Imagen de consulta-->                   
                    <div class="laboral">
                        <div id="consulta"></div>
                    </div>
                </div>
                 <div class="col-md-6">
                    <div class="input-group">
                      <span class="input-group-btn">
                        <div id="lupa"></div>
                      </span>
                      <%--<input id="busquedaGeneral" type="text" class="sinBorde cuadrado form-control input-lg" placeholder="buscar"/>--%>
                      <asp:TextBox ID="txt_Criterio" runat="server" CssClass="sinBorde cuadrado form-control input-lg" placeholder="buscar"></asp:TextBox>
                    </div>
                </div>
                
            </div>
            <div class="col-md-1">                
            </div>
         </div>
         <!--fin seccion consulta-->
         <div class="saltoLineaM" >
         </div>
         
         <!--Inicio de formulario Interno-->
         <div class="row">
            <div class="col-md-3">                
            </div>
            <div class="col-md-7">
                <h4>BUSQUEDA AVANZADA</h4>                
                <div class="personalDetalle">
                  
                </div>
            </div>
            <div class="col-md-2">  
            </div>
        </div>        
        <div class="row">
            <div class="col-md-3">                
            </div>
            <div class="col-md-7">
                <div class="personal">
                    <div id="imgPersonalM"></div>                
                </div>
                <div class="personalDetalle">
                    
                     <div class="form-group">
                        <div class="col-sm-4">
                            <h5><b>Género:</b></h5>   
                            <asp:DropDownList ID="ddl_Sexo" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>Estado Civil:</b></h5>
                            <asp:DropDownList ID="ddl_EstadoCivil" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>Fecha de nacimiento:</b></h5>
                            <asp:DropDownList ID="ddl_PersonalesMes" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                        </div>                       
                    </div>                    
                 
                </div>
            </div>
            <div class="col-md-2">  
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">                
            </div>
            <div class="col-md-7">
                <div class="laboral">
                    <div id="imgLaboralM"></div>                
                </div>
                <div class="personalDetalle">
                     
                     <div class="form-group">
                        <div class="col-sm-4">
                            <h5><b>Ciudad:</b></h5>   
                            <asp:DropDownList ID="ddl_Ciudad" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>Aniversario empresa:</b></h5>
                            <asp:DropDownList ID="ddl_AniversarioEmpresaMes" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">                                                      
                        </div>                       
                    </div>                    
                
                </div>
            </div>
            <div class="col-md-2">  
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">                
            </div>
            <div class="col-md-7">
                <div class="estiloVida">
                    <div id="imgEstiloVidaM"></div>                
                </div>
                <div class="personalDetalle">
                    
                     <div class="form-group">
                        <div class="col-sm-4">
                            <h5><b>Deportes:</b></h5>   
                            <asp:DropDownList ID="ddl_Deporte" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>hincha equipo fútbol:</b></h5>
                            <asp:DropDownList ID="ddl_Hincha" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>Género cine:</b></h5>
                            <asp:DropDownList ID="ddl_Cine" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>                       
                    </div>
                    <div class="form-group">
                        <div class="col-sm-4">
                            <h5><b>Comida favorita:</b></h5>   
                            <asp:DropDownList ID="ddl_ComidaFavorita" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>Género musical:</b></h5>
                            <asp:DropDownList ID="ddl_GeneroMusical" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <h5><b>Género literatura:</b></h5>
                            <asp:DropDownList ID="ddl_GeneroLiteratura" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>                       
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <h5><b>Actividad de interés (hobibies)</b></h5>                                                        
                        </div>
                        <div class="col-sm-6">                                                 
                        </div>                                              
                    </div>  
                    <div class="form-group">
                        <div class="col-sm-4">
                             <asp:DropDownList ID="ddl_ActividadesInteres" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                        </div>
                        <div class="col-sm-4">                                                 
                        </div>
                        <div class="col-sm-4">                                                                                 
                        </div> 
                    </div>                  
                 
                </div>
            </div>
            <div class="col-md-2">  
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">                
            </div>
            <div class="col-md-7">
                <div class="familia">
                    <div id="imgFamiliaM"></div>                
                </div>
                <div class="saltoLineaM"></div>
                <div class="personalDetalle">
                     
                     <div class="form-group">
                        <div class="col-sm-2">
                            <h5><b>Hijos:</b></h5> 
                        </div>
                        <div class="col-sm-6">
                           <asp:CheckBox ID="chk_TieneHijos" runat="server" />
                        </div>
                        <div class="col-sm-4">                                                      
                        </div>                       
                    </div>
                    <div class="form-group">
                        <div class="col-sm-2">
                           
                        </div>
                        <div class="col-sm-5">
                          
                        </div>
                        <div class="col-sm-5"> 
                            <%--<button type="submit" class="cuadrado familia form-control input-lg" id="buscarBtn" ><p align="left"><b>BUSCAR</b><img  src="images/flecha_small.png" align="right"></p></button>--%>
                            <asp:ImageButton ID="btn_Buscar" runat="server" CssClass="cuadrado familia form-control input-lg" 
                                    ImageUrl="~/images/spacer.gif" Width="190" Height="45"
                                    onclick="btn_Buscar_Click" />
                        </div>                       
                    </div>                    
                
                </div>
            </div>
            <div class="col-md-2">  
            </div>
        </div>

        <!--fin de formulario interno-->
    </div>
    <div id="pie">
    </div>
    </form>
</body>
</html>