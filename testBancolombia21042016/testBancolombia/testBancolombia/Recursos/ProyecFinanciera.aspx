﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="ProyecFinanciera.aspx.cs" Inherits="testBancolombia.Recursos.ProyecFinanciera" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
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
            <div class="col-md-12">
                <p class="" style="font-size: 400%; font-family: 'Bitter', serif; color: #000000;">
                    Proyección financiera
                <img src="../images/Proyección-financiera.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. Se alcanza el punto de equilibrio en tiempos razonables</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">2. Se identifican las formas en que se financiarán saldos negativos</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">3. El tiempo que se demora en recuperar la inversión inicial es razonable</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">4. Es atractivo el volumen de negocios que genera el proyecto (facturación)</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">5. Es atractiva la rentabilidad del proyecto</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">6. La sensibilidad del proyecto frente a una disminución en las ventas es baja.</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp6" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Si"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <!--Mensaje inicio-->
                <div class="row">
                    <div class="row text-box">
                        <div class="col-lg-12">
                            <h2>
                                <small><small>
                                    <p>Claridad y consistencia de la información presentada</p>
                                </small></small>
                            </h2>
                        </div>
                    </div>

                </div>
                <br />
                <!--mensaje fin-->
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">7. Es relevante y proviene de fuentes de información confiables</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No cubre los aspectos solicitados / los cubre en forma parcial – incompleta.
                    </p>
                    <p class="text-justify col-md-12">
                        2. Cubre con los aspectos solicitados pero las fuentes de información suministradas no siempre son claras.

                    </p>
                    <p class="text-justify col-md-12">
                        3. Cubre con los aspectos solicitados y las fuentes de información presentadas son adecuadas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp7" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">8. Calcula adecuadamente  la inversión necesaria para el lanzamiento del proyecto y su primer año de operaciones</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No cubre los aspectos solicitados / los cubre en forma parcial – incompleta.
                    </p>
                    <p class="text-justify col-md-12">
                        2. Cubre con los aspectos solicitados pero las fuentes de información suministradas no siempre son claras.

                    </p>
                    <p class="text-justify col-md-12">
                        3. Cubre con los aspectos solicitados y las fuentes de información presentadas son adecuadas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp8" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">9. Se emplean para el cálculo de las proyecciones supuestos razonables y bien justificados</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No cubre los aspectos solicitados / los cubre en forma parcial – incompleta.
                    </p>
                    <p class="text-justify col-md-12">
                        2. Cubre con los aspectos solicitados pero las fuentes de información suministradas no siempre son claras.

                    </p>
                    <p class="text-justify col-md-12">
                        3. Cubre con los aspectos solicitados y las fuentes de información presentadas son adecuadas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp9" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                 <div class="row">
                    <h4>
                        <p class="text-justify label-control">10. Utiliza varias fuentes de información diferentes</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No cubre los aspectos solicitados / los cubre en forma parcial – incompleta.
                    </p>
                    <p class="text-justify col-md-12">
                        2. Cubre con los aspectos solicitados pero las fuentes de información suministradas no siempre son claras.

                    </p>
                    <p class="text-justify col-md-12">
                        3. Cubre con los aspectos solicitados y las fuentes de información presentadas son adecuadas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp10" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">11. Demuestra un adecuado conocimiento por parte de los emprendedores de los aspectos económicos y financieros del proyecto</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No cubre los aspectos solicitados / los cubre en forma parcial – incompleta.
                    </p>
                    <p class="text-justify col-md-12">
                        2. Cubre con los aspectos solicitados pero las fuentes de información suministradas no siempre son claras.

                    </p>
                    <p class="text-justify col-md-12">
                        3. Cubre con los aspectos solicitados y las fuentes de información presentadas son adecuadas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp11" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
                            <asp:ListItem Value="-1" Text="No Aplica"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                 <div class="row">
                    <h4>
                        <p class="text-justify label-control">12. Permite evaluar adecuadamente el punto de equilibrio del proyecto y las necesidades de financiamiento inicial</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No cubre los aspectos solicitados / los cubre en forma parcial – incompleta.
                    </p>
                    <p class="text-justify col-md-12">
                        2. Cubre con los aspectos solicitados pero las fuentes de información suministradas no siempre son claras.

                    </p>
                    <p class="text-justify col-md-12">
                        3. Cubre con los aspectos solicitados y las fuentes de información presentadas son adecuadas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp12" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="1"></asp:ListItem>
                            <asp:ListItem Value="1" Text="2"></asp:ListItem>
                            <asp:ListItem Value="2" Text="3"></asp:ListItem>
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
                                <a href="../MenuRecursos.aspx" class="btn btn-info">
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
