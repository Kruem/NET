<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="PrTecnologia.aspx.cs" Inherits="testBancolombia.OportunidadFrm.PrTecnologia" %>

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
                    Tecnología
               
                    <img src="../images/Tecnología.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. ¿Tiene identificado los diferentes sistemas de información que necesita su empresa?</p>
                    </h4>

                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp1" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Si"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>

                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">2. ¿Tiene definido políticas y procedimientos de respaldo de información?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp2" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Si"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">3. ¿Utiliza software de oficina licenciado ? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp3" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Si"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">4. ¿Cuál es el nivel de madurez de la tecnología?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp4" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Madura"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Clave"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Emergente"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">5. ¿Cuál es el grado de alistamiento o desarrollo de la tecnología? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp5" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Etapa temprana"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Prototipo a pequeña escala"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Prototipo a gran escala"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Producto o servicio listo para comercializar"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <br />

                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">6. ¿Cuál es la viabilidad industrial? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp6" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No factible"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Baja factibilidad"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Factible"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">7. Número de patentes en competencia </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp7" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Alto número de patentes"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Bajo número de patentes"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Ninguna o pocas patentes"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">8. ¿Qué tan importante es para usted que la tecnología esté protegida? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp8" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Baja"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Media"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Alta"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">9. Productos y tecnologías en competencia </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp9" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Muchos productos en competencia"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Número moderado de productos en competencia"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Ninguno o pocos productos en competencia"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">10. Beneficios de la invención </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp10" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No sustituye"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Cierto potencial sustitución"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Sustituye"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">11. Tiempo para salir al mercado con esta tecnología </p>
                    </h4>

                    <div class="input-group col-md-offset-1 col-md-4">
                        <asp:DropDownList ID="ddlp11" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Más de 24 meses"></asp:ListItem>
                            <asp:ListItem Value="1" Text="De 18 a 24 meses"></asp:ListItem>
                            <asp:ListItem Value="2" Text="De 6 a 12 meses"></asp:ListItem>
                            <asp:ListItem Value="3" Text="De 1 a 6 meses"></asp:ListItem>
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
                                <a href="../MenuOportunidad.aspx" class="btn btn-info">
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
                                    } else {
                                        $id = $('#' + '<%= ddlp6.ClientID %>');
                                        $vlr = $('#' + '<%= ddlp6.ClientID %>').val();

                                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                                            alert('Debe elegir un valor en la pregunta 6.');
                                            $id.focus();
                                            return false;
                                        } else {
                                            $id = $('#' + '<%= ddlp7.ClientID %>');
                                            $vlr = $('#' + '<%= ddlp7.ClientID %>').val();

                                            if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                alert('Debe elegir un valor en la pregunta 7.');
                                                $id.focus();
                                                return false;
                                            } else {
                                                $id = $('#' + '<%= ddlp8.ClientID %>');
                                                $vlr = $('#' + '<%= ddlp8.ClientID %>').val();

                                                if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                    alert('Debe elegir un valor en la pregunta 8.');
                                                    $id.focus();
                                                    return false;
                                                } else {
                                                    $id = $('#' + '<%= ddlp9.ClientID %>');
                                                    $vlr = $('#' + '<%= ddlp9.ClientID %>').val();

                                                    if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                        alert('Debe elegir un valor en la pregunta 9.');
                                                        $id.focus();
                                                        return false;
                                                    } else {
                                                        $id = $('#' + '<%= ddlp10.ClientID %>');
                                                        $vlr = $('#' + '<%= ddlp10.ClientID %>').val();

                                                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                            alert('Debe elegir un valor en la pregunta 10.');
                                                            $id.focus();
                                                            return false;
                                                        } else {
                                                            $id = $('#' + '<%= ddlp11.ClientID %>');
                                                            $vlr = $('#' + '<%= ddlp11.ClientID %>').val();

                                                            if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                alert('Debe elegir un valor en la pregunta 10.');
                                                                $id.focus();
                                                                return false;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

