<%@ Page Title="" Language="C#" MasterPageFile="~/master/LoginNoNav.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="testBancolombia.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/btn.css" />
    <link href="css/lightbox.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="images/logope.png" />
            <p id="profile-name" class="profile-name-card">
                <asp:Label ID="lblmensaje" CssClass="text-danger" runat="server" Text=""></asp:Label>
            </p>
            <br />
            <form class="form-signin" runat="server">
                <span id="reauth-email" class="reauth-email"></span>
                <asp:TextBox runat="server" ID="inputEmail" CssClass="form-control" placeholder="Usuario" required="" autofocus=""></asp:TextBox>
                <asp:TextBox runat="server" ID="inputPassword" CssClass="form-control" placeholder="Password" required="" TextMode="Password"></asp:TextBox>
                <div>
                    <hr /> 
                </div>
                <asp:Button runat="server" ID="btnlogin" Text="Ingrese" CssClass="btn btn-warning" OnClick="btnlogin_Click"/>
            </form>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/lightbox.min.js"></script>

</asp:Content>
