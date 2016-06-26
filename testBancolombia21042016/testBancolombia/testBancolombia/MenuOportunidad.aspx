<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="MenuOportunidad.aspx.cs" Inherits="testBancolombia.MenuOportunidad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/btn.css" />
    <link href="css/lightbox.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />

    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg  " id="page">
        <div class="intro-main">
            <div class="intro">
                <div class="intro-img col-lg-12" style="font-size: 100px; font-family: 'Bitter', serif; color: #000000;">
                    Oportunidad
                    <img src="images/Oportunidad.png" class="img-circle" width="10%" />
                </div>
                <div class="col-md-offset-1" id="page">

                    <div class="dashboard">
                        <div class="row-fluid autod-pasos col-md-6 ">
                            <div class="span6" style="">
                                <a href="OportunidadFrm/PrDeValor.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Propuesta-de-valor.png" />
                                    Propuesta De Valor
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="OportunidadFrm/PrTecnologia.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Tecnología.png" />
                                    Tecnología
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="MOpInnovacion.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Innovación.png" />
                                    Innovación
                                </a>
                            </div>
                            <br />
                        </div>

                        <div class="row-fluid autod-pasos col-md-6">
                            <div class="span6 ">
                                <a href="OportunidadFrm/PropIntelectual.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Propiedad-intelectual.png" />
                                    Propiedad Intelectual
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="OportunidadFrm/Escalabilidad.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Escalabilidad.png" />
                                    Escalabilidad
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="MOMercado.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Mercado.png" />
                                    Mercado
                                </a>
                            </div>
                            <br />
                        </div>

                        <div class="row-fluid col-md-7 col-md-offset-2">
                            <div class="span6 ">
                                <a href="Menu.aspx" class="btn btn-info btn-lg" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                    <center>Regresar</center>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
