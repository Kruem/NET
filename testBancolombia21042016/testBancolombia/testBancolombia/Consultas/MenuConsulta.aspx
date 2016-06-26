<%@ Page Title="" Language="C#" MasterPageFile="~/master/Consulta.Master" AutoEventWireup="true" CodeBehind="MenuConsulta.aspx.cs" Inherits="testBancolombia.Consultas.MenuConsulta" %>

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
    <form runat="server">
        <div class="container-fluid backg  " id="page">
            <div class="intro-main">
                <div class="intro">
                    <div class="intro-img col-lg-12 text-center" style="font-size: 600%; font-family: 'Bitter', serif; color: #000000;">
                        Consultar
                   
                    <img src="../images/logope.png" class="img-circle" width="10%" />
                    </div>
                    <div class="col-md-offset-3" id="page">
                        <a href="CModerador/RadarOpMod.aspx">content</a>
                        <div class="dashboard">
                            <div class="col-md-12">
                                <div class="col-md-8 col-md-pull-1">
                                    <div class="span6" style="">
                                        <asp:Button ID="btnOptPrueba" CssClass="btn btn-lg col-md-12" Style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; border-width: 4px; color: #F37121; border-radius: 25px; background-image: url(../images/Oportunidad_boton.png); background-size: 40%; background-repeat: no-repeat; background-color: transparent;" runat="server" Text="Oportunidad" OnClick="btnOptPrueba_Click" />
                                    </div>
                                    <br />
                                    <div class="span6 ">
                                        <asp:Button ID="btnTHPrueba" CssClass="btn btn-lg col-md-12" Style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; border-width: 4px; color: #F37121; border-radius: 25px; background-image: url(../images/TH_boton.png); background-size: 40%; background-repeat: no-repeat; background-color: transparent;" runat="server" Text="Talento Humano" OnClick="btnTHPrueba_Click" />
                                    </div>
                                    <br />

                                    <div class="span6 ">
                                        <asp:Button ID="btnRecPrueba" CssClass="btn btn-lg col-md-12" Style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; border-width: 4px; color: #F37121; border-radius: 25px; background-image: url(../images/Recursos_boton.png); background-size: 40%; background-repeat: no-repeat; background-color: transparent;" runat="server" Text="Recursos" OnClick="btnRecPrueba_Click" />
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--fin imagen logo-->

        <!--inicio parametros-->
    </form>
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
