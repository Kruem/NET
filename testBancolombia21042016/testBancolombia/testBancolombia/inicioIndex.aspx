<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="inicioIndex.aspx.cs" Inherits="testBancolombia.inicioIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/btn.css" />
    <link href="css/lightbox.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg  " id="page">
        <div class="intro-main">
            <div class="intro">
                <div class="intro-img">
                    <img src="../images/logoPE2.png" class="img-responsive col-md-offset-2" />
                </div>

            </div>

            <div class="col-md-offset-0" id="page">
                <div class="dashboard">
                    <div class="row-fluid autod-pasos col-md-6 col-lg-offset-1">
                        <div class="span6" style="">
                            <a href="Administrador/AppPrePrueba.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                <img src="images/Aplicar-prueba.png" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Aplicar Pruebas
                            </a>
                        </div>
                        <br />
                        <br />
                    </div>

                    <div class="row-fluid col-md-6 col-md-pull-0">
                        <div class="span6 ">
                            <a href="Consultas/CModerador/MenuConsultaMod.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                <img src="images/Consultas.png" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Consultar Pruebas
                            </a>
                        </div>
                        <br />
                        <br />
                        
                    </div>
                    <div class="row-fluid col-md-6 col-md-pull-0 col-md-offset-3">  
                        <div class="span6 text-center">
                            <a href="Index.aspx" class="btn btn-info btn-lg" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
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
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/lightbox.min.js"></script>
</asp:Content>
