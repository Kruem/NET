<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="CeActiCapEmpreReveladas.aspx.cs" Inherits="testBancolombia.THumanoFrm.CeActiCapEmpreReveladas" %>

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
                    Actitudes y capacidades emprendedoras reveladas
               
                    <img src="../images/Actitudes-y-capacidades-emprendedoras-reveladas.png" class="" width="9%" />
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
                        <p class="text-justify label-control">1. Perfil motivacional de los emprendedores</p>
                    </h4>

                    <p class="text-justify col-md-12">
                        1.Si la mitad de los socios marco menos de 4 personas que aportaron en forma relevante al desarrollo del proyecto.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        2. Si al menos la mitad de los socios marcó entre 2 y 3 factores motivacionales como importantes o muy importantes.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        3. Si almenos la mitad de los socios marcó 4 ó más factores motivacionales como importantes o muy importantes.
                   
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp1" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">2.</p>
                    </h4>
                    <p class="text-justify col-md-12">
                        1. La mitad de los socios marcó factores motivacionales positivos – incisos a) a j) de la tabla 7 – como importantes o muy importantes
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        2. La mitad de los socios marcó factores motivacionales positivos – incisos a) a j) de la tabla 7 – como importantes o muy importantes.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        3. La mitad de los socios marcó factores motivacionales positivos – incisos a) a j) de la tabla 7 – como importantes o muy importantes.
                   
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp2" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">3. </p>
                    </h4>

                    <p class="text-justify col-md-12">
                        1. Si la mitad de los socios no se señaló la opción f) “Crear una empresa que crezca sostenidamente en
                         ventas y/o empleo” como un factor motivacional importante o muy importante.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        2. Si la mitad de los socios no se señaló la opción f) “Crear una empresa que crezca sostenidamente en
                         ventas y/o empleo” como un factor motivacional importante o muy importante.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        3. Si la mitad de los socios no se señaló la opción f) “Crear una empresa que crezca sostenidamente en 
                        ventas y/o empleo” como un factor motivacional importante o muy importante.
                   
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp3" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">4. </p>
                    </h4>

                    <p class="text-justify col-md-12">
                        1. Si la mitad de los socios no se señaló ninguna de las opciones de modelos de rol – k.1 a k.4 de la 
                        Tabla 7 como un factor motivacional importante o muy importante.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        2. Si la mitad de los socios no se señaló ninguna de las opciones de modelos de rol – k.1 a k.4 de la
                         Tabla 7 como un factor motivacional importante o muy importante.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        3. Si la mitad de los socios no se señaló ninguna de las opciones de modelos de rol – k.1 a k.4 de la 
                        Tabla 7 como un factor motivacional importante o muy importante.
                   
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp4" CssClass="form-control" runat="server">
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
                        <p class="text-justify label-control">5. Evaluación de las actitudes y competencias emprendedoras en general </p>
                    </h4>

                    <p class="text-justify col-md-12">
                        1. Si ninguno de los socios tiene un Puntaje Promedio Final de 8 o más.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        2. Si menos de la mitad de los socios tienen un Puntaje Promedio Final de 8 o más.
                   
                    </p>
                    <br />
                    <p class="text-justify col-md-12">
                        3. Si al menos la mitad de los socios tienen un Puntaje Promedio Final de 8 o más.
                   
                    </p>
                    <div class="input-group col-md-offset-1 col-md-2">
                        <asp:DropDownList ID="ddlp5" CssClass="form-control" runat="server">
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
                               <asp:Button ID="btnlimpiar" CssClass="btn btn-default btn-lg" runat="server" OnClick="btnlimpiar_Click" Text="Limpiar" />
                            </div>
                            <div class="span6">
                                  <a href="../MTHConfEstraEquipo.aspx" class="btn btn-info">
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
</asp:Content>
