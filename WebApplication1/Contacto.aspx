<%@ Page Title="Información de Contacto" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.vb" Inherits="WebApplication1.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style>
        /* Estilos generales para la página */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #9addfc; /* Fondo color #9addfc */
            margin: 0;
            padding: 0;
            color: #333;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Hace que el body ocupe toda la altura de la ventana */
        }

        /* Estilo para el contenedor de la tarjeta de contacto */
        .content-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-grow: 1; /* Hace que el contenedor de contenido crezca y ocupe el espacio disponible */
            padding-top: 30px; /* Reducción del espacio superior para acercar la tarjeta */
        }

        /* Estilo para la tarjeta de contacto */
        .card {
            width: 100%;
            max-width: 600px; /* Aumento del ancho máximo de la tarjeta */
            background-color: #9addfc;  /* Fondo color #9addfc */
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Mantengo la sombra */
            padding: 20px;  /* Aumento del padding para mejorar la distribución interna */
            margin: 20px;
            transition: transform 0.3s ease;
            animation: fadeIn 0.5s;
            text-align: center;
            max-height: none; /* Sin limitación de altura */
        }

        .card:hover {
            transform: scale(1.05);
        }

        h1 {
            color: #4A90E2;
            margin-bottom: 20px; /* Aumento del margen debajo del título */
            font-size: 28px; /* Tamaño de fuente ajustado */
        }

        .contact-info, .contact-title {
            font-size: 18px; /* Aumento del tamaño de la fuente */
            color: #333;
            margin: 10px 0; /* Aumento del margen entre los elementos */
            font-weight: bold;
            text-align: center;
        }

        .contact-title {
            font-size: 22px; /* Tamaño de fuente del título aumentado */
            margin-top: 10px; /* Aumento del margen superior */
        }

        /* Animación de aparición */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Evitar márgenes no deseados */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-container">
        <div class="card">
            <h1>Información de Contacto</h1>
            <p class="contact-title">Número de Teléfono Fijo:</p>
            <p class="contact-info">2222 4567</p>

            <p class="contact-title">Número Móvil:</p>
            <p class="contact-info">1246 5734</p>

            <p class="contact-title">Redes Sociales:</p>
            <p class="contact-info">TikTok: Adop_amigo503</p>
            <p class="contact-info">Facebook: Adopta Un amigo SV</p>

            <p class="contact-title">Dirección:</p>
            <p class="contact-info">4 av Sur casa #30 junto valle de las tortas</p>

            <p class="contact-title">Correo Electrónico:</p>
            <p class="contact-info">adopmigo503@gmail.com</p>
        </div>
    </div>
</asp:Content>


