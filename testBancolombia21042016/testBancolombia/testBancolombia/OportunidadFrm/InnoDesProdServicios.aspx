<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="InnoDesProdServicios.aspx.cs" Inherits="testBancolombia.OportunidadFrm.InnoDesProdServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href="../css/lightbox.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="col-lg-12">
                <p class="" style="font-size: 350%; font-family: 'Bitter', serif; color: #000000;">
                   Desarrollo de producto o servicio
                <img src="../images/Desarrollo-de-productos-o-servicios.png" class="" width="9%" />
                </p>
            </div>

           <div class="inner col-md-12">

                <div class="row">

                    <br />

                    <div class="col-md-12">

                        <div class="text-danger text-uppercase col-md-9 col-md-offset-0">

                            <p class="">

                                Recuerde: Si la pregunta no aplica, no será tenida en cuenta para su promedio.

                            </p>

                        </div>




                        <div class="col-md-3">




                            <p class="text-uppercase">

                                Porcentaje:

                                <asp:Label ID="lblPorc" CssClass="text-info" runat="server" Text=""></asp:Label><label class="text-info">%</label>




                            </p>

                        </div>

                    </div>

                    </div>

                <hr />

                <div class="row">
                    <h4>
                        <p class="text-justify label-control">1. ¿ Participan las diversas áreas de la empresa, los clientes
                             y los proveedores en la labor de desarrollo desde el inicio del proyecto?</p>
                    </h4>
                       <p class="text-justify col-md-12">
                        
                       1. El desarrollo se inicia sin ninguna especificación inicial de las condiciones que tiene que
                            cumplir el nuevo producto y sin información suficiente sobre las necesidades del cliente.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       2. El desarrollo se lleva a cabo a partir de las necesidades del cliente,
                         con indicaciones parciales de las condiciones que tiene que cumplir el nuevo 
                        producto en cuanto a sus funciones, calidad, recursos y objetivos comerciales. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       3. El desarrollo se basa en una lista de necesidades y requisitos,
                         con indicaciones estructuradas sobre las condiciones que tiene que cumplir el producto:
                         funciones, calidad, precio, recursos  y tiempo de desarrollo. También se definen objetivos comerciales y
                         financieros. Estas indicaciones no se revisan significativamente durante el transcurso del proyecto.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       4. La labor de desarrollo se basa en un pliego de condiciones iniciales que tiene que cumplir el nuevo producto,
                         que incluye las especificaciones sobre sus funciones, calidad, precio, recursos y tiempo de desarrollo y unos
                         objetivos comerciales financieros detallados en el marketing briefing: ventas, cuota de mercado, rentabilidad 
                        esperada, etc. Estos objetivos se van actualizando.  
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp1" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="3" Text="4"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">2. ¿La planificación temporal  se realiza por fases con objetivos que se tienen 
                            que cumplir y costos previstos y con un seguimiento regular del proyecto?</p>
                    </h4>
                      <p class="text-justify col-md-12 ">
                       
                   1. Los proyectos recurren a las diversas áreas funcionales, que se comportan como compartimentos estancos.
                           Ocasionalmente algún proyecto queda retenido en un área funcional. Se admite que los proveedores 
                          serán los de siempre y no se les consulta durante el desarrollo. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                     2. Las diversas áreas funcionales consultan ocasionalmente a los expertos de otras áreas y a los proveedores
                         externos a través de reuniones informales. Puede existir un líder de proyecto, pero su autoridad es limitada;
                         predomina la estructura funcional. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                       3. Se trabaja de forma matricial en equipos multidisciplinares gestionados por un líder de proyecto fuerte.
                         Las áreas de ingeniería de producto e ingeniería de fabricación colaboran desde el principio del proyecto. 
                        Se diseña para facilitar el montaje y la fabricación. La ingeniería de fabricación  avanza de forma simultánea 
                        con la ingeniería de producto. Los proveedores externos son consultados de forma regular, pero su implicación 
                        directa es limitada.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Se asigna cada proyecto un líder con responsabilidad y autoridad total y un equipo de personas procedentes
                         de las diversas áreas funcionales (marketing, ventas, diseño/ingeniería, compras, producción y finanzas)
                         que trabajan a tiempo completo en el proyecto. Se implica a los proveedores desde el principio, se llevan a 
                        cabo actividades en paralelo y se hace participar a los clientes durante el desarrollo.
                    </p>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp2" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="3" Text="4"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">3. ¿Grado de incorporación del diseño o de nuevas
                             tecnologías en el desarrollo de un nuevo producto?</p>
                    </h4>
                      <p class="text-justify col-md-12 ">
                       
                      1. No existe ningún procedimiento para el desarrollo de productos.
                           No hay fases definidas ni estimaciones iniciales de costes ni de plazos. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       2. Existe un procedimiento simple y secuencial de desarrollo. Se hace una planificación temporal son muchos detalles, pero el control de plazos y costes
                         es posible. Se hacen reuniones de seguimiento improvisadas. Se hacen maquetas para evaluar los conceptos.  
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                      3. Existe una sistemática para el desarrollo de productos orientada a minimizar los costes. Se planifica el desarrollo de los proyectos 
                        de nuevos productos y se hace un seguimiento sistemático de su evolución (plazos y costes). Se hacen maquetas y prototipos funcionales 
                        para ensayar las prestaciones. No se suelen cancelar proyectos antes de su finalización.  
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Existe un procedimiento detallado de desarrollo de productos orientado a minimizar los costes de "time to market",
                         que permite una planificación por etapas bien definida, con un presupuesto y unos objetivos. Se ha establecido un
                         sistema de control de proyectos; al final de cada etapa se revisa el proyecto, se seleccionan las mejores alternativas
                         y se adapta la planificación o se cancela el proyecto si es necesario. Se realizan pruebas para verificar la durabilidad 
                        y fiabilidad de los nuevos productos.  
                    </p>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp3" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="3" Text="4"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">4. ¿Se hace un uso apreciable y continuado de las herramientas para el desarrollo de productos? 
                            (por ejemplo: cad-cam-cae, qfd, ingeniería de valor, prototipo virtual, mapa de prestación de servicios...)</p>
                    </h4>
                      <p class="text-justify col-md-12 ">
                      
                    1. El diseño industrial se considera un elemento accesorio al cual no hay que mediar una atención especial. De forma análoga,
                           difícilmente se realizan prospecciones de nuevas tecnologías para incorporarlas al producto.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                      2. El diseño se considera un factor de diferenciación estético que sólo se incorpora en las 
                        últimas etapas del proceso de desarrollo. Ocasionalmente, se considera también que la incorporación de
                         tecnología puede añadir valor al producto.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                     3. Se incorpora diseño de forma puntual en las diversas fases de desarrollo del producto y desde diversas perspectivas
                         mediante la participación de diseñadores internos o externos no especializados. Marketing y el departamento técnico
                         coordinan estas aportaciones. Normalmente se considera también la posibilidad de incorporar nuevas tecnologías 
                        al producto. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Se utiliza el diseño industrial y/o las nuevas tecnologías desde la fase de concepto para mejorar la funcionalidad 
                        del producto, simplificar los componentes, hacerlo fabricable o estéticamente mejor. El diseño se incorpora al 
                        producto, al embalaje, al punto de venta, a la comunicación gráfica, etc. de forma integrada. El diseño es un 
                        elemento calve de diferenciación de la empresa. 
                    </p>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp4" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="3" Text="4"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
               
                
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Observaciones
                        </p>
                    </h4>
                    
                    <p class="text-justify col-md-12  ">
                        <asp:TextBox runat="server" ID="txtObservaciones" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </p>
                </div>
                <hr />
                <div class="row">
                    <div class="container-fluid">
                        <div class="col-lg-12">

                            <div class="col-lg-2 col-lg-offset-6">
                                <asp:Button ID="btnguardar" CssClass="btn btn-warning btn-lg" runat="server" Text="Guardar" OnClick="btnguardar_Click" />
                            </div>
                            <div class="col-lg-2">
                                <input type="reset" class="btn btn-default btn-lg" value="Limpiar" id="btnlimpiar" />
                            </div>
                            <div class="span6">
                                <a href="../MOpInnovacion.aspx" class="btn btn-info">
                                    <b>
                                        <center>Regresar</center>
                                    </b>
                                </a>
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

        <!-- Validación de ddlp con jquery-->
    <script>
        $(document).ready(function () {
            $('#' + '<%= btnguardar.ClientID %>').click(function () {

                $id = $('#' + '<%= ddlp1.ClientID %>');
                $vlr = $('#' + '<%= ddlp1.ClientID %>').val();

                if (($vlr === null) || ($vlr === 'Seleccione')) {
                    alert('Debe elegir un valor en la pregunta 1.');
                    $id.focus();
                    return false;
                } else {
                    $id = $('#' + '<%= ddlp2.ClientID %>');
                    $vlr = $('#' + '<%= ddlp2.ClientID %>').val();

                    if (($vlr === null) || ($vlr === 'Seleccione')) {
                        alert('Debe elegir un valor en la pregunta 2.');
                        $id.focus();
                        return false;
                    } else {
                        $id = $('#' + '<%= ddlp3.ClientID %>');
                        $vlr = $('#' + '<%= ddlp3.ClientID %>').val();

                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                            alert('Debe elegir un valor en la pregunta 3.');
                            $id.focus();
                            return false;
                        } else {
                            $id = $('#' + '<%= ddlp4.ClientID %>');
                            $vlr = $('#' + '<%= ddlp4.ClientID %>').val();

                            if (($vlr === null) || ($vlr === 'Seleccione')) {
                                alert('Debe elegir un valor en la pregunta 4.');
                                $id.focus();
                                return false;
                            }
                        }
                    }
                }
            });
        });
    </script>
    <!-- Validación de ddlp con jquery-->

</asp:Content>
