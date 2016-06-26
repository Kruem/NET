<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="InnoCultInnovacion.aspx.cs" Inherits="testBancolombia.OportunidadFrm.InnoCultInnovacion" %>

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
                <p class="" style="font-size: 400%; font-family: 'Bitter', serif; color: #000000;">
                    Cultura de la Innovacion
                <img src="../images/Cultura-de-la-innovación.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. ¿Qué nivel de importancia tiene la innovación en la planificación del negocio a largo plazo?</p>
                    </h4>
                    <br />
                    <p class="text-justify col-md-12">
                        1. La gerencia no prevé cambios sustanciales del negocio
                             en los próximos años, así que no considera necesario innovar.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        2. La gerencia prevé algunos cambios en el sector en los próximos años y sabe que ello afectará a 
                         sus actuales productos y procesos de fabricación. Aun así, ya actuará a la vista de estos cambios. Los recursos
                          destinados a innovación experimentan fuertes fluctuaciones. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        3. La gerencia prevé cambios en el sector y realiza una planificación estratégica del 
                        negocio teniendo en cuenta estos cambios. Sin embargo,
                             no existe una vinculación directa entre esta visión estratégica y los recursos destinados a innovación.
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        4. La gerencia realiza una planificación estratégica del negocio, teniendo en cuenta las nuevas tendencias del mercado, 
                            lo que hacen sus competidores y la nuevas tecnologías. De esta estrategia emanan unos objetivos concretos a medio 
                         y largo plazo y una planificación de recursos para innovación. Se prevé también un excedente para proyectos no planificados. 
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
                        <p class="text-justify label-control">2. ¿Comparte la gerencia la idea de que la innovación hay que gestionarla y de que no se puede improvisar?</p>
                    </h4>
                    <br />
                    <p class="text-justify col-md-12 ">
                        1. La empresa no siente la necesidad de disponer de una metodología para
                             gestionar la innovación. Cree que la innovación es fruto de la inspiración
                         de un momento; simplemente sucede.  
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        2. Se asocia la innovación al desarrollo de los productos y servicios destinados
                             a satisfacer los pedidos en curso. Hay un responsable que impulsa y asigna
                         tareas, en función de sus propios criterios y de la urgencia del marcado. La dirección
                         no asigna recursos específicos a innovación.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        3. La gerencia es consciente de que la innovación se tiene que gestionar y no 
                          se puede improvisar y aporta recursos específicos al área técnica,
                             que es la encargada de gestionar la innovación con el objetivos, de forma
                           predominantemente incremental, los productos y los procesos. La innovación se 
                          limita al ámbito estrictamente tecnológico. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        4. La gerencia gestiona de forma sistemática la innovación como un proceso de negocio 
                          estructurado por proyectos, aluno de los cuales implica 
                            innovaciones radicales. La innovación trasciende el ámbito estrictamente tecnológico e 
                          incorpora las visiones comercial y organizativa de forma simultánea. La gerencia asigna recursos
                           concretos para llevar a cabo el proceso de innovación de forma permanente.
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
                        <p class="text-justify label-control">3. ¿Cómo incorpora la gerencia la innovación en su comunicación interna y externa? </p>
                    </h4>
                    <br />
                    <p class="text-justify col-md-12 ">
                        1. La gerencia de la empresa no tiene en cuenta ni menciona la innovación en 
                        la comunicación con sus trabajadores, clientes, accionistas o proveedores. 
                            La gerencia no se siente involucrada en la innovación, no se perciben 
                        actitudes, ni existe un ambiente proclive a la innovación. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        2. La gerencia de la empresa habla de innovación, pero no consigue transmitir
                          de forma coherente qué entiende por innovación está de moda y
                             se utiliza como un reclamo más de venta. La gerencia ve la innovación como un elemento secundario. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        3. La gerencia es consciente de que la innovación es un medio de obtener
                          ventajas competitivas y así lo transmite a sus clientes a través de folletos y catálogos.
                             Sin embargo, falla la comunicación a nivel interno. El compromiso con la innovación no se
                          incorpora explícitamente en los manifiestos de la dirección (misión, valores, objetivo, calidad).
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        4. La gerencia se siente implicada e impulsa la innovación como una
                          fuente de competitividad de la empresa. Lo transmite a sus trabajadores a través de su actitud personal,
                             la misión y los valores asegurándose de que estos se entienden y se comparten. Comunica el compromiso 
                         con la innovación a sus clientes mediante sus argumentos de venta: folletos, catálogos, etc.
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
                        <p class="text-justify label-control">4. ¿Cómo hace progresar la gerencia el saber hacer (know-how) de la empresa a partir de las personas?</p>
                    </h4>
                    <br />
                    <p class="text-justify col-md-12 ">
                        1. La gerencia no dedica esfuerzos a formar a sus trabajadores, ni incorpora
                             conocimientos externos mediante la contratación de personas tituladas
                         o con experiencia técnica, aunque existan necesidades no cubiertas.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        2. La gerencia promueve acciones puntuales de formación de sus trabajadores y
                             la participación en ciertas actividades, como asistencia a ferias, etc.
                          Contrata personal cualificado para cubrir las necesidades específicas.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        3. La gerencia fomenta la formación continuada de los trabajadores, pero todavía no dispone de
                             un plan de formación específico para cada puesto de trabajo. Valora la inquietud por aprender 
                        y canaliza las iniciativas que surgen de los propios trabajadores en este sentido. Contrata personal 
                        técnico cualificado para incrementar la base de conocimientos de la empresa.
                    </p>
                    <br />
                    <p class="text-justify col-md-12 ">
                        4. Existe, y se aplica, un plan para el desarrollo profesional a través de la rotación
                             interna entre diversas funciones. Se estimulan todo tipo de actividades que promueven
                           el aprendizaje, especialmente el trabajo en equipo. Se contrata y desarrolla permanentemente personal técnico cualificado.
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
                        <p class="text-justify label-control">5. ¿Cómo asume la gerencia el riesgo inherente a la innovación? </p>
                    </h4>
                    <br />
                    <p class="text-justify col-md-12  ">
                        1. La gerencia da prioridad a la obtención de resultados a corto plazo y
                             a la minimización de riesgos en detrimento del medio y largo plazo. 
                        Se confía en la experiencia y el error no se acepta bien. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        2. La gerencia admite riesgos limitados con resultados a medio plazo.
                             El error se acepta, pero se percibe de manera traumática.
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        3. La gerencia promueve y potencia un clima adecuado para la innovación
                             a medio plazo. Se toleran los errores creativos ocasionales. 
                    </p>
                    <br />
                    <p class="text-justify col-md-12  ">
                        4. Se asumen riesgos tecnológicos altos y resultados a largo plazo dentro
                             de una cartera de proyectos diversificada. Se acepta plenamente el
                         error como un elemento inherente a la innovación. Los resultados de la innovación se miden y se recompensan. 
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

