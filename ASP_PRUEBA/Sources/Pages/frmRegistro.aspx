<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistro.aspx.cs" Inherits="ASP_PRUEBA.Sources.Pages.frmRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="../JavaScript/JavaScript.js"></script>
    <title>Registro de usuario</title>
</head>
<body>
    <form id="FrmRegistro" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center" >
                        <asp:Label runat="server" CssClass="row justify-content-center h3">Registro de usuarios</asp:Label>

                    </div>
                    <fieldset>
                         <legend class="row justify-content-center">Datos personales</legend>
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="from-control" runat="server" Text="Nombres"></asp:Label>
                            <asp:TextBox ID="tbNombres" CssClass="from-control" runat="server" placeholder="ej.juan"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="from-control" runat="server" Text="Apellidos"></asp:Label>
                            <asp:TextBox ID="tbApellidos" CssClass="from-control" runat="server" placeholder="ej.perez"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label3" CssClass="from-control" runat="server" Text="Fecha de Nacimineto"></asp:Label>
                            <asp:TextBox ID="tdFecha" CssClass="from-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                       <legend class="row justify-content-center">Datos de inicio de sesion</legend>
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="from-control" runat="server" Text="Usuario"></asp:Label>
                            <asp:TextBox ID="tbUsuario" CssClass="from-control" runat="server" placeholder="ej.juanito"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label5" CssClass="from-control" runat="server" Text="Clave"></asp:Label>
                            <asp:TextBox ID="tbClave" CssClass="from-control" runat="server" TextMode="password" placeholder="password"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="from-control" runat="server" Text="Repetir Usuario"></asp:Label>
                            <asp:TextBox ID="tbClave2" CssClass="from-control" runat="server" TextMode="password" placeholder="password"></asp:TextBox>
                        </div>
                        <br />
                         <div class="row justify-content-center">
                             <asp:Image runat="server" CssClass="img-thumbnail" Width="150" Height="150" ImageUrl="~/Sources/Images/no_user.png" />
                         </div>
                        <div class="row justify-content-center">
                            <asp:FileUpload runat="server" CssClass="small form-control" ID="FUImage" onchange="mostrarimagen(this)" />
                        </div>
                    </fieldset>
                    <br />
                    <asp:Label runat="server"  CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">
                     <asp:Button runat="server" CssClass="form-control btn btn-success" Text="Completar Registro" OnClick="Registro
                         " />
                        <hr />
                      <asp:Button runat="server" CssClass="form-control btn btn-warning" Text="Cancelar" OnClick="Cancelar"/>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
