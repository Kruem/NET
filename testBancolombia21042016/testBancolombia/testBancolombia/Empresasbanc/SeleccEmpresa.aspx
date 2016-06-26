<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="SeleccEmpresa.aspx.cs" Inherits="testBancolombia.Empresasbanc.SeleccEmpresa" %>

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
                                    <h2><small>Seleccionar Empresa</small></h2>
                                </div>
                                <div class="col-lg-12">
                                    <br />
                                    <p>
                                        Seleccione la empresa a la cual desea aplicarle la prueba.
                                        Recuerde que si no ha realizado la parametrización individual, ésta tomará los valores por defecto.
                                    </p>
                                    <small>
                                        <p>Si desea registrar un empresa, click <a href="EmpresaB.aspx">AQUI</a></p>
                                    </small>
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
                                            <br />
                                            <p class="text-justify">Seleccione.</p>
                                        </div>
                                        <div class="col-md-8 form-group">
                                            <label for="#" class="">Empresa</label>
                                            <div class="input-group">
                                                <asp:DropDownList ID="ddlEmpresa" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged"></asp:DropDownList>
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <hr />
                            </div>
                            <div class="row">
                                <div class="container-fluid">
                                    <div class="col-lg-12">
                                        <div class="span6 col-lg-offset-10">
                                            <a href="../inicioIndex.aspx" class="btn btn-info">
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

        </form>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</asp:Content>
