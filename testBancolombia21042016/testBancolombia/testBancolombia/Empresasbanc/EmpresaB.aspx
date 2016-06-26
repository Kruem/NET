<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="EmpresaB.aspx.cs" Inherits="testBancolombia.Empresasbanc.EmpresaB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <br />
                        <div class="text-box">
                            <div class="col-lg-12">
                                <h2><small>Información Empresa</small></h2>
                            </div>
                            <div class="col-lg-12">
                                <br />
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background-color: rgba(179, 182, 189, 0.8);">
                                        <h4 class="panel-title input-group">
                                            <i class="glyphicon glyphicon-briefcase"></i>
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">&nbsp;Modificar Empresa</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" style="background-color: rgba(179, 182, 189, 0.5);" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="row">

                                                <div class="box">
                                                    <div class="form-group col-md-12 col-md-offset- col-md-pull-">
                                                        <label class="col-md-4 control-label">Empresa </label>
                                                        <div class="input-group col-md-9">
                                                            <asp:TextBox runat="server" ID="txtempresa" TextMode="SingleLine" required="true" CssClass="form-control" placeholder="Nombre de la Empresa"></asp:TextBox>
                                                            <span class="input-group-addon">
                                                                <asp:LinkButton ID="btnbuscar" data-toggle="tooltip" data-placement="bottom" title="Verifica si la empresa solicitada existe" runat="server" Style="color: #808080;" CssClass="" OnClick="btnconsultaEmp_Click">Consultar&nbsp;&nbsp;<i class="glyphicon glyphicon-search"></i></asp:LinkButton></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-md-offset- col-md-pull- ">
                                                    <div class="box">
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Constituída</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" ID="ddlEstado_C" Enabled="false" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlEstado_C_SelectedIndexChanged">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>Si</asp:ListItem>
                                                                    <asp:ListItem>No</asp:ListItem>

                                                                </asp:DropDownList>

                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Fecha Constitución</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtFecha_Inicio" Enabled="false" placeholder="DD/MM/AAAA" CssClass="form-control datepicker"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Figura Juridica</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" ID="ddlfjuridica" Enabled="false" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlfjuridica_SelectedIndexChanged">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>SAS</asp:ListItem>
                                                                    <asp:ListItem>SA</asp:ListItem>
                                                                    <asp:ListItem>LTDA</asp:ListItem>
                                                                    <asp:ListItem>ESAL</asp:ListItem>
                                                                    <asp:ListItem>Otro</asp:ListItem>
                                                                </asp:DropDownList>
                                                                
                                                            <asp:TextBox runat="server" ID="txtfigjurid" Visible="false" placeholder="Figura Jurídica" CssClass="form-control datepicker"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">NIT</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtnit" Enabled="false" CssClass="form-control" placeholder="NIT"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Sector Economico</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" Enabled="false" ID="ddlSector_E" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlSector_E_SelectedIndexChanged">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>Agroindustria</asp:ListItem>
                                                                    <asp:ListItem>Alimentos</asp:ListItem>
                                                                    <asp:ListItem>Construccion</asp:ListItem>
                                                                    <asp:ListItem>Industria</asp:ListItem>
                                                                    <asp:ListItem>Salud</asp:ListItem>
                                                                    <asp:ListItem>Servicios</asp:ListItem>
                                                                    <asp:ListItem>Textil</asp:ListItem>
                                                                    <asp:ListItem>Tic</asp:ListItem>
                                                                    <asp:ListItem>Transporte</asp:ListItem>
                                                                    <asp:ListItem>Otro</asp:ListItem>
                                                                </asp:DropDownList>
                                                                
                                                            <asp:TextBox runat="server" ID="txtsector" Visible="false" placeholder="Sector Económico" CssClass="form-control datepicker"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">País</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList ID="ddlPaises" runat="server" CssClass="form-control " required="" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="ddlPaises_SelectedIndexChanged"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Estado</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtDepto" CssClass="form-control" Enabled="false" placeholder="Estado" required=""></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Ciudad</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtMunicipio" CssClass="form-control" Enabled="false" placeholder="Ciudad" required=""></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div id="divcomuna" runat="server" class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Comuna</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" ID="ddlComuna" Enabled="false" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlComuna_SelectedIndexChanged">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>1 Popular</asp:ListItem>
                                                                    <asp:ListItem>2 Santa Cruz</asp:ListItem>
                                                                    <asp:ListItem>3 Manrique</asp:ListItem>
                                                                    <asp:ListItem>4 Aranjuez</asp:ListItem>
                                                                    <asp:ListItem>5 Castilla</asp:ListItem>
                                                                    <asp:ListItem>6 Doce De Octubre</asp:ListItem>
                                                                    <asp:ListItem>7 Robledo</asp:ListItem>
                                                                    <asp:ListItem>8 Villa Hermosa</asp:ListItem>
                                                                    <asp:ListItem>9 Buenos Aires</asp:ListItem>
                                                                    <asp:ListItem>10 La Candelaria</asp:ListItem>
                                                                    <asp:ListItem>11 Laureles - Estadio</asp:ListItem>
                                                                    <asp:ListItem>12 La America</asp:ListItem>
                                                                    <asp:ListItem>13 San Javier</asp:ListItem>
                                                                    <asp:ListItem>14 Poblado</asp:ListItem>
                                                                    <asp:ListItem>15 Guayabal</asp:ListItem>
                                                                    <asp:ListItem>16 Belen</asp:ListItem>
                                                                    <asp:ListItem>50 San Sebastián de Palmitas</asp:ListItem>
                                                                    <asp:ListItem>60 San Cristobal</asp:ListItem>
                                                                    <asp:ListItem>70 Altavista</asp:ListItem>
                                                                    <asp:ListItem>80 San Antonio De Prado</asp:ListItem>
                                                                    <asp:ListItem>90 Santa Elena</asp:ListItem>
                                                                    <asp:ListItem>Otro</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:TextBox runat="server" ID="txtcomuna" CssClass="form-control" required="" placeholder="Comuna" Visible="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Dirección</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtdireccion" Enabled="false" CssClass="form-control" required="" placeholder="Direccion"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <!--cambio de pag-->
                                                <div class="col-md-6">
                                                    <div class="box">
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">N°Socios</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" Enabled="false" ID="ddlNum_socio" CssClass="form-control">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>0</asp:ListItem>
                                                                    <asp:ListItem>1</asp:ListItem>
                                                                    <asp:ListItem>2</asp:ListItem>
                                                                    <asp:ListItem>3</asp:ListItem>
                                                                    <asp:ListItem>4</asp:ListItem>
                                                                    <asp:ListItem>5</asp:ListItem>
                                                                    <asp:ListItem>6</asp:ListItem>
                                                                    <asp:ListItem>7</asp:ListItem>
                                                                    <asp:ListItem>8</asp:ListItem>
                                                                    <asp:ListItem>9</asp:ListItem>
                                                                    <asp:ListItem>10+</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Representante Legal</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtrepres" Enabled="false" CssClass="form-control" required="" placeholder="Nombre"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Universidad</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" Enabled="false" ID="ddlUniversidad" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlUniversidad_SelectedIndexChanged">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>Autónoma de las Américas</asp:ListItem>
                                                                    <asp:ListItem>Autónoma Latinoamericana</asp:ListItem>
                                                                    <asp:ListItem>Bellas Artes</asp:ListItem>
                                                                    <asp:ListItem>CEIPA</asp:ListItem>
                                                                    <asp:ListItem>CENSA</asp:ListItem>
                                                                    <asp:ListItem>EAFIT</asp:ListItem>
                                                                    <asp:ListItem>Escuela De Ingenieria</asp:ListItem>
                                                                    <asp:ListItem>Esumer</asp:ListItem>
                                                                    <asp:ListItem>IME</asp:ListItem>
                                                                    <asp:ListItem>ITM</asp:ListItem>
                                                                    <asp:ListItem>IUSH</asp:ListItem>
                                                                    <asp:ListItem>La Salle</asp:ListItem>
                                                                    <asp:ListItem>Politecnico JIC</asp:ListItem>
                                                                    <asp:ListItem>San Buenaventura</asp:ListItem>
                                                                    <asp:ListItem>Santo Tomás</asp:ListItem>
                                                                    <asp:ListItem>SENA</asp:ListItem>
                                                                    <asp:ListItem>Tecnológico de Antioquia</asp:ListItem>
                                                                    <asp:ListItem>Uniminuto</asp:ListItem>
                                                                    <asp:ListItem>Universidad De Antioquia</asp:ListItem>
                                                                    <asp:ListItem>Universidad De Medellin</asp:ListItem>
                                                                    <asp:ListItem>Universidad Nacional</asp:ListItem>
                                                                    <asp:ListItem>UPB</asp:ListItem>
                                                                    <asp:ListItem>Otro</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:TextBox ID="txtUniOtro" CssClass="form-control" Visible="false" runat="server" placeholder="Universidad"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Telefono Fijo</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txttelefono" Enabled="false" CssClass="form-control " required="" placeholder="Fijo"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Celular</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtxcelular" Enabled="false" CssClass="form-control" placeholder="Celular"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Pagina web</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" TextMode="SingleLine" ID="txtpagweb" Enabled="false" CssClass="form-control" placeholder="http://"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Facebook</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" TextMode="SingleLine" ID="txtface" Enabled="false" CssClass="form-control" placeholder="http://"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Twitter</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" TextMode="SingleLine" ID="txttwitter" Enabled="false" CssClass="form-control " placeholder="Twitter"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- texto descriptivo empresa - Reseña -->
                                                <div class="col-md-12 ">
                                                    <div class="box">
                                                        <div class="form-group">
                                                            <label class="col-md-12 control-label">Reseña de la empresa</label>
                                                            <div class="col-lg-9">
                                                                <asp:TextBox runat="server" ID="txtdescripcion" Enabled="false" TextMode="MultiLine" Rows="3" CssClass="form-control " placeholder="Descripción" required=""></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="container-fluid">
                                                        <div class="col-lg-12">
                                                            <div class="col-md-6">
                                                                <div class="box">
                                                                    <div class="form-group">
                                                                        <div class="col-lg-12 text-justify">
                                                                            <asp:Label runat="server" ID="lblmensaje" CssClass="text-danger" Text=""></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5 col-md-offset-1">
                                                                <div class="col-lg-6">
                                                                    <asp:Button ID="btnguardar" CssClass="btn btn-warning btn-lg" runat="server" OnClick="btnguardar_Click" Text="Guardar" />
                                                                    <asp:Button ID="btnmodificar" CssClass="btn btn-warning btn-lg" Visible="false" runat="server" OnClick="btnmodificar_Click" Text="Guardar" />
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <asp:Button ID="btnlimpiar" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background-color: rgba(179, 182, 189, 0.8);">
                                        <h4 class="panel-title input-group">
                                            <i class="glyphicon glyphicon-upload"></i>
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">&nbsp;Cargar Archivos</a>
                                        </h4>
                                    </div>
                                    <div id="collapse2" style="background-color: rgba(179, 182, 189, 0.5);" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <br />
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="container-fluid">
                                    <div class="col-md-12">
                                        <div class="span6 col-md-offset-9">
                                            <a href="../Administrador/indexAdm.aspx" class="btn btn-info btn-lg">
                                                <b>
                                                    <center>Regresar</center>
                                                </b>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/AllCountries.js"></script>
    <script>          
        $(document).ready(function () {
            $('#' + '<%= btnguardar.ClientID %>').click(function () {

                $id = $('#' + '<%= ddlPaises.ClientID %>');
                $vlr = $('#' + '<%= ddlPaises.ClientID %>').val();

                if (($vlr === null) || ($vlr === 'Seleccione')) {
                    alert('Debe elegir un País');
                    $id.focus();
                    return false;
                }
            });

            //toltip consulta
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

    <script language="javascript" type="text/javascript">
        $('#<%= txtFecha_Inicio.ClientID %>').datepicker().on('changeDate', function (ev) {
            CalcularGrafico();
        });

        //function CalcularGrafico() {
        //    // Periodos
        //    var P1;           

        //}

    </script>
</asp:Content>
