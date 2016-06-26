<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="ModificarEmpresa.aspx.cs" Inherits="testBancolombia.Empresasbanc.ModificarEmpresa" %>

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
                                <h2><small>Modificar Empresa</small></h2>
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
                                    <div id="collapse1" style="background-color: rgba(179, 182, 189, 0.5);" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">

                                                <div class="box">
                                                    <div class="form-group col-md-12 col-md-offset- col-md-pull-">
                                                        <label class="col-md-4 control-label">Empresa </label>
                                                        <div class="input-group col-md-9">
                                                            <asp:TextBox runat="server" ID="txtempresa" TextMode="SingleLine" required="true" CssClass="form-control" placeholder="Nombre de la Empresa                                                                                        Para buscar click aqui -->"></asp:TextBox>
                                                            <span class="input-group-addon">
                                                                <asp:LinkButton ID="btnbuscar" runat="server" Style="color: #808080;" CssClass="" OnClick="btnconsultaEmp_Click"><i class="glyphicon glyphicon-search"></i></asp:LinkButton></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-md-offset- col-md-pull- ">
                                                    <div class="box">
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Contituída</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" ID="ddlEstado_C" Enabled="false" CssClass="form-control">
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
                                                                <asp:DropDownList runat="server" ID="ddlfjuridica" Enabled="false" CssClass="form-control">
                                                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                                                    <asp:ListItem>SAS</asp:ListItem>
                                                                    <asp:ListItem>SA</asp:ListItem>
                                                                    <asp:ListItem>LTDA</asp:ListItem>
                                                                    <asp:ListItem>ESAL</asp:ListItem>
                                                                    <asp:ListItem>Otro</asp:ListItem>
                                                                </asp:DropDownList>
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
                                                                <asp:DropDownList runat="server" required="" Enabled="false" ID="ddlSector_E" CssClass="form-control">
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
                                                                    <asp:ListItem>otro</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">País</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtPais" Enabled="false" CssClass="form-control " placeholder="País" required=""></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Municipio</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" ID="txtMunicipio" CssClass="form-control " Enabled="false" placeholder="Municipio" required=""></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Comuna</label>
                                                            <div class="col-lg-6">
                                                                <asp:DropDownList runat="server" required="" ID="ddlComuna" Enabled="false" CssClass="form-control">
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
                                                                    <asp:ListItem>11 Laureles Estadio</asp:ListItem>
                                                                    <asp:ListItem>12 La America</asp:ListItem>
                                                                    <asp:ListItem>13 San Javier</asp:ListItem>
                                                                    <asp:ListItem>14 Poblado</asp:ListItem>
                                                                    <asp:ListItem>15 Guayabal</asp:ListItem>
                                                                    <asp:ListItem>16 Belen</asp:ListItem>
                                                                    <asp:ListItem>50 Palmitas</asp:ListItem>
                                                                    <asp:ListItem>60 San Cristobal</asp:ListItem>
                                                                    <asp:ListItem>70 Altavista</asp:ListItem>
                                                                    <asp:ListItem>80 San Antonio De Prado</asp:ListItem>
                                                                    <asp:ListItem>90 Santa Elena</asp:ListItem>
                                                                    <asp:ListItem>Otro</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Direccion</label>
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
                                                                <asp:DropDownList runat="server" required="" Enabled="false" ID="ddlUniversidad" CssClass="form-control">
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
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6 control-label">Otro</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox ID="txtUniOtro" CssClass="form-control" Enabled="false" runat="server" placeholder="Universidad"></asp:TextBox>
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
                                                                <asp:TextBox runat="server" type="url" ID="txtpagweb" Enabled="false" CssClass="form-control" placeholder="Url"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Facebook</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" type="url" ID="txtface" Enabled="false" CssClass="form-control" placeholder="Url"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="#" class="col-md-6  control-label">Twitter</label>
                                                            <div class="col-lg-6">
                                                                <asp:TextBox runat="server" type="url" ID="txttwitter" Enabled="false" CssClass="form-control " placeholder="Url"></asp:TextBox>
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
                                                            <div class="col-md-4 col-md-offset-1 col-md-pull-1 ">
                                                                <div class="box">
                                                                    <div class="form-group">
                                                                        <div class="col-lg-12 text-justify">
                                                                            <asp:Label runat="server" ID="lblmensaje" CssClass="text-danger" Text=""></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7">
                                                                <div class="col-lg-4 ">
                                                                    <asp:Button ID="btnguardar" CssClass="btn btn-warning btn-lg" runat="server" OnClick="btnguardar_Click" Text="Guardar" />
                                                                </div>
                                                                <div class="col-lg-4">

                                                                    <input type="reset" class="btn btn-default btn-lg" value="Limpiar" />
                                                                </div>
                                                                <div class="span6">
                                                                    <a href="../Administrador/AdminEmpresa.aspx" class="btn btn-info">
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="container-fluid">
                                    <div class="col-md-12">
                                        <div class="span6 col-md-offset-8">
                                            <a href="../Administrador/AdminEmpresa.aspx" class="btn btn-info btn-lg">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>

    <!--datepicker-->
    <%--<script> Esto sirve para fecha actual en adelante ***************************************************************
        $('.datepicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '-3d'
        })
        
    </script>--%>
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
