<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="adminMenu.aspx.cs" Inherits="testBancolombia.Administrador.adminMenu" %>

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

                <div class="intro-img col-lg-12" style="font-size: 65px; font-family: 'Bitter', serif; color: #000000;">
                    Administración-Bancarización Empresas de Alto Impacto
                    <%--<img src="../images/logope.png" class="img-circle" width="5%" />--%>
                </div>
                <div class="col-md-offset-0" id="page">
                    <div class="dashboard">
                        <div class="row-fluid col-md-6 ">
                            <div class="span6" style="">
                                <a href="parametrosDefault.aspx" class="text-center" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                    &nbsp;Valores De Prueba Por Defecto&nbsp;&nbsp;
                                </a>
                            </div>
                            <br />


                        </div>

                        <div class="row-fluid col-md-6 col-md-pull-0">
                            <div class="span6 ">
                                <a href="../Administrador/menuAdminParam.aspx" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
                                    &nbsp; Parametrización de prueba por empresa&nbsp;
                                </a>
                            </div>
                            <br />

                            <div class="col-md-6 col-md-offset-6">
                               <div class="span6 text-center">
                                <a href="../Administrador/indexAdm.aspx" class="btn btn-info" style="font-family: 'Roboto Condensed', sans-serif; border-color: #F37121; color: #F37121;">
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
