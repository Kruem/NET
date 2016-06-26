<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="menuTimmOp.aspx.cs" Inherits="testBancolombia.Administrador.menuTimmOp" %>

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
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <br />
                        <div class="text-box">
                            <div class="box">
                                <div class="col-lg-12 text-right">
                                    <asp:Label ID="lblPorcOp" runat="server" CssClass="h3 text-danger" Text="30%"></asp:Label>
                                </div>
                                <br />
                                <div class="col-lg-12">
                                    <h2><small>Parametrización Oportunidad</small></h2>
                                </div>
                                <div class="col-lg-12">
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
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

