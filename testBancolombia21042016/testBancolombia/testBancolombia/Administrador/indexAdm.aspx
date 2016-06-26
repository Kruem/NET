<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="indexAdm.aspx.cs" Inherits="testBancolombia.Administrador.indexAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href="../css/lightbox.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg  " id="page">
        <div class="intro-main">
            <div class="intro">
                <div class="intro-img col-lg-12" style="font-size: 65px; font-family: 'Bitter', serif; color: #000000;">
                    Administración-Bancarización Empresas de Alto Impacto
                    <%--<img src="../images/logope.png" class="img-circle" width="5%" />--%>
                </div>

            </div>

            <div class="col-md-offset-0" id="page">
                <div class="dashboard">
                    <div class="row-fluid autod-pasos col-md-6 col-lg-offset-1">
                        <div class="span6 ">
                            <a href="../Empresasbanc/EmpresaB.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                <img src="../images/Administrar-empresas.png" />
                                Administrar Empresas
                            </a>
                        </div>
                        <br />
                        <div class="span6" style="">
                            <a href="paramCategMayor.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                <img src="../images/Aplicar-prueba.png" />
                                Parametrizar Pruebas
                            </a>
                        </div>
                        <br />
                    </div>

                    <div class="row-fluid col-md-6 col-md-pull-0">
                        <div class="span6 ">
                            <a href="#" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                <img src="../images/Administrar-usuarios.png" />
                                Administrar Usuarios
                            </a>
                        </div>
                        <br />
                        <div class="span6" style="">
                            <a href="../Consultas/Administrador/MenuConsultaAdm.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                <img src="../images/Consultas.png" />
                                Consultar
                            </a>
                        </div>
                        <br />

                    </div>
                    <div class="col-md-5 col-md-offset-3">
                        <div class="span6 text-center">
                            <a href="../Index.aspx" class="btn btn-info btn-lg" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                <center>Cerrar Sesión</center>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--fin imagen logo-->

    <!--inicio parametros-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/jquery.countTo.js"></script>
    <script type="text/javascript" src="../js/jquery.waypoints.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="../js/lightbox.min.js"></script>
</asp:Content>
