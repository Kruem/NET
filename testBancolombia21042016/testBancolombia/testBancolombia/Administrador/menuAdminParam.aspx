<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="menuAdminParam.aspx.cs" Inherits="testBancolombia.Administrador.menuAdminParam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg  " id="page">

        <div class="intro-main">
            <div class="intro">

                <div class="intro-img col-lg-12" style="font-size: 60px; font-family: 'Bitter', serif; color: #000000;">
                    Administrador
                    <img src="../images/logope.png" class="img-circle" width="4%" />
                </div>
                <div class="col-md-offset-1" id="page">
                    <div class="dashboard">
                        <div class="row-fluid autod-pasos col-md-6 ">
                            <div class="span6" style="">
                                <a href="paramCategMayor.aspx" class="text-center" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <center>Parametrización De Categorías Mayores</center>
                                </a>
                            </div>
                            <br />

                            <div class="span6 ">
                                <a href="#" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       Parametrización Talento Humano&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                   </center>
                                </a>
                            </div>
                        </div>

                        <div class="row-fluid autod-pasos col-md-6">
                            <div class="span6 ">
                                <a href="#" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                    <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Parametrización Oportunidad
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </center>
                                </a>
                            </div>
                            <br />
                            <div class="span6 ">
                                <a href="#" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121; background-color: #;">
                                    <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Parametrización Recursos
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </center>
                                </a>
                            </div>
                            <br />
                            <div class="col-md-6 col-md-offset-5">
                                <div class="span6 text-center">
                                    <a href="../Administrador/adminMenu.aspx" class="btn btn-info" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                        <center>Regresar</center>
                                    </a>
                                </div>
                            </div>

                        </div>
                        <br />
                    </div>

                </div>
            </div>

        </div>

    </div>
    <!--fin imagen logo-->

    <!--inicio parametros-->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>

    <!--datepicker-->
    <%--<script>  
        //Esto sirve para fecha actual en adelante **************************
        $('.datepicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '-3d'
        })        
    </script>--%>

    <%--<script language="javascript" type="text/javascript">
        $('#<%= txtFecha_Inicio.ClientID %>').datepicker().on('changeDate', function (ev) {
            CalcularGrafico();
        });
    </script>--%>
</asp:Content>
