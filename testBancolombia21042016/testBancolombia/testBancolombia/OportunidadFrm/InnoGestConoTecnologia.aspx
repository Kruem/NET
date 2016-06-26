<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="InnoGestConoTecnologia.aspx.cs" Inherits="testBancolombia.OportunidadFrm.InnoGestConoTecnologia" %>
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
                   Gestión del conocimiento y la tecnología
                <img src="../images/Gestión-del-conocimiento-y-tecnología.png" class="" width="8%" />
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
                        <p class="text-justify label-control">1. ¿ Identifica la empresa las tecnologías clave para su negocio y evalúa el impacto 
                            de estas tecnologías sobre los productos de futuro?</p>
                    </h4>
                     
                     <p class="text-justify col-md-12">
                        
                      1. La empresa cree que no necesita tener de forma explícita ningún mecanismo de vigilancia 
                         tecnológica. No tiene identificados sus conocimientos ni competencias clave. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                      2. El seguimiento de las tecnologías emergentes se hace con el análisis de productos de la competencia y las novedades que presentan
                         los líderes sectoriales en las ferias internacionales. Tienen identificadas algunas de sus competencias clave. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       3. Se hace un seguimiento sistemático de los productos y las tecnologías de la competencia y de las empresas de referencia mundial, asistiendo a ferias, congresos, etc. Se está en contacto con algunas fuentes de conocimiento próximas (ingenierías, centros tecnológicos, universidades y expertos) y se hacen reuniones internas para analizar todo lo que se ha observado
                         y estudiar la forma de incorporarlo a la empresa. Se han determinado los conocimientos y competencias clave.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        
                       4. La empresa analiza tecnológicamente los productos de los competidores, está al día de la nueva legislación y las nuevas patentes. Tiene identificadas las fuentes de conocimiento externas y utiliza esta información para incorporar nuevas tecnologías a sus productos. La vigilancia y prospectiva tecnológicas son actividades integradas en la gestión de la empresa.
                         Se han detectado los conocimientos y competencias clave y se replantea periódicamente cómo mejorarlos.   
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
                        <p class="text-justify label-control">2. ¿Existe un plan estratégico para incorporar nuevas tecnologías al desarrollo de nuevos productos, 
                            con una dotación presupuestaria y una estimación de la rentabilidad esperada?</p>
                    </h4>
                     <p class="text-justify col-md-12 ">
                       
                  1. No existe ningún plan estratégico para incorporar nuevas tecnologías a la empresa ni
                          previsiones de adjudicación de recursos financieros a esta finalidad.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                    2. No existe ningún plan tecnológico concreto. Se intentan identificar las tecnologías
                         necesarias y obtener los recursos necesarios para su obtención proyecto a proyecto. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       3. Existe un plan tecnológico, pero no se aplica debido a las presiones del día a día. Aun así
                         se intenta que los nuevos productos incorporen las tecnologías más avanzadas y, en cada caso, 
                        se hace una previsión de los recursos financieros necesarios par abordar la I+D del proyecto.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       4. Existe un plan tecnológico a medio o largo plazo, coherente con las necesidades futuras de mercado y
                         la estrategia de empresa. En el plan se asigna un responsable con un presupuesto para I+D  y/o desarrollo
                         tecnológico. Periódicamente se evalúa el desarrollo del plan y se introducen las modificaciones necesarias. 
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
                        <p class="text-justify label-control">3. ¿Existe algún procedimiento para decidir qué parte debe hacerse internamente y 
                            qué parte hay que subcontratar?</p>
                    </h4>
                    <p class="text-justify col-md-12 ">
                       
                     1. La empresa no aborda, de momento, actividades de I+D, ni interna ni externamente. No se conocen 
                        los programas institucionales de apoyo a I+D+I.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                       2. La empresa participa en asociaciones tecnológicas del sector, pero de momento realiza toda su I+D internamente.
                         Sólo subcontrata trabajos puntuales de escaso valor añadido. Se conocen superficialmente los programas institucionales
                          de apoyo a I+D+I, pero se considera que la burocracia asociada a su solicitud los hace poco útiles.   
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                     3. Para los proyectos importantes de I+D se analiza la conveniencia económica y estratégica de hacer I+D internamente
                         o externamente. Existen contactos puntuales con centros tecnológicos, universidades o ingeniería. La empresa conoce y participa activamente en los programas institucionales
                         de apoyo a I+D+I. También se beneficia de las ventajas fiscales de I+D+I en el impuesto de sociedades.   
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                      4. Se define claramente cuáles son los conocimientos y las tecnologías
                         estratégicos para la empresa que, por tanto, conviene desarrollar internamente. La empresa tiene un departamento  
                        de I+D bien estructurado, con personal altamente cualificado y equipamiento adecuado para ejecutar los proyectos
                         y coordinar la subcontratación de I+D. La empresa saca el máximo partido de todos los programas institucionales 
                        de apoyo a I+D+I y a las ventajas fiscales porque ha asignado recursos al seguimiento sistemático de estos temas. 
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
                        <p class="text-justify label-control">4. ¿Gestiona la empresa su conocimiento de forma adecuada?</p>
                    </h4>
                     <p class="text-justify col-md-12 ">
                        
                    1. Existe la creencia generalizada de que el conocimiento es un patrimonio personal e intransferible 
                         que reside únicamente en la mente de las personas. No se percibe la ventaja de compartir el conocimiento.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                       
                      2. El único conocimiento corporativo accesible es el documento en el sistema de calidad y en la documentación de algunos proyectos.
                         No existe ninguna actividad sistemática orientada a la detección y asimilación de nuevos conocimientos.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                    3. Se realizan actividades puntuales encaminadas a la captura, estructuración y divulgación del conocimiento dentro de la
                         empresa. Se intenta mantenerlo actualizado, pero existen problemas de participación del personal. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        
                      4. Existe una metodología formal y herramientas encaminadas a detectar, estructurar y asimilar nuevos conocimientos. Se ha creado una base de conocimiento corporativo, fácilmente accesible a todo el personal
                         y que se mantiene en constante evolución. El conocimiento diferencial se reconoce como una ventaja competitiva. 
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
                        <p class="text-justify label-control">5. ¿Gestiona la empresa sus activos de propiedad intelectual 
                            (patentes, derechos de autor, marcas, secretos industriales y know-how)? </p>
                    </h4>
                    <p class="text-justify col-md-12  ">
                        
                    1. La empresa no tiene ninguna política específica sobre este tipo de activos e ignora sus mecanismos de protección.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        
                      2. La empresa conoce algunos mecanismos de protección pero no ha inventariado ni catalogado el valor de sus propios activos de propiedad intelectual, 
                        por lo que sólo se han llevado a cabo actuaciones de protección en algunos casos aislados.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        
                       3. La empresa conoce sus activos de propiedad intelectual, así como sus sistemas de protección. Sin embargo, 
                        no existen mecanismos específicos para decidir si se protegen o no. En situaciones claras se protegen.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        
                     4. Se han inventariado y valorado económicamente todos los activos de propiedad intelectual. Existe un procedimiento para decidir sobre la conveniencia
                         o  no de su protección legal y, en caso afirmativo, se asignan recursos para su defensa sistemática. 
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
