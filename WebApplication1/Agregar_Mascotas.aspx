<%@ Page Title="Agregar Mascotas" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Agregar_Mascotas.aspx.vb" Inherits="WebApplication1.Agregar_Mascotas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        /* Aplicar el color de fondo a toda la página */
        body {
            background-color: #9addfc;
        }

        /* Estilo para centrar solo el formulario */
        .form-container {
            max-width: 600px;
            margin: 0 auto; /* Centrado horizontal */
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9; /* Mantener fondo blanco para el formulario */
        }

        .form-group {
            margin-bottom: 15px;
        }

        h2 {
            text-align: center; /* Centrar el título */
        }

        /* Estilo para centrar los labels */
        .form-group label {
            display: block;
            text-align: center; /* Centrado del texto dentro de los label */
        }

        /* Estilo para centrar los textboxes */
        .form-control {
            display: block;
            margin: 5px auto; /* Centrado de los TextBox */
            width: 80%; /* Ajustar el ancho de los textboxes */
        }

        /* Ajustes de espacio y diseño para el botón */
        .btn {
            width: auto;
            margin-top: 15px; /* Espaciado superior para el botón */
            display: block;
            margin-left: auto;
            margin-right: auto; /* Centrado horizontal del botón */
        }

        /* Asegurar que el botón esté centrado correctamente */
        .form-container .btn {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Contenedor del formulario que estará centrado -->
    <div class="form-container">
        <h2>Agregar Mascota</h2>
        <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Por favor corrige los siguientes errores:" />

        <div class="form-group">
            <label for="txtNombre">Nombre de la Mascota:</label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtEdad">Edad:</label>
            <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="La edad es obligatoria." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtEspecie">Especie:</label>
            <asp:TextBox ID="txtEspecie" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEspecie" runat="server" ControlToValidate="txtEspecie" ErrorMessage="La especie es obligatoria." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtRaza">Raza:</label>
            <asp:TextBox ID="txtRaza" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvRaza" runat="server" ControlToValidate="txtRaza" ErrorMessage="La raza es obligatoria." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtDescripcion">Descripción:</label>
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción es obligatoria." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtImagenUrl">URL de la Imagen:</label>
            <asp:TextBox ID="txtImagenUrl" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revImagenUrl" runat="server" ControlToValidate="txtImagenUrl" ValidationExpression="^(https?|ftp)://[^\s/$.?#].[^\s]*$" ErrorMessage="Por favor ingrese una URL válida." ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>

        <asp:Button ID="btnAgregar" runat="server" Text="Agregar Mascota" CssClass="btn btn-primary" OnClick="btnAgregar_Click" CausesValidation="True" />
    </div>
</asp:Content>










