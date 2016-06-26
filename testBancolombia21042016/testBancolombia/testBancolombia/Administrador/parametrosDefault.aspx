<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="parametrosDefault.aspx.cs" Inherits="testBancolombia.Administrador.parametrosDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" id="f1" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <br />
                        <div class="text-box">
                            <div class="box">
                                <div class="col-lg-12">
                                    <h2><small>Parametrización Por Defecto</small></h2>
                                </div>
                                <div class="col-lg-12">
                                    <br />
<%--                                    <p>Recuerde: Al no parametrizar individualmente las pruebas de una empresa, ella tomará estos valores por defecto.</p>
                                    <div class="col-lg-12">
                                        <hr />--%>
                                    </div>
                                    <center><p>IMPORTANTE</p></center>
                                    <p>La suma de los parámetros debe ser 100.</p>
                                </div>
                                <br />
                                <div class="col-lg-12">
                                    <hr />
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-4">
                                            <div class="col-lg-12">
                                                <p>Oportunidad</p>
                                                <div class="col-lg-6 col-lg-offset-3">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txtOpDef" TextMode="Number" min="1" max="100" required="" CssClass="form-control val1" runat="server"></asp:TextBox>
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="col-lg-12">
                                                <p>Talento Humano</p>
                                                <div class="col-lg-6 col-lg-offset-3">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txtTHDef" TextMode="Number" min="1" max="100" required="" CssClass="form-control val2" runat="server"></asp:TextBox>
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="col-lg-12">
                                                <p>Recursos</p>
                                                <div class="col-lg-6 col-lg-offset-3">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <asp:TextBox ID="txtRecDef" TextMode="Number" min="1" max="100" required="" CssClass="form-control val3" runat="server"></asp:TextBox>
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="col-lg-12">
                                    <hr />
                                </div>
                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="col-lg-12">
                                            <div class="col-md-4">
                                                <div class="box">
                                                    <div class="form-group">
                                                        <div class="col-lg-12 text-justify">
                                                            <asp:Label ID="lblmensaje" runat="server" CssClass="text-danger" Text=""></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-lg-offset-2">
                                                <asp:Button ID="btnsaveDefault" CssClass="btn btn-warning btn-lg" OnClientClick="return myfunction()" OnClick="btnsaveDefault_Click" runat="server" Text="Guardar" />
                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Button ID="btnlimpiar" CssClass="btn btn-default btn-lg" runat="server" Text="Limpiar" OnClick="btnlimpiar_Click" />
                                            </div>
                                            <div class="span6">
                                                <a href="paramCategMayor.aspx" class="btn btn-info">
                                                    <b>
                                                        <center>Regresar</center>
                                                    </b>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
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
    <script src="../js/jquery.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var op = 0;
        var th = 0;
        var rc = 0;
        function myfunction() {
            op = parseInt($('.val1').val());
            th = parseInt($('.val2').val());
            rc = parseInt($('.val3').val());
            suma = op + th + rc;

            if ((suma != 100) || (suma == 0) || (suma == null)) {
                alert("La suma de los valores de Oportunidad, Talento humano y Recursos debe ser igual a 100.");
                return false;
            }
            else {
                if (suma == 100) {
                    return true;
                }
            }
        }
    </script>

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
