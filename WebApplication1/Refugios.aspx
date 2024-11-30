<%@ Page Title="Refugios Relacionados" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Refugios.aspx.vb" Inherits="WebApplication1.Refugios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
<style>
    /* Estilos generales para la página */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #9addfc;
        margin: 0;
        padding: 0;
        color: #333;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    /* Contenedor de contenido */
    .content-container {
        display: flex;
        justify-content: center;
        align-items: flex-start;
        flex-wrap: wrap;
        padding-top: 30px;
    }

    /* Tarjeta de refugio */
    .card {
        width: 90%;
        max-width: 400px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        padding: 20px;
        margin: 10px;
        transition: transform 0.3s ease;
        animation: fadeIn 0.5s;
        text-align: center;
    }

    .card:hover {
        transform: scale(1.05);
    }

    h1 {
        color: #4A90E2;
        margin-bottom: 20px;
        font-size: 28px;
    }

    .refugio-info {
        font-size: 18px;
        color: #333;
        margin: 10px 0;
        font-weight: bold;
        text-align: center;
    }

    .refugio-title {
        font-size: 20px;
        margin-top: 10px;
        color: #4A90E2; /* Color celeste para los títulos */
    }

    .social-title {
        font-size: 18px;
        color: #4A90E2; /* Color celeste para las redes sociales */
        margin-top: 5px;
        text-align: center;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="content-container">
    <!-- Tarjeta 1 -->
    <div class="card">
        <p class="refugio-title">Nombre del Refugio:</p>
        <p class="refugio-info">Refugio Nuestros Amigos</p>

        <p class="refugio-title">Ubicación:</p>
        <p class="refugio-info">Refugio Huellitas Felices,Santa Maria,Usulutan</p>

        <p class="refugio-title">Teléfono:</p>
        <p class="refugio-info">+503 2344-5789</p>

        <p class="refugio-title">Redes Sociales:</p>
        <p class="social-title">WhatsApp:</p>
        <p class="refugio-info">+503 4658-9432</p>
        <p class="social-title">Facebook:</p>
        <p class="refugio-info">RefugioHuellitasFelices503</p>
        <p class="social-title">TikTok:</p>
        <p class="refugio-info">@Ref_Huellitas503</p>
    </div>

    <!-- Tarjeta 2 -->
    <div class="card">
        <p class="refugio-title">Nombre del Refugio:</p>
        <p class="refugio-info">Refugio Amigos Fieles</p>

        <p class="refugio-title">Ubicación:</p>
        <p class="refugio-info">27 Calle Pte. #211, San Salvador</p>

        <p class="refugio-title">Teléfono:</p>
        <p class="refugio-info">+503 9876-2321</p>

        <p class="refugio-title">Redes Sociales:</p>
        <p class="social-title">WhatsApp:</p>
        <p class="refugio-info">+503 9876-5431</p>
        <p class="social-title">Facebook:</p>
        <p class="refugio-info">Amigos Fieles SS</p>
        <p class="social-title">TikTok:</p>
        <p class="refugio-info">@Amigos_Fieles503</p>
    </div>

    <!-- Tarjeta 3 -->
    <div class="card">
        <p class="refugio-title">Nombre del Refugio:</p>
        <p class="refugio-info">Refugio Arca del Amor</p>

        <p class="refugio-title">Ubicación:</p>
        <p class="refugio-info">Ciudad de Ahuachapán, 4 av Norte, junto a Pasteleria Lorena</p>

        <p class="refugio-title">Teléfono:</p>
        <p class="refugio-info">+503 4567-8923</p>

        <p class="refugio-title">Redes Sociales:</p>
        <p class="social-title">WhatsApp:</p>
        <p class="refugio-info">+503 4567-8913</p>
        <p class="social-title">Facebook:</p>
        <p class="refugio-info">Ref_ArcaAmor</p>
        <p class="social-title">TikTok:</p>
        <p class="refugio-info">@Refugio_Arca503</p>
    </div>
</div>
</asp:Content>
