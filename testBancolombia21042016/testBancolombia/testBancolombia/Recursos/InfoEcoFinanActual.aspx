<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="InfoEcoFinanActual.aspx.cs" Inherits="testBancolombia.Recursos.InfoEcoFinanActual" %>

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
                    Información económica y financiera actual
                <img src="../images/Información-económica-y-financiera-actual.png" class="" width="9%" />
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
                        <p class="text-justify label-control">
                            1. ¿ Tienen identificadas las actividades 
                            claves para el manejo y control de flujo de los ingresos ?
                        </p>
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
                        <p class="text-justify label-control">
                            2. ¿La empresa  ha identificado y gestionado  los recursos 
                            financieros claves que requiere para el cumplimiento de su propuesta de valor?
                        </p>
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
                        <p class="text-justify label-control">3. ¿Saben a qué plazos pagan sus clientes por sus productos o servicios? </p>
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
                        <p class="text-justify label-control">4. ¿La empresa tiene definida la estructura de los costos fijos?</p>
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
                        <p class="text-justify label-control">5. ¿La empresa tiene definida la estructura de los costos variables?</p>
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
                        <p class="text-justify label-control">
                            6. ¿El nivel de ventas que se propone 
                            alcanzar la empresa es significativo y creíble?
                        </p>
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
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            7. ¿Tiene identificada cuál es la rentabilidad de los productos o servicios que venden a sus clientes?
                        </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">8. ¿ Ha realizado análisis del punto de equilibrio ? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">9. ¿La empresa cuenta con presupuesto estructurado?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">10. ¿La empresa tiene la contabilidad al día?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">11. ¿Tiene identificado los % de ingresos por líneas o productos?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">12. ¿La empresa cuenta con proyecciones financieras?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">13. ¿Tiene proyección de ventas a nivel internacional?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">14. ¿La empresa cuenta con indicadores financieros para la toma de decisiones?</p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp14" CssClass="form-control" runat="server">
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
                                    <p>Descripción de la inversión inicial y fuentes de financiamiento</p>
                                </small></small>
                            </h2>
                        </div>
                    </div>

                </div>
                <br />
                <!--mensaje fin-->

                <div class="row">
                    <h4>
                        <p class="text-justify label-control">15. Hay una relación adecuada entre la inversión requerida por el proyecto y la estrategia de financiamiento</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No se cuantifica la inversión necesaria para iniciar la 
                        actividad / No se expresan fuentes de financiamiento que permitirán el desarrollo del proyecto
                    </p>
                    <p class="text-justify col-md-12">
                        2. La inversión necesaria para iniciar la actividad se cuantifica correctamente.
                         Se identifican las fuentes de financiamiento que potencialmente podrían 
                        utilizarse para el desarrollo del proyecto aunque no se ha avanzado en conseguir los recursos.

                    </p>
                    <p class="text-justify col-md-12">
                        3. La inversión necesaria para iniciar la actividad se cuantifica correctamente.
                         Se identifican las fuentes de financiamiento que se utilizarán para el desarrollo 
                        del proyecto y se han realizado acciones para su obtención, incluyéndose dentro de ellas algunas fuentes externas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp15" CssClass="form-control" runat="server">
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
                            16. Se ha avanzado en la obtención de financiamiento – aunque sea parcialmente – para su puesta en marcha
                        </p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No se cuantifica la inversión necesaria para iniciar la 
                        actividad / No se expresan fuentes de financiamiento que permitirán el desarrollo del proyecto
                    </p>
                    <p class="text-justify col-md-12">
                        2. La inversión necesaria para iniciar la actividad se cuantifica correctamente.
                         Se identifican las fuentes de financiamiento que potencialmente podrían 
                        utilizarse para el desarrollo del proyecto aunque no se ha avanzado en conseguir los recursos.

                    </p>
                    <p class="text-justify col-md-12">
                        3. La inversión necesaria para iniciar la actividad se cuantifica correctamente.
                         Se identifican las fuentes de financiamiento que se utilizarán para el desarrollo 
                        del proyecto y se han realizado acciones para su obtención, incluyéndose dentro de ellas algunas fuentes externas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp16" CssClass="form-control" runat="server">
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
                            17. Se incluyen fuentes de financiamiento externas o alternativas como adelanto de clientes y/o cuenta corriente con proveedores
                        </p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. No se cuantifica la inversión necesaria para iniciar la 
                        actividad / No se expresan fuentes de financiamiento que permitirán el desarrollo del proyecto
                    </p>
                    <p class="text-justify col-md-12">
                        2. La inversión necesaria para iniciar la actividad se cuantifica correctamente.
                         Se identifican las fuentes de financiamiento que potencialmente podrían 
                        utilizarse para el desarrollo del proyecto aunque no se ha avanzado en conseguir los recursos.

                    </p>
                    <p class="text-justify col-md-12">
                        3. La inversión necesaria para iniciar la actividad se cuantifica correctamente.
                         Se identifican las fuentes de financiamiento que se utilizarán para el desarrollo 
                        del proyecto y se han realizado acciones para su obtención, incluyéndose dentro de ellas algunas fuentes externas.
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp17" CssClass="form-control" runat="server">
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
                            ¿Cuál es el monto actual del capital del trabajo con el que cuenta la empresa?
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp18" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Patrimonio actual de la empresa
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp19" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Activos totales
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp20" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Pasivos totales
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp21" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Margen operacional
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp22" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Margen EBITDA
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp23" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Valor en $ promedio de ventas mensuales
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp24" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Número de empleados directos
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp25" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Valor promedio mensual pagado como salario a los empleados directos
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp26" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                        Número de empleados indirectos
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp27" CssClass="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">
                            Valor promedio mensual pagado como salario a los empleados indirectos
                        </p>
                    </h4>
                    <div class="col-md-4 text-justify">
                        <asp:TextBox runat="server" ID="txtp28" CssClass="form-control" />
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
