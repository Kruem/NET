<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="InnoRedeProceProductivos.aspx.cs" Inherits="testBancolombia.OportunidadFrm.InnoRedeProceProductivos" %>
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
                <p class="" style="font-size: 320%; font-family: 'Bitter', serif; color: #000000;">
                  Redefinición de los procesos productivos
                <img src="../images/Redefinición-de-procesos-productivos.png" class="" width="8%" />
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
                        <p class="text-justify label-control">1. ¿ Nivel de seguimiento de las tecnologías de fabricación y de
                             los modelos de organización y de gestión de los procesos productivos?</p>
                    </h4>
                     <p class="text-justify col-md-12">
                        
                      1. No hay mecanismos de seguimiento de las tecnologías de fabricación 
                         ni modelos de organización utilizadas por las empresas del sector.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                      2. Se leen revistas especializadas, se asiste a cursos, congresos y ferias, etc., para seguir
                         la evolución de las tecnologías de la producción y de los modelos de organización y gestión. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                       
                      3. La lectura de revistas especializadas, la asistencia a cursos, congresos, ferias, etc. 
                        se ha sistematizado. Se hacen reuniones internas periódicamente de equipos multidisciplinares 
                        para revisar todo lo que se ha observado y documentado para explorar alternativas tecnológicas 
                        a los procesos productivos implantados, así como a los actuales modelos de organización y gestión.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                       
                     4. Existen mecanismos de benchmarking que permiten conocer las tecnologías de producción y los modelos
                         organizativos de las empresas líderes en el panorama mundial. Se hacen reuniones periódicas para
                         analizar las tecnologías alternativas y los nuevos modelos organizativos con la finalidad de redefinir
                         los procesos productivos implantados. Se ensayan nuevos procesos para ganar experiencia.
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
                        <p class="text-justify label-control">2. ¿Nivel de planificación a la asignación de recursos 
                            específicos para el desarrollo de nuevos procesos de producción?</p>
                    </h4>
                      <p class="text-justify col-md-12 ">
                        
                  1. No existe planificación de recursos financieros reservados específicamente para el desarrollo de nuevos procesos de
                           producción.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                    2. No existe ninguna estrategia de desarrollo de nuevos procesos de producción. Aun así, cuando es necesario 
                        se compran las tecnologías adecuadas, dando lugar a innovaciones  
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       3. El director de producción tiene la misión de mejorar los procesos productivos. Existe un fondo para las
                         inversiones no previstas que se puede utilizar ocasionalmente para poner en marcha proyectos concretos
                         en esta línea. Algunos de ellos suponen innovaciones radicales. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                       4. Existe un responsable dentro de la empresa con un presupuesto anual y un equipo de colaboradores internos y
                         externos que tiene la misión de redefinir y mejorar los procesos productivos en consonancia con la estrategia
                         de la empresa, de acuerdo con unos objetivos concretos de reducción de costes, mejora de la calidad de los
                         productos y mayor flexibilidad. 
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
                        <p class="text-justify label-control">3. ¿Existe una estrategia de subcontratación?</p>
                    </h4>
                     <p class="text-justify col-md-12 ">
                        
                      1. La empresa no tiene claro qué subcontratar y qué no. Se subcontrata por falta de capacidad.
                          No existen relaciones estables con los proveedores.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                       2. La subcontratación se hace para ahorra costes y transferir responsabilidades, pero no se
                         tiene en cuenta si se trasfieren competencias claves. No se valora el potencial innovador del proveedor.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                     3. La subcontratación se hace de forma que la empresa conserve sus competencias clave. 
                        Los proveedores se escogen según un procedimiento formal de evaluación que contempla  
                        como criterio la capacidad innovadora del proveedor. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Existe una estrategia para la subcontratación o integración de competencias considerando los 
                        costes derivados de una opción u otra. Las competencias clave no se exteriorizan. Los proveedores
                         se seleccionan en función de su competencia, flexibilidad ante los cambios y capacidad innovadora. 
                        Se mantienen relaciones estables y de confianza con los proveedores y la empresa promueve activamente su desarrollo.  
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
                        <p class="text-justify label-control">4. ¿La empresa considera la posibilidad de innovar integrando actividades logísticas?</p>
                    </h4>
                     <p class="text-justify col-md-12 ">
                        
                    1. Las actividades relacionadas con la obtención, el traslado y el almacenamiento de materiales y productos dependen de cada área
                          funcional y no están coordinadas entre ellas. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                     2. Las actividades logísticas de aprovisionamiento, producción y distribución incluyen tanto los flujos de materiales como los flujos de información y son 
                        gestionadas de forma coordinada. Sin embargo, todavía no se han considerado como posibles generadores de valor.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                    3. Las actividades logísticas se integran internamente, desde el aprovisionamiento hasta la distribución, consiguiendo
                         que esta integración aporte valor al cliente en términos de costes y plazos de entrega.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                      4. Las actividades logísticas se planifican integrando a clientes y proveedores en función de las necesidades de los primeros. El sistema contempla las 
                        necesidades del lanzamiento de productos innovadores: flexibilidad, disponibilidad, gestión de pedidos pequeños.
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
                        <p class="text-justify label-control">5. ¿Se hace un uso apreciable de las herramientas más adecuadas para la definición y el control de los procesos productivos? 
                            (por ejemplo: FMEA, simulación de procesos, TPM, experiencias piloto controladas) </p>
                    </h4>
                     <p class="text-justify col-md-12  ">
                        
                     1. No se utilizan herramientas avanzadas para la innovación de los procesos de producción, 
                         ni existen mecanismos para implantarlos.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                       
                      2. La empresa ha aplicado de forma ocasional algunas herramientas para la redefinición y el control de los
                         procesos productivos. No obstante, todavía no se han obtenido mejores significativas.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        
                      3. La empresa aplica sistemáticamente herramientas avanzadas a la redefinición y el control de los
                         procesos productivos y ha obtenido buenos resultados en cuanto a la mejora de la eficacia.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        
                      4. La aplicación de herramientas avanzadas para la redefinición y el control de los procesos
                         productivos está generalizada y la empresa adopta una actitud activa para aplicar periódicamente
                         estos instrumentos. La empresa se muestra activa en la renovación de estos instrumentos, en el desarrollo
                         de instrumentos propios y en la aplicación de las mejores prácticas de utilización.  
                    </p>
                     <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp5" CssClass="form-control" runat="server">
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
                                <asp:Button ID="btnguardar" CssClass="btn btn-warning btn-lg" runat="server" Text="Guardar" OnClick="btnguargar_Click" />
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
                            } else {
                                $id = $('#' + '<%= ddlp5.ClientID %>');
                                $vlr = $('#' + '<%= ddlp5.ClientID %>').val();

                                if (($vlr === null) || ($vlr === 'Seleccione')) {
                                    alert('Debe elegir un valor en la pregunta 5.');
                                    $id.focus();
                                    return false;
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>
    <!-- Validación de ddlp con jquery-->

</asp:Content>
