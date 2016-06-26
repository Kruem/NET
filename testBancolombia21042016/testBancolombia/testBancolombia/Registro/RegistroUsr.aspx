<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="RegistroUsr.aspx.cs" Inherits="testBancolombia.RegistroUsr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container-fluid backg" id="page-top">

        <form runat="server" class="form-horizontal">

            <div class="row">
                <div class="col-md-12 ">
                    <div class="col-md-12 inner">

                        <div class="text-box">
                            <div class="col-lg-12">
                                <h2><small>Registro Usuario</small></h2>
                            </div>
                            <div class="col-lg-12">
                                <br />
                            </div>
                            <p>
                                Consulte el usuario que desea registrar para verificar si éste está registrado.
                            </p>
                            <div class="col-lg-12">
                                <hr />
                            </div>
                            <div class="col-md-5 col-md-offset-1 col-md-pull-1 ">
                                <div class="box">
                                    <div class="form-group">
                                        <label for="#" class="col-md-6 control-label">N° de Identificación</label>
                                        <div class="input-group col-lg-6">
                                            <asp:TextBox runat="server" type="number" ID="txtidentificacion" required="" CssClass="form-control input-sm" placeholder="Identificacion"></asp:TextBox>
                                            <span class="btn input-group-addon">
                                                <i class="glyphicon glyphicon-search"></i>
                                                <a id="btnconsultaEmp" runat="server" class="" onclick="btnconsultaEmp_Click"></a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Nombres</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" pattern="[a-zA-Z]*" ID="txtnombre" required="" CssClass="form-control input-sm" placeholder="Nombres"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Apellidos</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" pattern="[a-zA-Z]*" ID="txtapellido" required="" CssClass="form-control input-sm" placeholder="Apellidos"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Rol de Usuario</label>
                                        <div class="col-lg-6">

                                            <asp:DropDownList runat="server" ID="ddlrolusr" CssClass="form-control input-sm" placeholder="Seleccione ">
                                                <asp:ListItem Selected="True">Seleccione un Rol</asp:ListItem>
                                                <asp:ListItem>Administrador</asp:ListItem>
                                                <asp:ListItem>Moderador</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Cargo</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" pattern="[a-zA-Z]*" ID="txtcargo" required="" CssClass="form-control input-sm" placeholder="Cargo"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Institucion</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" pattern="[a-zA-Z]*" ID="txtinstitucion" CssClass="form-control input-sm" placeholder="Institucion" required=""></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--cambio de pag-->
                            <div class="col-md-5 ">
                                <div class="box">
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Correo Electronico</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" type="Email" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" ID="txtcorreo"
                                                required="" CssClass="form-control input-sm" placeholder="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Celular</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" ID="txtcelular" placeholder="Celular" CssClass="form-control input-sm" required=""></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5 control-label">Rol del Proyecto</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" ID="txtrolproyecto" CssClass="form-control input-sm" required="" placelholder="Rol del Proyecto"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5 control-label">Estado</label>
                                        <div class="col-lg-6">
                                            <asp:CheckBox runat="server" Text="Activo&nbsp" TextAlign="Left" ID="chkestado" CssClass="" />

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5 control-label">Usuario</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" ID="txtusuario" CssClass="form-control input-sm" placeholder="Usuario" required=""></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="#" class="col-md-5  control-label">Contraseña</label>
                                        <div class="col-lg-6">
                                            <asp:TextBox runat="server" ID="txtcontraseña" CssClass="form-control input-sm" placeholder="Contraseña" required=""></asp:TextBox>
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
                                        <div class="col-md-5 col-md-offset-1 col-md-pull-1 ">
                                            <div class="box">
                                                <div class="form-group">
                                                    <div class="col-lg-12 text-justify">
                                                        <asp:Label runat="server" ID="lblmensaje" CssClass="text-danger" Text="Hola HOLA asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd."></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-lg-4 col-lg-offset-1">
                                                <asp:Button ID="btnguardar" CssClass="btn btn-warning btn-lg" runat="server" Text="Guardar" />
                                            </div>
                                            <div class="span6">
                                                <a href="../Administrador/indexAdm.aspx" class="btn btn-info">
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
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/jquery.countTo.js"></script>
    <script type="text/javascript" src="../js/jquery.waypoints.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="../js/lightbox.min.js"></script>

</asp:Content>
