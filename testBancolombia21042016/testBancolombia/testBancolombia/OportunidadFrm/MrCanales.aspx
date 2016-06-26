<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="MrCanales.aspx.cs" Inherits="testBancolombia.OportunidadFrm.MrCanales" %>
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
                    Canales
                <img src="../images/Canales.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. ¿Tiene clara su estrategia para transmitir al cliente su propuesta de valor? </p>
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
                        <p class="text-justify label-control">2. ¿La empresa tiene definidos los canales mediante los cuales entrega y/o comercializa sus productos  y/o  servicios al cliente?  </p>
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
                        <p class="text-justify label-control">3. ¿Tiene políticas definidas con sus canales? </p>
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
                        <p class="text-justify label-control">4. ¿Saben cómo quieren pagar sus clientes por sus productos o servicios?  </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp4" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">5. ¿El precio (o rangos de precios) establecidos guardan relación con las prestaciones ofrecidas y el consumidor al cual se dirigen?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp5" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">6. ¿Los precios (o rangos de precios) y sus prestaciones guardan relación con los de la competencia?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp6" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">7. ¿La estrategia de promoción y difusión es congruente con el perfil de los clientes y los canales de comercialización donde se distribuirá el producto?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp7" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">8. ¿La estrategia de promoción y difusión es compatible con los objetivos de la empresa y con su ventaja competitiva? </p>
                    </h4>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp8" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">9. ¿La estrategia de promoción y difusión contribuye a construir una imagen de empresa confiable y de buena reputación?</p>
                    </h4>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp9" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">10. ¿La estrategia de promoción y difusión toma en cuenta la necesidad
                             de educar al usuario o consumidor acerca de las características y funciones innovadoras del producto?</p>
                    </h4>

                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp10" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">11. ¿El canal comercial elegido es apropiado para el producto o servicio que se desea comercializar y el mercado al cuál se dirige? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp11" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">12. ¿Posee la empresa un proceso de ventas? </p>
                    </h4>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp12" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">13. ¿La empresa realiza actividades para garantizar el proceso logístico? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp13" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">14. ¿Conoce el nivel de efectividad de los canales que emplea?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp14" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">15. ¿Tiene determinada la empresa la participación en las ventas de los canales utilizados? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp15" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">16. ¿Mide el nivel de cumplimiento de entrega de sus productos o servicios?  </p>
                    </h4>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp16" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">17. ¿La empresa tiene correo electrónico corporativo? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp17" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">18. ¿La empresa tiene sitio Web? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp18" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">19. ¿La empresa tiene sitio de E-commerce?  </p>
                    </h4>
                   <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp19" CssClass="form-control" runat="server">
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
                                <a href="../MOMercado.aspx" class="btn btn-info">
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
                                                            } else {
                                                                $id = $('#' + '<%= ddlp12.ClientID %>');
                                                                $vlr = $('#' + '<%= ddlp12.ClientID %>').val();

                                                                if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                    alert('Debe elegir un valor en la pregunta 10.');
                                                                    $id.focus();
                                                                    return false;
                                                                } else {
                                                                    $id = $('#' + '<%= ddlp13.ClientID %>');
                                                                    $vlr = $('#' + '<%= ddlp13.ClientID %>').val();

                                                                    if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                        alert('Debe elegir un valor en la pregunta 10.');
                                                                        $id.focus();
                                                                        return false;
                                                                    } else {
                                                                        $id = $('#' + '<%= ddlp14.ClientID %>');
                                                                        $vlr = $('#' + '<%= ddlp14.ClientID %>').val();

                                                                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                            alert('Debe elegir un valor en la pregunta 10.');
                                                                            $id.focus();
                                                                            return false;
                                                                        } else {
                                                                            $id = $('#' + '<%= ddlp15.ClientID %>');
                                                                            $vlr = $('#' + '<%= ddlp15.ClientID %>').val();

                                                                            if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                alert('Debe elegir un valor en la pregunta 10.');
                                                                                $id.focus();
                                                                                return false;
                                                                            } else {
                                                                                $id = $('#' + '<%= ddlp16.ClientID %>');
                                                                                $vlr = $('#' + '<%= ddlp16.ClientID %>').val();

                                                                                if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                    alert('Debe elegir un valor en la pregunta 10.');
                                                                                    $id.focus();
                                                                                    return false;
                                                                                } else {
                                                                                    $id = $('#' + '<%= ddlp17.ClientID %>');
                                                                                    $vlr = $('#' + '<%= ddlp17.ClientID %>').val();

                                                                                    if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                        alert('Debe elegir un valor en la pregunta 10.');
                                                                                        $id.focus();
                                                                                        return false;
                                                                                    } else {
                                                                                        $id = $('#' + '<%= ddlp18.ClientID %>');
                                                                                        $vlr = $('#' + '<%= ddlp18.ClientID %>').val();

                                                                                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                            alert('Debe elegir un valor en la pregunta 10.');
                                                                                            $id.focus();
                                                                                            return false;
                                                                                        } else {
                                                                                            $id = $('#' + '<%= ddlp19.ClientID %>');
                                                                                            $vlr = $('#' + '<%= ddlp19.ClientID %>').val();

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

