<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="InnoGeneConceptos.aspx.cs" Inherits="testBancolombia.OportunidadFrm.InnoGeneConceptos" %>
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
                   Generación De Nuevos Conceptos
                <img src="../images/Generación-de-nuevos-conceptos.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. ¿La empresa identifica para la creación de nuevos productos las necesidades actuales y futuras de los clientes y las actividades de la competencia?</p>
                    </h4>
                       <p class="text-justify col-md-12">
                       
                       1. Se crean nuevos productos basados en intuiciones, sin analizar 
                           las necesidades de los clientes ni las actividades de la competencia. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       2. La empresa confía en su experiencia en el sector y en su red de representantes
                         y distribuidores habituales para que le aporten la información de marcado relevante
                         (necesidades de los clientes y tendencias de la competencia) para lanzar nuevos productos. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       3. La empresa obtiene sus ideas del mercado a través de una investigación
                         de las necesidades de sus clientes. Hace que diversas áreas de la empresa participen en esta 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       4. La empresa tiene segmentados los clientes y hace un seguimiento sistemático de los más exigentes
                         e innovadores. Analiza el uso de los productos actuales para poder así adelantarse a las necesidades
                         futuras de los clientes. Periódicamente realiza prospecciones y estudios de las tendencias de marcado.
                         Analiza las actividades de la competencia para obtener nuevas ideas de mejora. 
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
                        <p class="text-justify label-control">2. ¿ La empresa estimula la creatividad de sus trabajadores, la aportación de ideas y el espíritu innovador?</p>
                    </h4>
                     <p class="text-justify col-md-12 ">
                        
                     1. No existen mecanismos par ala aportación de ideas o sugerencias de
                          mejora, de forma que raramente se producen. Los sistemas de control y 
                         la rigidez organizativa desaniman a la creatividad. Cuesta aportar nuevas ideas. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                     2. Existen mecanismos para facilitar la aportación de ideas y sugerencias. 
                        Sin embargo, la falta de respuesta y reconocimiento a veces desaniman su utilización.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                       3. Se estimula la aportación de nuevas ideas y el espíritu innovador. Se realizan reuniones
                         periódicas de equipo para informar y recibir comentarios. Existe un reconocimiento explícito
                         de las aportaciones realizadas. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Existen mecanismos específicos para recompensar la creatividad, la aportación de ideas
                         y el espíritu innovador. Se practica el trabajo en equipos multidisciplinares de forma
                         regular. Se preparan tormentas de ideas con objetivos prefijados. Se recibe feedback de la
                         dirección sobre las sugerencias realizadas. Los trabajadores aportan buenas ideas, muchas de
                         las cuales llegan a implementarse. 
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
                        <p class="text-justify label-control">3. ¿La generación de nuevos conceptos se planifica?</p>
                    </h4>
                      <p class="text-justify col-md-12 ">
                       
                      1. La generación de nuevas ideas no se planifica. Es la gerencia la
                           que decide, de forma aislada, qué nuevos conceptos desarrollar, 
                          sin contar con la participación de otras áreas de la empresa. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       2. Se planifica la generación de nuevos conceptos en el departamento 
                        técnico y sin un contacto directo con el mercado. No se planifica el producto por gamas. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                      3. La planificación de nuevos conceptos se lleva a cabo mediante comunicaciones
                         entre el área técnica y las áreas de la empresa en contacto con el cliente.
                         Se hace un seguimiento del ciclo de vida del producto. Se planifica el producto por gamas.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                       4. Se planifica la creación de nuevos conceptos en función de su ciclo de vida. Un grupo de 
                        trabajo multidisciplinar, liderado por la dirección, se reúne periódicamente  para analizar 
                        las nuevas ideas que se han generado. Se planifican los productos por gamas y en diversas generaciones. 
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
                        <p class="text-justify label-control">4. ¿La empresa tiene establecido un proceso de gestión de la innovación que le permita seleccionar e identificar las ideas suceptibles de convertirse en innovación?</p>
                    </h4>
                    <p class="text-justify col-md-12 ">
                        
                     1. No existe ningún procedimiento para seleccionar qué conceptos se tienen
                         que desarrollar. En caso de duda, la gerencia decide según su criterio. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       2. Los nuevos conceptos se seleccionan a partir de los resultados de los estudios de viabilidad técnica, pero sin tener 
                        estimaciones de la rentabilidad económica o viceversa. La gerencia intenta tomar la decisión por consenso. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                      3. Se seleccionan los nuevos conceptos que hay que desarrollar en función de su viabilidad técnica y económica,
                         pero no se analiza detalladamente el impacto que puede tener sobre los procesos de producción y comercialización
                         actuales. La selección se realiza combinando criterios subjetivos y objetivos.  
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Se aplica un procedimiento formal para la selección de conceptos en función de su sintonía con la estrategia de
                         la empresa y sus capacidades internas, así como de su viabilidad técnica y rentabilidad esperada , y de acuerdo
                         con parámetros como la calidad, el precio, los recursos y el tiempo. Se hacen estudios de mercado y se analizan 
                        los retos que impone el nuevo concepto sobre los procesos de producción y comercialización. 
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
                        <p class="text-justify label-control">5. ¿La empresa hace un uso apreciable y continuado de las
                             herramientas para la generación de nuevos conceptos? (por ejemplo: análisis de valor,
                             triz, brainstorming, cartera de producto, mapa de proyectos, embudo de proyectos, etc.) </p>
                    </h4>
                     <p class="text-justify col-md-12  ">
                        
                      1. No se utilizan, ni existe ningún proceso para implantarlas
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                       
                       2. se utilizan ocasionalmente algunas herramientas avanzadas para la
                         generación de nuevos conceptos. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        
                       3. Se utilizan de forma sistemática algunas herramientas avanzadas
                         para la generación y selección de nuevos conceptos.  
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                       
                      4. El uso sistemático de este tipo de herramientas permite aumentar la 
                        capacidad de generar nuevos conceptos, de seleccionar las mejores ideas y 
                        hacer participar a los colaboradores esenciales con el objetivo de reducir el riesgo de
                         fracasos. Se valora sistemáticamente la posibilidad de incorporar nuevas herramientas a las ya 
                        conocidas y de mejorar la existentes.  
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