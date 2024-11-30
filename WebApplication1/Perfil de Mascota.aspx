<%@ Page Title="Perfil de Mascota" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="PerfilMascota.aspx.vb" Inherits="WebApplication1.PerfilMascota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src='<%# Eval("ImagenUrl") %>' class="img-fluid" alt="Imagen de <%# Eval("Nombre") %>" />
            </div>
            <div class="col-md-6">
                <h2><%# Eval("Nombre") %></h2>
                <p><%# Eval("DescripcionCompleta") %></p>
                <p><strong>Edad:</strong> <%# Eval("Edad") %> años</p>
                <p><strong>Raza:</strong> <%# Eval("Raza") %></p>
                <p><strong>Tamaño:</strong> <%# Eval("Tamaño") %></p>
                <a href="Adopciones.aspx?mascotaId=<%# Eval("Id") %>" class="btn btn-primary">Adoptar</a>
            </div>
        </div>
    </div>
</asp:Content>