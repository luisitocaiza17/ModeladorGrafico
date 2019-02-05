<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="SDP_MasCercadeTi.Formulario" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Más cerca de ti...</title>
    <!--CSS-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/Site.css" rel="stylesheet" type="text/css" />
    
    <!--JS-->
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="js/Site.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <telerik:RadScriptManager ID="manager" runat="server"></telerik:RadScriptManager>
    <div id="fondo">
        <div id="logo">
            <div id="imglogo"></div>
        </div>
        <div id="titulo">
            <div id="imgCercaDeTi" ></div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-1">
                
            </div>
            <div class="col-md-10">
              <div class="personal">
                <div id="imgPersonal"></div>                
              </div>              
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="mySelect" placeholder="Nombres"/>--%>
                                      <asp:TextBox ID="txt_Nombres" placeholder="Nombres" runat="server" CssClass="cuadrado form-control input-lg"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="apellidos" placeholder="Apellidos"/>--%>
                                      <asp:TextBox id="txt_Apellidos" placeholder="Apellidos" runat="server" CssClass="cuadrado form-control input-lg"></asp:TextBox>
                                    </div>
                                </div>                               
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text1" placeholder="Cédula de identidad"/>--%>
                                      <asp:TextBox ID="txt_Identificacion" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Cédula de identidad" MaxLength="10"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text2" placeholder="Sexo"/>--%>
                                        <asp:DropDownList ID="ddl_Sexo" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <div style="background-color: #0099CC">
                                            <p class="literal"><span> Fecha de nacimiento </span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text3" placeholder="Día"/>  --%>
                                         <asp:DropDownList ID="ddl_PersonalesDia" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text4" placeholder="Mes"/>  --%>
                                         <asp:DropDownList ID="ddl_PersonalesMes" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-3">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text5" placeholder="Año"/>--%>
                                         <asp:DropDownList ID="ddl_PersonalesAnio" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-5">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text6" placeholder="Estado Civil"/>--%>
                                      <asp:DropDownList ID="ddl_EstadoCivil" runat="server" CssClass="cuadrado form-control input-lg selectazul"></asp:DropDownList>
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
                <div id="imgContacto"></div>                
              </div>
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">                              
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text7" placeholder="Número de teléfono"/>--%>
                                      <asp:TextBox ID="txt_Telefono" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Número de teléfono" MaxLength="9"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text8" placeholder="Número de celular"/>--%>
                                      <asp:TextBox ID="txt_Celular" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Número de Celular" MaxLength="10"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text9" placeholder="Correo electrónico laboral"/>--%>
                                      <asp:TextBox ID="txt_EmailLaboral" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Correo Electrónico Laboral"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text10" placeholder="Correo electrónico personal"/>--%>
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
                <div id="imgLaboral"></div>                
              </div>
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-10">  
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text11" placeholder="Empresa"/>--%>
                                      <asp:TextBox ID="txt_Empresa" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Empresa"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text12" placeholder="Dirección"/>--%>
                                      <asp:TextBox ID="txt_Direccion" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Dirección"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text13" placeholder="Ciudad"/>--%>
                                      <asp:DropDownList ID="ddl_Ciudad" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text14" placeholder="Cargo"/>--%>
                                        <asp:TextBox ID="txt_Cargo" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Cargo"></asp:TextBox>
                                    </div>
                                </div>                                 
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <div style="background-color: #FF6666;">
                                            <p class="literal"><span> Aniversario empresa </span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text15" placeholder="Día"/>  --%>
                                         <asp:DropDownList ID="ddl_AniversarioEmpresaDia" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text16" placeholder="Mes"/>  --%>
                                         <asp:DropDownList ID="ddl_AniversarioEmpresaMes" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-3">
                                         <%--<input type="text" class="form-control input-lg" id="Text17" placeholder="Año"/>  --%>
                                         <asp:DropDownList ID="ddl_AniversarioEmpresaAnio" runat="server" CssClass="cuadrado form-control input-lg selectrojo"></asp:DropDownList>
                                    </div>
                                </div>       
                        </div>
                        <div class="col-md-1">                
                        </div>
                    </div>
              </div>

              <!--Seccion de Estilo de Vida-->
              <div class="estiloVida">
                <div id="imgEstiloVida"></div>                
              </div>
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1">                
                        </div>
                        <div class="col-md-10">                              
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text18" placeholder="Deporte"/>--%>
                                      <asp:DropDownList ID="ddl_Deporte" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text19" placeholder="Actividad de interéz (hobbies)"/>--%>
                                      <asp:DropDownList ID="ddl_ActividadesInteres" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text20" placeholder="Hincha equipo fútbol"/>--%>
                                      <asp:DropDownList ID="ddl_Hincha" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text21" placeholder="Género musical"/>--%>
                                        <asp:DropDownList ID="ddl_GeneroMusical" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text35" placeholder="Género cine"/>--%>
                                      <asp:DropDownList ID="ddl_Cine" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<input type="text" class="cuadrado form-control input-lg" id="Text36" placeholder="Género literatura"/>--%>
                                        <asp:DropDownList ID="ddl_GeneroLiteratura" runat="server" CssClass="cuadrado form-control input-lg selectverde"></asp:DropDownList>
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                      <%--<input type="text" class="cuadrado form-control input-lg" id="Text22" placeholder="Comida Favorita"/>--%>
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
                <div id="imgFamilia"></div>                
              </div>              
              <div class="personalDetalle">
              <br />
                    <div class="row">
                        <div class="col-md-1"> 
                                       
                        </div>
                        <div class="col-md-10">                                                        
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <div style="background-color: #6699CC;color:#FFFFFF;">
                                            <p class="literal"><span> Fecha de nacimiento cónyuge</span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text27" placeholder="Día"/>  --%>
                                         <asp:DropDownList ID="ddl_ConyugeDia" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text28" placeholder="Mes"/>  --%>
                                         <asp:DropDownList ID="ddl_ConyugeMes" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-3">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text29" placeholder="Año"/>  --%>
                                         <asp:DropDownList ID="ddl_ConyugeAnio" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <div style="background-color: #6699CC;color:#FFFFFF;">
                                            <p class="literal"><span> Fecha aniversario</span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text23" placeholder="Día"/>  --%>
                                         <asp:DropDownList ID="ddl_AniversarioDia" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text24" placeholder="Mes"/>  --%>
                                         <asp:DropDownList ID="ddl_AniversarioMes" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>

                                    <div class="col-sm-3">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text25" placeholder="Año"/>  --%>
                                         <asp:DropDownList ID="ddl_AniversarioAnio" runat="server" CssClass="cuadrado form-control input-lg selectazul2"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <div style="background-color: #6699CC;color:#FFFFFF;">
                                            <p class="literal"><span>Número de hijos</span></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                         <%--<input type="text" class="cuadrado form-control input-lg" id="Text26" placeholder="--"/>--%>
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
                                    <div class="col-sm-2">                                        
                                    </div>
                                    <div class="col-sm-3">                                         
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
                                    <div class="col-sm-6">
                                     </div>
                                    <div class="col-sm-6">
                                        <%--<button type="submit" class="cuadrado familia form-control input-lg" id="Text34" ><p align="left"><b>ENVIAR INFORMACIÓN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><img  src="images/flecha_small.png"></p></button> --%>
                                        <br /><br />
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
            <div class="col-md-1">
                
            </div>         
        </div>
    </div>    
    <div id="pie">
    </div>
    </form>
</body>
</html>
