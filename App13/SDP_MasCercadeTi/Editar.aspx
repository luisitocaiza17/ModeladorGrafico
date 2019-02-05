<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="SDP_MasCercadeTi.Editar" MaintainScrollPositionOnPostback="true" %>



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
    <script src="js/Site.js" type="text/javascript"></script>
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
                        <div class="laboral">
                            <div id="save"></div>
                        </div>
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
                                        <h5 ><B>Nombres:</B></h5>
                                      <%--<input type="text" class="cuadrado form-control " id="nombres" placeholder="Nombres"  required="required"/>--%>
                                      <asp:TextBox ID="txt_Nombres" placeholder="Nombres" runat="server" CssClass="cuadrado form-control input-lg"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5><B>Apellidos:</B></h5>
                                      <%--<input type="text" class="cuadrado form-control " id="apellidos" placeholder="Apellidos"  required="required"/>--%>
                                      <asp:TextBox id="txt_Apellidos" placeholder="Apellidos" runat="server" CssClass="cuadrado form-control input-lg"></asp:TextBox>
                                    </div>
                                </div>                               
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 ><B>Cédula:</B></h5>
                                      <asp:TextBox ID="txt_Identificacion" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Cédula de identidad" MaxLength="10"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 ><B>Estado civil:</B></h5>
                                        <asp:DropDownList ID="ddl_EstadoCivil" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>                
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 ><B>Género</B></h5>
                                        <asp:DropDownList ID="ddl_Sexo" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                         <h5 ><B>Fecha de nacimiento</B></h5>  
                                         <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddl_PersonalesDia" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_PersonalesMes" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_PersonalesAnio" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                            </div>
                                         </div>
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
                                <h5 ><B>Número de teléfono</B></h5> 
                                <asp:TextBox ID="txt_Telefono" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Número de teléfono" MaxLength="9"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <h5 ><B>Número de celular</B></h5> 
                                <asp:TextBox ID="txt_Celular" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Número de Celular" MaxLength="10"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <h5 ><B>Correo electrónico laboral</B></h5> 
                                <asp:TextBox ID="txt_EmailLaboral" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Correo Electrónico Laboral"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <h5 ><B>Correo electrónico personal</B></h5> 
                                <asp:TextBox ID="txt_EmailPersonal" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Correo Electrónico Personal"></asp:TextBox>
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
                                        <h5 ><B>Empresa</B></h5> 
                                        <asp:TextBox ID="txt_Empresa" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Empresa"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 ><B>Dirección</B></h5>
                                        <asp:TextBox ID="txt_Direccion" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Dirección"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 ><B>Ciudad</B></h5>
                                        <asp:DropDownList ID="ddl_Ciudad" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 ><B>Cargo</B></h5>
                                        <asp:TextBox ID="txt_Cargo" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Cargo"></asp:TextBox>
                                    </div>
                                </div> 
                                <div class="form-group">                                
                                <div class="col-sm-6">
                                         <h5 ><B>Aniversario Empresa</B></h5>  
                                         <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddl_AniversarioEmpresaDia" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_AniversarioEmpresaMes" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_AniversarioEmpresaAnio" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                            </div>
                                         </div>
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
                                        <h5 ><B>Deporte</B></h5>
                                        <asp:DropDownList ID="ddl_Deporte" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 ><B>Actividad de interés (hobbies)</B></h5>
                                        <asp:DropDownList ID="ddl_ActividadesInteres" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                     </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 ><B>Hincha equipo fútbol</B></h5>
                                        <asp:DropDownList ID="ddl_Hincha" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 ><B>Género musical</B></h5>
                                        <asp:DropDownList ID="ddl_GeneroMusical" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 ><B>Género cine</B></h5>
                                        <asp:DropDownList ID="ddl_Cine" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <h5 ><B>Género literatura</B></h5>
                                        <asp:DropDownList ID="ddl_GeneroLiteratura" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <h5 ><B>Comida Favorita</B></h5>
                                        <asp:DropDownList ID="ddl_ComidaFavorita" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
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
                                         <h5 ><B>Fecha nacimiento cónyuge</B></h5>  
                                         <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddl_ConyugeDia" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_ConyugeMes" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_ConyugeAnio" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                            </div>
                                         </div>
                                </div>
                                <div class="col-sm-6">
                                         <h5 ><B>Fecha aniversario</B></h5>  
                                         <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddl_AniversarioDia" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_AniversarioMes" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                            </div>
                                            <div class="col-sm-4">
                                                 <asp:DropDownList ID="ddl_AniversarioAnio" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                            </div>
                                         </div>
                                </div>  
                            </div> 
                                                    
                                <div class="form-group">
                                    <div class="col-sm-6">                                        
                                        <h5 ><B>Número de hijos</B></h5> 
                                        <asp:DropDownList ID="ddl_NumeroHijos" runat="server" CssClass="cuadrado form-control input-lg selectazul2">
                                             <asp:ListItem Text="0" Value="0" Selected="True"></asp:ListItem>
                                             <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                             <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                             <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                             <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                             <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                             <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                             <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                             <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                             <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                             <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                         </asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                       
                                    </div>                                    
                                </div>
                                <div id="Hijo1" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo1" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo1" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo1" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo1" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo2" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo2" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo2" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo2" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo2" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo3" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo3" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo3" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo3" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo3" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo4" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo4" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo4" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo4" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo4" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo5" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo5" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo5" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo5" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo5" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo6" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo6" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo6" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo6" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo6" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo7" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo7" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo7" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo7" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo7" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo8" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo8" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo8" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo8" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo8" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo9" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo9" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo9" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo9" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo9" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div id="Hijo10" class="form-group">
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text30" placeholder="Masculino"/>--%>
                                        <asp:DropDownList ID="ddl_SexoHijo10" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text31" placeholder="Día"/>--%>
                                        <asp:DropDownList ID="ddl_DiaHijo10" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">  
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text32" placeholder="Mes"/>--%>
                                        <asp:DropDownList ID="ddl_MesHijo10" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-3"> 
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text33" placeholder="Año"/>--%>
                                        <asp:DropDownList ID="ddl_AnioHijo10" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-5">
                                     </div>
                                    <div class="col-sm-7">
                                        <asp:ImageButton id="btn_Enviar" runat="server" OnClientClick="return confirm('Está seguro de registrar la información registrada?');"
                                            CssClass="cuadrado familia form-control input-lg" Width="303" Height="55" 
                                            ImageUrl="~/images/spacer.gif" onclick="btn_Enviar_Click" /> 
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
    </div>    
    <div id="pie">
    </div>
    </form>
</body>
</html>

