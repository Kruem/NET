<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="testBancolombia.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <title>Parque E</title> 
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/btn.css" />
    <link href="css/lightbox.css" rel="stylesheet" />
    <link id="Link1" runat="server" rel="shortcut icon" href="~/images/favicon.ico" type="image/x-icon" />
    <link id="Link2" runat="server" rel="icon" href="~/images/favicon.ico" type="image/ico" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'/>
</head>
<body>
    <!-- menu inicio-->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-4 ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle menu-button" data-toggle="collapse" data-target="#myNavbar">
                            <span class="glyphicon glyphicon-align-justify"></span>
                        </button>
                        <a class="navbar-brand logo" href="#">Parque E</a>
                    </div>
                </div>
                <div class="col-md-8">
                    <nav class="collapse navbar-collapse" id="myNavbar" role="navigation">
                        <ul class="nav navbar-nav navbar-right menu">
                            <li><a href="Index.aspx" class="page-scroll active">Home</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right menu">
                            <li><a href="login.aspx" class="page-scroll active">Login</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- menu fin-->
    <div class="backg">
        <!-- imagen logo inicio-->
        <div class="container-fluid ">
            <div class="intro-main">
                <div class="intro">
                    <div class="intro-img col-lg-12" style="font-size: 65px; font-family: 'Bitter', serif; color: #000000;">
                    Administración-Bancarización Empresas de Alto Impacto
                    <%--<img src="../images/logope.png" class="img-circle" width="5%" />--%>
                </div>
                </div>
                <div class="main " id="page-top">
                    <div class="row">
                        <div class="col-md-12 ">
                            <div class="col-md-4 col-md-offset-4 inner col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3">
                                <div class="text-box">
                                    <h2>
                                        <p><a href="login.aspx" class="link-button">Ingresar</a></p>
                                    </h2>
                                </div>
                                <a   title="contador de visitas">contador de visitas</a><br/>
        <script type="text/javascript" src="http://counter10.freecounter.ovh/private/countertab.js?c=c7d3a5e7cfcee948e874ef4771c68478"></script>
        
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <!-- imagen logo fin-->

            <!-- menu body inicio-->

            <!-- menu body fin-->
        </div>
        <!-- control body fin class="backg"-->
    </div>
    <!-- footer inicio-->
    <div class="container-fluid footer">
        <div class="row">
            <div class="col-md-12">
                <img src="images/footer.png" class="img-responsive" alt="" />
            </div>
        </div>
    </div>
    <!-- footer fin-->
    <!-- footer link inicio-->
    <div class="container-fluid footer panel-footer">
        <div class="row">
            <div class="col-md-12">
                <p><span><a href="http://www.parquedelemprendimiento.com/" target="_blank">www.parquedelemprendimiento.com</a></span></p>

            </div>
        </div>
    </div>
    <!-- footer link fin-->
    <!-- Modal inicio-->

    <%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form runat="server" id="loginForm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Login</h4>
                    </div>
                    <div class="modal-body container">
                        <div class="form-group text-box">
                            <label class="col-md-1">Usuario</label>
                            <div class="col-lg-4">
                                <asp:TextBox runat="server" name="usuario" ID="txtusuario" CssClass="form-control input-sm" placeholder="Usuario"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="form-group text-box">
                            <label class="col-md-1">Contraseña</label>
                            <div class="col-lg-4">
                                <asp:TextBox runat="server" name="password" ID="txtcontraseña" CssClass="form-control input-sm" placeholder="Contraseña"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <p><a href="formulario.html" class="btn btn-default">Registrar</a></p>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <asp:Button runat="server" ID="btnlogin" Text="Ingresar" CssClass="btn btn-primary" OnClick="btnlogin_Click" />

                        <asp:Label runat="server" ID="lblmensaje"></asp:Label>

                    </div>
                </div>
            </form>
        </div>
    </div>--%>
    <!-- Modal fin-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/lightbox.min.js"></script>
    <script type="text/javascript" src="js/validator.js"></script>

</body>
</html>

