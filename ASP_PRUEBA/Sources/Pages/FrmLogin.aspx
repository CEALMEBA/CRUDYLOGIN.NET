<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="ASP_PRUEBA.Sources.Pages.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Inicio de sesion</title>
</head>
<body>
    <form id="FormLogin" runat="server" class="container d-flex justify-content-center align-items-lg-center" >
        <div class="col-5">
             <div class="modal-title align-content-center h3">
            <div class="form-control card card-body align-items-center h3">
                <asp:Label runat="server" Text="Inicio de sesion" Font-Size="Large"></asp:Label>
               

                </div>
            </div>
            <br />
            <div class="input-group">
                <asp:TextBox runat="server" CssClass="form-control" placeholder="User" ID="tbUsuario"></asp:TextBox>
            </div>
            <br />
             <div class="input-group">
                <asp:TextBox runat="server" CssClass="form-control" placeholder="Password" ID="tbClave"></asp:TextBox>
            </div>
            <br />
             <div class="input-group">
                <asp:Button runat="server" CssClass="form-control btn btn-dark" Text="LOG IN" OnClick="Iniciar" ></asp:Button>
            </div>
            <br />
            <br />
            <div>
               <asp:Label runat="server" ID="lblError" CssClass="alert-danger"></asp:Label>
            </div>
            <br />
              <asp:Label runat="server" Text="¿No tienes una cuenta?, crea una"></asp:Label>
               <asp:LinkButton runat="server" Text="aqui" OnClick="Registrarse"></asp:LinkButton>
        </div>
       
    </form>
</body>
</html>
