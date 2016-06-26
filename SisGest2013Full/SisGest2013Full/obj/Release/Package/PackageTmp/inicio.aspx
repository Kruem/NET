<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/Inicio.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="SisGest2013Full.inicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="navUsr" runat="server">
    <img src="img/indexSG.jpg" class="img-responsive" width="100%" height="100%" alt="" />
    <!-- nav -->
    <nav class="navbar navbar-default" role="navigation navbar-static-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="inicio.aspx">Parque E</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">



                    <li>
                        <a class="sgc" href="../SGC/MapaProcesos.aspx">SGC</a>
                    </li>

                    <li>
                        <a class="cyc" href="#" id="comcont" runat="server">CYC</a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="th dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">TH<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="http://parqueemp-001-site2.smarterasp.net/" target="_blank">Talento Humano</a></li>
                            <li><a href="http://parqueemp-001-site3.smarterasp.net/" target="_blank">Anclas De Carrera</a></li>
                            <li><a href="http://parqueemp-001-site4.smarterasp.net/" target="_blank">DISC</a></li>



                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="sie dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">SIE<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="http://parqueemp-001-site1.smarterasp.net/" target="_blank">Crecimiento y Consolidación</a></li>


                        </ul>
                    </li>

                    <li>
                        <a class="usr" id="usr" href="~/Administracion/ADM.aspx" runat="server">USR</a>
                    </li>
                    <li><a class="" href="Index.aspx">
                        <img src="img/icon32.png" />
                        Cerrar Sesión</a></li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <br />

    <div class="container">
        <div class="row">

            <div class="intro-message text-center">

                <ul class="list-inline intro-social-buttons">

                    <li>
                        <a href="https://twitter.com/parque_e" target="_blank" class="btn btn-primary btn-lg">
                            <i class="fa fa-twitter fa-fw"></i>
                            <span class="network-name"></span>
                        </a>
                    </li>
                    <li>
                        <a href="https://es-la.facebook.com/PARQUEDELEMPRENDIMIENTO" target="_blank"
                            class="btn btn-primary btn-lg">
                            <i class="fa fa-facebook fa-fw"></i>
                            <span class="network-name"></span>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/profile/view?id=278616410&authType=name&authToken=i-Wd&trk=prof-sb-browse_map-name"
                            target="_blank" class="btn btn-primary btn-lg">
                            <i class="fa fa-linkedin fa-fw"></i>
                            <span class="network-name"></span>
                        </a>
                    </li>
                    <li>
                        <a href="https://sites.google.com/a/parquedelemprendimiento.com/intranet-prueba/home"
                            target="_blank" class="int btn btn-primary btn-lg">

                            <span class="network-name"></span>
                            <img src="img/icon32.png" width="60%" height="60%" alt="" /></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <!-- Intro header img -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center img-responsive">
                <img src="img/slide-2.png" class="col-lg-10 col-lg-offset-1 img-thumbnail img-responsive" alt="" />
            </div>
        </div>
    </div>
    <br />

    <div class="container">
        <div class="row">
            <div class="box" style="border-radius: 10px">
                <div class="col-lg-12">

                    <div>
                        <img class="img-responsive  img-left" src="img/page1-img2.png" alt="" />
                        <hr class="visible-xs" />
                        <p class="text-justify">
                            Los sistemas integrados de gestión se definen como un conjuntos de actividades que,
                            interrelacionadas y a través de acciones específicas, permiten definir e implementar
                            los lineamientos generales y de operación de las entidades públicas. Tienen como
                            finalidad ver al Parque E como un solo sistema, representado en el modelo de procesos,
                            asegurando que en cada proceso se dé respuesta eficaz a los requisitos y necesidades
                            del usuario interno y/o externo.
                        </p>
                        <p class="text-justify">
                            También podemos definirlo como el conjunto de actividades mutuamente relacionadas
                            que tienen por objetivo orientar y fortalecer la gestión, dar dirección, articular
                            y alinear conjuntamente los requisitos de subsistemasque lo componen (gestión de
                            la calidad, gestión del conocimiento, gestión documental, gestión de la innovación,
                            gestión de la información). El sistema integrado de gestión, como su nombre lo indica
                            integra de manera armónica y complementaria nombrar los sistemas integrados de gestión
                            de Parque E.
                        </p>
                        <p class="text-justify">
                            El sistema integrado de gestión-SIG sirve para lograr la satisfacción de las necesidades,
                            expectativas y requisitos de los clientes, partes interesadas, usuarios, comunidad,
                            beneficiarios o destinatarios del servicio.
                        </p>
                        <br />
                        <div class="col-md-8">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.0037418074767!2d-75.56860900000001!3d6.263236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4428e3f7759cc5%3A0x4122f1b5518bbdd9!2sParque+del+Emprendimiento!5e0!3m2!1ses!2s!4v1429802738997"
                                width="80%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                        </div>

                        <div class="col-md-4">

                            <div class="alert alert-danger text-center" role="alert">
                                Correo:
                                <br />
                                <strong><a class="alert-link" href="mailto:info@parquedelemprendimiento.com">info@parquedelemprendimiento.com</a></strong>

                            </div>

                            <div class="alert alert-danger text-center" role="alert">
                                Pagina Web:
                                <br />
                                <strong><a class="alert-link  " href="http://www.parquedelemprendimiento.com/">www.parquedelemprendimiento.com</a></strong>
                            </div>


                            <div class="alert alert-danger text-center" role="alert">
                                Sugerencias:
                                <br />
                                <a href="../SGC/Buzon.aspx" class=" text-uppercase alert-link  ">Ir al Formato</a>

                            </div>
                            <div class="alert alert-danger text-center" role="alert">
                                Telefono:
                                <br />
                                <strong class=" text-uppercase alert-link">PBX: (57-4) 2192000</strong>
                                <br />
                                Dirección: 
                                <br />
                                <strong class=" text-uppercase alert-link">Calle 65 # 55-46
                                    <br />
                                    Medellín, Colombia</strong>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- jQuery -->

    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->

    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->


    <script>
        $(document).ready(function () {

            $('.sgc').tooltip({ title: "Sistema Gestion de Calidad", delay: { show: 50, hide: 50 }, placement: "bottom" });
            $('.sie').tooltip({ title: "Sistema Gestion de Calidad", delay: { show: 50, hide: 50 }, placement: "bottom" });
            $('.th').tooltip({ title: "Talento Humano", delay: { show: 50, hide: 50 }, placement: "bottom" });
            $('.cyc').tooltip({ title: "Compras y Contratacion", delay: { show: 50, hide: 50 }, placement: "bottom" });
            $('.aae').tooltip({ title: "Apoyo y Acompañiamiento al Emprendedor", delay: { show: 50, hide: 50 }, placement: "bottom" });
            $('.usr').tooltip({ title: "Modificar Usuario", delay: { show: 50, hide: 50 }, placement: "bottom" });
            $('.int').tooltip({ title: "Intranet", delay: { show: 50, hide: 50 }, placement: "top" });
        });
    </script>


</asp:Content>
