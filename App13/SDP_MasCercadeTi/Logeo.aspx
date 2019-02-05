<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logeo.aspx.cs" Inherits="SDP_MasCercadeTi.Logeo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
   
   <!--validacion de campos-->
   <script >
       $(document).ready(function () {          

//           $("#imgMSiguiente2").click(function () {               
//               var password = $("#contrasenia").val();
//               if (password == "")
//                   alert("La constraseña no puede estar vacía, por favor ingresela e intente de nuevo");
//           });
       });
   </script>     
    <!---->
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
                    <blockquote>
                        <div class="row">
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-2">
                                <div class="saltoLineaM"></div>
                                <div id="cliente"></div>
                            </div>
                            <div class="col-md-7">
                                <p id="tituloLogeo">Queremos Conocerte más,<BR>&nbsp;&nbsp;por favor ingresa tus datos</p>
                                <%--<button type="submit" class="colorVerde" id="Text34" ><div id="imgMSiguiente"></div></button>--%>
                                <asp:ImageButton ID="btn_registrar" runat="server" CssClass="colorVerde" 
                                    ImageUrl="~/images/spacer.gif" Width="340" Height="42" 
                                    onclick="btn_registrar_Click" />
                            </div>
                            <div class="col-md-2">
                            </div>
                        </div>                       
                        
                    </blockquote>
                    </div>
                    </div>
                <div class="col-md-2"></div>
            </div>
             <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                <div class="personalDetalle">
                    <blockquote class="cambioColorNaranja">
                        <div class="row">
                             <div class="col-md-1">
                            </div>
                            <div class="col-md-2">
                                <div id="espacioCandado"></div>
                                
                                <div id="candando"></div>
                            </div>
                            <div class="col-md-7">
                                <p id="tituloLogeo2">Ingresa tu clave</p>
                                <h5>&nbsp;&nbsp&nbsp;&nbsp;Uso exclusivo para Seguros del pichincha</h5>
                                <%--<input type="text" class="cuadrado form-control input-lg" id="Password1" placeholder="Usuario"/>
                                <input type="password" class="cuadrado form-control input-lg" id="contrasenia" placeholder="Contraseña"/>--%>
                                <asp:TextBox ID="txt_Usuario" runat="server" CssClass="cuadrado form-control input-lg" placeholder="Usuario"></asp:TextBox>
                                <asp:TextBox ID="txt_Password" runat="server" TextMode="Password" CssClass="cuadrado form-control input-lg" placeholder="Contraseña"></asp:TextBox>
                                <div class="saltoLineaM"></div>
                                <%--<button type="submit" class="colorRojo" id="Button1" ><div id="imgMSiguiente2"></div></button>--%>
                               <asp:ImageButton ID="btn_Ingresar" runat="server" CssClass="colorRojo" 
                                    ImageUrl="~/images/spacer.gif" Width="340" Height="42" 
                                    onclick="btn_Ingresar_Click" />
                            </div>
                            <div class="col-md-2">
                            </div>
                        </div> 
                    </blockquote>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div id="saltoLinea"></div>
    <div id="pie">
    </div>
    </form>
</body>
</html>
