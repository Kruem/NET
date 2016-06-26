<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="FuenFinanFutura.aspx.cs" Inherits="testBancolombia.Recursos.FuenFinanFutura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="col-md-12">
                <p style="font-size: 400%; font-family: 'Bitter',serif; color: #000000">
                    Fuentes de financiación futura
                    <img src="../images/Fuente-de-financiación-futura.png" width="9%" />
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
                        <p class="text-justify label-control">1. ¿La empresa tiene identificadas las necesidades de financiación?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp1" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Seleccione"></asp:ListItem>
                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Si"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">2. Monto del crédito a solicitar a la entidad financiera</p>

                    </h4>
                    <p class="text-justify col-md-4">
                        <asp:TextBox runat="server" CssClass="form-control" placeholder="$" TextMode="Number" ID="txtp2" />
                    </p>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">3. Plazo del crédito a solicitar a la entidad financiera</p>

                    </h4>
                    <p class="text-justify col-md-4">
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtp3" />
                    </p>
                </div>
                <br />
                <!--Mensaje inicio-->
                <div class="row">
                    <div class="row text-box">
                        <div class="col-lg-12">
                            <h2>
                                <small><small>
                                    <p>INVERSIÓN REQUERIDA</p>
                                </small></small>
                            </h2>
                        </div>
                    </div>
                    
                </div>
                <br />
                <!--mensaje fin-->
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            4. Bienes Capitales
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <div class="input-group ">
                            <asp:TextBox runat="server" ID="txtp4" TextMode="Number" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-list-alt" data-placement="right" data-toggle="tooltip" title="Financiero: Activos durables, maquinaria y equipo!"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            5. Instalaciones
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp5" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            6. Activos Intangibles
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp6" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            7. Recursos Humanos
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <div class="input-group ">
                            <asp:TextBox runat="server" ID="txtp7" placeholder="$" TextMode="Number" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-list-alt" data-placement="right" data-toggle="tooltip"
                                    title="Financiero: Salarios de personal que deberá financiar hasta que el proyecto pueda solventarlos economicamente"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            8. Consultoría y Servicios
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <div class="input-group ">
                            <asp:TextBox runat="server" ID="txtp8" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-list-alt" data-placement="right" data-toggle="tooltip" title="Financiero: 
                                    Servicios de profesionales aplicados al gerenciamiento de la empresa"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            9. Materias Primas e Insumos
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <div class="input-group ">
                            <asp:TextBox runat="server" ID="txtp9" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-list-alt" data-placement="right" data-toggle="tooltip" title="Financiero: 
                                    Productos intermedios del proceso de fabricación"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <br />
                <!--Mensaje inicio-->
                <div class="row">
                    <div class="row text-box">
                        <div class="col-lg-12">
                            <h2>
                                <small><small>
                                    <p>OTRAS FUENTES DE FINANCIAMIENTO</p>
                                </small></small>
                            </h2>
                        </div>
                    </div>
                </div>
                <br />
                <!--Mensaje fin-->
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            10. Entidad financiera con la que tiene crédito para financiar la inversión requerida 
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp10" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            11. Monto del crédito adjudicado
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp11" placeholder="$" TextMode="Number" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            12. Plazo del crédito adjudicado
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class="">
                            <asp:TextBox runat="server" ID="txtp12" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            13. Préstamo de Inversionistas
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp13" placeholder="$" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            14. Monto de los recursos captados de concursos públicos
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class="">
                            <asp:TextBox runat="server" ID="txtp14" placeholder="$" TextMode="Number" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            15. Monto de los recursos captados de concursos privados
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp15" placeholder="$" TextMode="Number" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            16. Monto de los recursos propios a invertir
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class=" ">
                            <asp:TextBox runat="server" ID="txtp16" placeholder="$" TextMode="Number" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            17. Monto de los recursos amigos/familiares a invertir
                        </p>
                    </h4>
                    <div class="col-md-4">
                        <div class="">
                            <asp:TextBox runat="server" ID="txtp17" placeholder="$" TextMode="Number" CssClass="form-control" />
                        </div>
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
            $('[data-toggle="tooltip"]').tooltip();

            $('#' + '<%= btnguardar.ClientID %>').click(function () {

                $id = $('#' + '<%= ddlp1.ClientID %>');
                $vlr = $('#' + '<%= ddlp1.ClientID %>').val();

                if (($vlr === null) || ($vlr === 'Seleccione')) {
                    alert('Debe elegir un valor en la pregunta 1.');
                    $id.focus();
                    return false;
                } 
            });
        });
    </script>
    <!-- Validación de ddlp con jquery-->
</asp:Content>
