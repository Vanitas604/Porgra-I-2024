<%@ Page Title="Formulario de Adopción" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Adopciones.aspx.vb" Inherits="WebApplication1.Adopciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        /* Aplicar el color de fondo a toda la página */
        body {
            background-color: #9addfc;
        }

        /* Estilo para centrar el formulario */
        .form-container {
            max-width: 600px;
            margin: 0 auto; /* Centrado horizontal */
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9; /* Fondo blanco para el formulario */
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        /* Centrado de los labels */
        .form-group label {
            display: block;
            text-align: left; /* Centrado del texto dentro de los label */
            margin-bottom: 5px;
        }

        /* Estilo para centrar los textboxes y dropdownlist */
        .form-group input,
        .form-group select {
            width: 80%; /* Ajustar el ancho de los campos */
            margin: 0 auto; /* Centrado horizontal */
            display: block;
            padding: 8px;
            box-sizing: border-box;
        }

        /* Estilo para el botón */
        .btn-submit {
            width: 80%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 auto; /* Centrado del botón */
            display: block;
        }

        .btn-submit:hover {
            background-color: #218838;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h2>Formulario de Adopción</h2>
        <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

        <div class="form-group">
            <label for="ddlMascotas">Mascota a Adoptar:</label>
            <asp:DropDownList ID="ddlMascotas" runat="server" CssClass="form-control">
                <asp:ListItem Text="Seleccione una mascota" Value="0" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvMascotas" runat="server" ControlToValidate="ddlMascotas"
                InitialValue="0" ErrorMessage="Por favor, seleccione una mascota." ForeColor="Red" />
        </div>

        <div class="form-group">
            <label for="txtNombre">Nombre del Adoptante:</label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                ErrorMessage="El nombre es obligatorio." ForeColor="Red" />
        </div>

        <div class="form-group">
            <label for="txtTelefono">Teléfono:</label>
            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono"
                ErrorMessage="El teléfono es obligatorio." ForeColor="Red" />
            <!-- Expresión regular actualizada con espacio después de los primeros dígitos -->
            <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono"
                ValidationExpression="^\+?[0-9]{1,4}(\s?[0-9]{1,4})?[0-9]{6,10}$" 
                ErrorMessage="Número de teléfono no válido." ForeColor="Red" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Correo Electrónico:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="El correo electrónico es obligatorio." ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Correo electrónico no válido." ForeColor="Red" />
        </div>

        <asp:Button ID="btnSubmit" runat="server" Text="Enviar Solicitud" CssClass="btn-submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>




