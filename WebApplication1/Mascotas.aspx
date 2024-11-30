<%@ Page Title="Mascotas Disponibles" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mascotas.aspx.vb" Inherits="WebApplication1.Mascotas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        /* Estilo para el contenedor de las mascotas */
        .mascota-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px 0;
        }

        .mascota-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 15px;
            margin: 10px;
            width: 250px;
            text-align: center;
            background-color: white; /* Fondo blanco para la tarjeta */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Sombra para un efecto más elegante */
        }

        .mascota-card img {
            max-width: 100%;
            border-radius: 8px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lista de Mascotas Disponibles</h2>
    <div class="mascota-container">
        <asp:Repeater ID="repeaterMascotas" runat="server">
            <ItemTemplate>
                <div class="mascota-card">
                    <img src='<%# Eval("ImagenUrl") %>' alt='<%# Eval("Nombre") %>' />
                    <h3><%# Eval("Nombre") %></h3>
                    <p><strong>Edad:</strong> <%# Eval("Edad") %></p>
                    <p><strong>Raza:</strong> <%# Eval("Raza") %></p>
                    <p><strong>Especie:</strong> <%# Eval("Especie") %></p>  <!-- Aquí agregamos Especie -->
                    <p><strong>Descripción:</strong> <%# Eval("Descripcion") %></p>
                    <asp:HyperLink runat="server" NavigateUrl='<%# "Adopciones.aspx?MascotaID=" & Eval("MascotaID") %>' Text="Adoptar" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>


