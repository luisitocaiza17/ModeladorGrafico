<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResumenEdicion.aspx.cs" Inherits="SDP_MasCercadeTi.ResumenEdicion" %>

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
 <div id="fondoancho">
    <form id="form1" runat="server" class="form-horizontal">
   
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
            <div class="col-md-1">
             </div>
            <div class="col-md-2">                
                <div id="usuario"></div>
            </div>
            <div class="col-md-7">
                <div class="row">
                    <div class="col-md-10">
                        <div class="saltoLineaM"></div>
                        <div class="detalle">
                                <b><p class="txttitulo"><asp:Label id="lbl_NombresT" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_ApellidosT" runat="server"></asp:Label></p></b>
                          </div>
                    </div>                    
                    <div class="col-md-2">
                        <div class="saltoLineaM"></div>
                        
                            <%--<div id="guardar"></div>--%>
                            <asp:ImageButton ID="btn_Guardar" runat="server" 
                            ImageUrl="~/Images/spacer.gif" Width="62" Height="62" 
                            onclick="btn_Guardar_Click" />
                        
                    </div>
                </div>
              <div class="saltoLineaM"></div> 

              <div class="personal">
                <div id="imgPersonalM"></div>                
              </div>              
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Nombres:</b></h5>
                                        <h5 id="nombres" class="txtSangria"><asp:Label id="lbl_Nombres" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Apellidos:</b></h5>
                                        <h5 id="apellidos" class="txtSangria"><asp:Label id="lbl_Apellidos" runat="server"></asp:Label></h5>
                                    </div>
                                </div>                               
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Cédula de identidad:</b></h5>
                                        <h5 id="identificacion" class="txtSangria"><asp:Label id="lbl_Identificación" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Estado Civil:</b></h5>
                                        <h5 id="estadoCivil" class="txtSangria"><asp:Label id="lbl_EstadoCivil" runat="server"></asp:Label></h5>
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Género:</b></h5>
                                        <h5 id="masculino" class="txtSangria"><asp:Label id="lbl_Sexo" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Fecha de nacimiento:</b></h5>
                                        <h5 id="fechaNacimiento" class="txtSangria"><asp:Label id="lbl_FechaNacimiento" runat="server"></asp:Label></h5>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <h5 class="txtSangria"><b>Edad:</b></h5>
                                        <h5 id="edad" class="txtSangria"><asp:Label id="lbl_Edad" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-7">                                     
                                    </div>
                                </div>                                 
                        </div>
                        <div class="col-md-1">                
                        </div>
                    </div>
              </div>
              <!--Seccion de datos del contacto-->
              <div class="contacto">
                <div id="imgContactoM"></div>                
              </div>
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">                              
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Número de teléfono:</b></h5>
                                        <h5 id="telefono" class="txtSangria"><asp:Label id="lbl_Telefono" runat="server"></asp:Label></h5>
                                      </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Número de celular:</b></h5>
                                        <h5 id="celular" class="txtSangria"><asp:Label id="lbl_Celular" runat="server"></asp:Label></h5>                                      
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Correo electrónico laboral:</b></h5>
                                        <h5 id="correoEmpresa" class="txtSangria"><asp:Label id="lbl_EmailLaboral" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Correo electrónico personal:</b></h5>
                                        <h5 id="H1" class="txtSangria"><asp:Label id="lbl_EmailPersonal" runat="server"></asp:Label></h5>
                                    </div>
                                </div> 
                        </div>
                        <div class="col-md-1">                
                        </div>
                    </div>
              </div>
              <!--Seccion de Datos laborales-->
              <div class="laboral">
                <div id="imgLaboralM"></div>                
              </div>
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">  
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Empresa:</b></h5>
                                        <h5 id="empresa" class="txtSangria"><asp:Label id="lbl_Empresa" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Dirección:</b></h5>
                                        <h5 id="direccion" class="txtSangria"><asp:Label id="lbl_Direccion" runat="server"></asp:Label></h5>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Ciudad:</b></h5>
                                        <h5 id="ciudad" class="txtSangria"><asp:Label id="lbl_Ciudad" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Cargo:</b></h5>
                                        <h5 id="cargo" class="txtSangria"><asp:Label id="lbl_Cargo" runat="server"></asp:Label></h5>
                                    </div>
                                </div>                                 
                                <div class="form-group">
                                    <div class="col-sm-6">                                       
                                            <h5 class="txtSangria"><b>Aniversario empresa:</b></h5>
                                            <h5 id="aniversario" class="txtSangria"><asp:Label id="lbl_AniversarioEmpresa" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6">
                                            <h5 class="txtSangria"><b>Años empresa:</b></h5>
                                            <h5 id="edadEmpresa" class="txtSangria"><asp:Label id="lbl_AniosEmpresa" runat="server"></asp:Label></h5>
                                    </div>
                                </div>       
                        </div>
                        <div class="col-md-1">                
                        </div>
                    </div>
              </div>

              <!--Seccion de Estilo de Vida-->
              <div class="estiloVida">
                <div id="imgEstiloVidaM"></div>                
              </div>
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">                              
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Deporte:</b></h5>
                                        <h5 id="H3" class="txtSangria"><asp:Label id="lbl_Deporte" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"> <b>Actividad de interéz (hobbies):</b></h5>
                                        <h5 id="H2" class="txtSangria"><asp:Label id="lbl_ActividadInteres" runat="server"></asp:Label></h5>                                      
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Hincha equipo fútbol:</b></h5>
                                        <h5 id="H4" class="txtSangria"><asp:Label id="lbl_Hincha" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Género musical:</b></h5>
                                        <h5 id="H5" class="txtSangria"><asp:Label id="lbl_GeneroMusical" runat="server"></asp:Label></h5>                                                                                
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Género cine:</b></h5>
                                        <h5 id="H6" class="txtSangria"><asp:Label id="lbl_GeneroCine" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Género literatura:</b></h5>
                                        <h5 id="H7" class="txtSangria"><asp:Label id="lbl_GeneroLiteratura" runat="server"></asp:Label></h5>                                                                                
                                    </div>
                                </div>                                  
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Comida favorita:</b></h5>
                                        <h5 id="H8" class="txtSangria"><asp:Label id="lbl_ComidaFavorita" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">                                                                              
                                    </div>
                                </div>       
                        </div>
                        <div class="col-md-1">                
                        </div>
                    </div>
              </div>

              <!--Seccion familia-->

              <div class="familia">
                <div id="imgFamiliaM"></div>                
              </div>              
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">                                                        
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Fecha nacimiento cónyuge:</b></h5>
                                        <h5 id="H9" class="txtSangria"><asp:Label id="lbl_FechaConyuge" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Edad cónyuge:</b></h5>
                                        <h5 id="H10" class="txtSangria"><asp:Label id="lbl_EdadConyuge" runat="server"></asp:Label></h5>
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Fecha aniversario:</b></h5>
                                        <h5 id="H11"class="txtSangria"><asp:Label id="lbl_Aniversario" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Años aniversario:</b></h5>
                                        <h5 id="H12" class="txtSangria"><asp:Label id="lbl_AniosAniversario" runat="server"></asp:Label></h5>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>Número de hijos:</b></h5>
                                        <h5 id="H13" class="txtSangria"><asp:Label id="lbl_NumeroHijos" runat="server"></asp:Label></h5>
                                    </div>
                                    <div class="col-sm-6">                                        
                                    </div>
                                </div>
                                <div class="form-group" id="bloqueHijo1" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>1</b> <asp:Label id="lbl_SexoHijo1" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo1" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo1" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo2" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>2</b> <asp:Label id="lbl_SexoHijo2" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo2" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo2" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo3" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>3</b> <asp:Label id="lbl_SexoHijo3" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo3" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo3" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo4" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>4</b> <asp:Label id="lbl_SexoHijo4" runat="server"></asp:Label> <asp:Label id="lbl_FechaHijo4" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo4" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo5" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>5</b> <asp:Label id="lbl_SexoHijo5" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo5" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo5" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo6" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>6</b> <asp:Label id="lbl_SexoHijo6" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo6" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo6" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo7" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>7</b> <asp:Label id="lbl_SexoHijo7" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo7" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo7" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo8" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>8</b> <asp:Label id="lbl_SexoHijo8" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo8" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo8" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo9" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>9</b> <asp:Label id="lbl_SexoHijo9" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo9" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo9" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>
                                  <div class="form-group" id="bloqueHijo10" runat="server">
                                    <div class="col-sm-6">
                                        <h5 class="txtSangria"><b>10</b> <asp:Label id="lbl_SexoHijo10" runat="server"></asp:Label><span>&nbsp;</span><asp:Label id="lbl_FechaHijo10" runat="server"></asp:Label></h5>                                        
                                    </div>
                                    <div class="col-sm-6"> 
                                        <h5 class="txtSangria"><b>Edad:</b> <asp:Label id="lbl_EdadHijo10" runat="server"></asp:Label></h5>                                       
                                    </div>
                                </div>

                        </div>
                        <div class="col-md-1">                
                        </div>
                    </div>
              </div>
            </div> 
            <div class="col-md-2">
                
            </div>         
        </div>
        
    <div id="pie">
    </div>
    </form>
    </div>
</body>
</html>
