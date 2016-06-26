<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="MenuRecursos.aspx.cs" Inherits="testBancolombia.MenuRecursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/btn.css" />
    <link href="css/lightbox.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'/>

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg  " id="page">

        <div class="intro-main">
            <div class="intro ">
                <div class="intro-img col-lg-12" style="font-size: 100px; font-family: 'Bitter', serif; color: #000000;">
                   Recursos
                    <img src="images/Recursos.png" class="img-circle" width="10%" />
                </div>
                <div class="col-md-offset-1" id="page">

                    <div class="dashboard">
                        <div class="row-fluid autod-pasos col-md-6 ">
                            <div class="span6" style="">
                                <a href="Recursos/AntFinancieros.aspx" style="text-align:center; font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                    <img src="images/antecedentesfinanc.png" />
                                   Antecedentes de financiación
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="Recursos/InfoEcoFinanActual.aspx" data-toggle="tooltip" title="Información económica y financiera actual" style="text-align:center; font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Información-económica-y-financiera-actual.png" />
                                   Económica y Financiera

                                </a>
                            </div>
                            <br />
                             <div class="span6 ">
                                <a href="Recursos/ProyecFinanciera.aspx" style="text-align:center; font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img  src="images/Proyección-financiera.png" />
                                    Proyección financiera
 
                                </a>
                            </div>
                        </div>
                        <br />
                        <div class="row-fluid autod-pasos col-md-6">
                            <div class="span6 ">
                                <a href="Recursos/ProyecEconomica.aspx" style="text-align:center; font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Proyección-económica.png" />
                                    Proyección económica

                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="Recursos/FuenFinanFutura.aspx" data-toggle="tooltip" title="Fuentes de financiación futura" style="text-align:center; font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/Fuente-de-financiación-futura.png" />
                                   Fuentes de Financiación
 
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="Recursos/AliClaves.aspx" style="text-align:center; font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <img src="images/aliadosclave.png" />
                                    Aliados claves
 

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
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
</script>
</asp:Content>
