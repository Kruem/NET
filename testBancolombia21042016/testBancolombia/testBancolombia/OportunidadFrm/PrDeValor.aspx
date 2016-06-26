<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="PrDeValor.aspx.cs" Inherits="testBancolombia.OportunidadFrm.PrDeValor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
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
                    Propuesta de Valor
               
                    <img src="../images/Propuesta-de-valor.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. ¿ Tiene identificada la misión de su empresa ?</p>
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
                        <p class="text-justify label-control">2. ¿Tiene definido indicadores para el cumplimiento de la misión?</p>
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
                        <p class="text-justify label-control">3. ¿ Tiene un cronograma de actividades para que su empresa cumpla su misión ? </p>
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
                        <p class="text-justify label-control">4. ¿ Tiene identificada la visión de su empresa ?</p>
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
                        <p class="text-justify label-control">5. ¿ Tiene definidos los indicadores para el cumplimiento de la visión? </p>
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
                        <p class="text-justify label-control">6. ¿ Tiene identificadas las políticas empresariales ?  </p>
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
                        <p class="text-justify label-control">7. ¿ Tiene identificados los objetivos empresariales ?  </p>
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
                        <p class="text-justify label-control">8. ¿ Tiene definido el mapa de procesos de la empresa ?  </p>
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
                        <p class="text-justify label-control">9. ¿ Tiene la empresa indicadores de gestión de sus procesos ?  </p>
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
                        <p class="text-justify label-control">10. ¿ Tiene definida la cadena de valor de la empresa ? </p>
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
                        <p class="text-justify label-control">11. ¿ Tiene identificadas las variables que más afectan su modelo de negocio ( políticas económicas, sociales, tecnológicas, culturales, legales, ecológicas, etc )?  </p>
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
                        <p class="text-justify label-control">12. ¿Tiene identificado el problema o la necesidad insatisfecha que intenta resolver con su propuesta de valor?  </p>
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
                        <p class="text-justify label-control">13. ¿Tiene identificada la propuesta de valor para entregar a sus clientes?  </p>
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
                        <p class="text-justify label-control">14. ¿Ha identificado y gestionado la empresa los recursos físicos claves que requiere para el cumplimiento de la propuesta de valor?  </p>
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
                <hr />
                <div class="row">
                    <h4>
                        <p class="text-justify label-control">15. ¿ La empresa conoce cuáles son los recursos técnicos y tecnológicos claves que requiere para el cumplimiento de la propuesta de valor ?   </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">16. ¿ Tiene identificada la propuesta de valor para cada segmento de mercado? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">17. ¿Ha validado su propuesta de valor con los clientes actuales? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">18. ¿ La empresa ha realizado algún tipo de validación comercial del producto o servicio? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">19. ¿Identifican y analizan la presencia de productos sustitutos cercanos y su influencia sobre el mercado al cual apunta la empresa? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
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
                        <p class="text-justify label-control">20. ¿ Conoce a profundidad quién es su competencia? </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp20" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">21. ¿ Tiene identicado cómo se diferencia de su competencia ?  </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp21" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">22. ¿ La empresa tiene empaquetado el producto o servicio que ofrece a sus clientes ( imagen corporativa, definición de caraterísticas, beneficios, servicio post-ventas, garantías, etc )  </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp22" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">23.¿ Tiene identificado los productos y servicios que quiere entregar a sus clientes ?   </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp23" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">24. ¿ Tiene identificado cuáles son los productos y/o servicios que más le aportan en ventas a la organización ?  </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp24" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">25. ¿ Tiene identificado cuáles son los productos y/o servicios que la empresa quiere producir o comercializar en el mercado ?   </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp25" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">26. ¿Tiene identificadas las barreras de entrada al mercado?   </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp26" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">27. ¿La empresa ha generado barreras de entrada para evitar competencia en el mercado?   </p>
                    </h4>
                    <div class="input-group col-md-offset-1 col-md-3">
                        <asp:DropDownList ID="ddlp27" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">28. ¿ Cuántos productos o servicios tiene la empresa ?  </p>
                    </h4>
                    <p class="text-justify col-md-offset-1 col-md-3">
                        <asp:TextBox runat="server" ID="txtpe28" CssClass="form-control" required="" TextMode="Number"></asp:TextBox>
                    </p>

                </div>
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
                                                                                            } else {
                                                                                                $id = $('#' + '<%= ddlp20.ClientID %>');
                                                                                                $vlr = $('#' + '<%= ddlp20.ClientID %>').val();

                                                                                                if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                    alert('Debe elegir un valor en la pregunta 10.');
                                                                                                    $id.focus();
                                                                                                    return false;
                                                                                                } else {
                                                                                                    $id = $('#' + '<%= ddlp21.ClientID %>');
                                                                                                    $vlr = $('#' + '<%= ddlp21.ClientID %>').val();

                                                                                                    if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                        alert('Debe elegir un valor en la pregunta 10.');
                                                                                                        $id.focus();
                                                                                                        return false;
                                                                                                    } else {
                                                                                                        $id = $('#' + '<%= ddlp22.ClientID %>');
                                                                                                        $vlr = $('#' + '<%= ddlp22.ClientID %>').val();

                                                                                                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                            alert('Debe elegir un valor en la pregunta 10.');
                                                                                                            $id.focus();
                                                                                                            return false;
                                                                                                        } else {
                                                                                                            $id = $('#' + '<%= ddlp23.ClientID %>');
                                                                                                            $vlr = $('#' + '<%= ddlp23.ClientID %>').val();

                                                                                                            if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                                alert('Debe elegir un valor en la pregunta 10.');
                                                                                                                $id.focus();
                                                                                                                return false;
                                                                                                            } else {
                                                                                                                $id = $('#' + '<%= ddlp24.ClientID %>');
                                                                                                                $vlr = $('#' + '<%= ddlp24.ClientID %>').val();

                                                                                                                if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                                    alert('Debe elegir un valor en la pregunta 10.');
                                                                                                                    $id.focus();
                                                                                                                    return false;
                                                                                                                } else {
                                                                                                                    $id = $('#' + '<%= ddlp25.ClientID %>');
                                                                                                                    $vlr = $('#' + '<%= ddlp25.ClientID %>').val();

                                                                                                                    if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                                        alert('Debe elegir un valor en la pregunta 10.');
                                                                                                                        $id.focus();
                                                                                                                        return false;
                                                                                                                    } else {
                                                                                                                        $id = $('#' + '<%= ddlp25.ClientID %>');
                                                                                                                        $vlr = $('#' + '<%= ddlp26.ClientID %>').val();

                                                                                                                        if (($vlr === null) || ($vlr === 'Seleccione')) {
                                                                                                                            alert('Debe elegir un valor en la pregunta 10.');
                                                                                                                            $id.focus();
                                                                                                                            return false;
                                                                                                                        } else {
                                                                                                                            $id = $('#' + '<%= ddlp27.ClientID %>');
                                                                                                                            $vlr = $('#' + '<%= ddlp27.ClientID %>').val();

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
