<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Importancia_amigo.aspx.vb" Inherits="WebApplication1.Importancia_amigo" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #9addfc;
            margin: 0;
            padding: 20px;
            color: #333;
            text-align: center;
        }

        h1 {
            color: #4A90E2;
            margin-bottom: 20px;
            animation: fadeIn 1s;
        }

        h2 {
            color: #2E8B57;
            margin-top: 20px;
            margin-bottom: 10px;
            animation: slideIn 1s;
        }

        p {
            font-size: 16px;
            line-height: 1.6;
            max-width: 800px;
            margin: 10px auto;
        }

        .container {
            background: #fff8e1;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            padding: 20px;
            display: inline-block;
            width: 80%;
            max-width: 900px;
            margin-top: 20px;
            animation: zoomIn 1s;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(-20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes zoomIn {
            from { transform: scale(0.95); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }
    </style>

    <div class="container">
        <h1>Beneficios de tener una mascota</h1>
        <p>Las mascotas ofrecen una compañía invaluable. Tener un animal de compañía puede ayudar a reducir la sensación de soledad y proporcionar apoyo emocional.</p>
        
        <h2>1. Compañía y amor incondicional</h2>
        <p>Las mascotas son excelentes compañeros. Su amor incondicional y lealtad pueden mejorar tu estado de ánimo y bienestar general.</p>
        
        <h2>2. Estilo de vida activo</h2>
        <p>Las mascotas, especialmente los perros, requieren ejercicio regular. Esto puede motivarte a llevar un estilo de vida más activo y saludable.</p>
        
        <h2>3. Reducción del estrés</h2>
        <p>Interactuar con mascotas ha demostrado reducir los niveles de estrés y ansiedad. Pasar tiempo con tu mascota puede ser una forma efectiva de relajarte.</p>
        
        <h2>4. Enseñanza de responsabilidad</h2>
        <p>Cuidar de una mascota enseña responsabilidad y compromiso. Estas son lecciones valiosas, especialmente para los niños.</p>
        
        <h2>5. Beneficios para la salud</h2>
        <p>Estudios han demostrado que tener mascotas puede reducir el riesgo de enfermedades cardíacas, disminuir la presión arterial y aumentar la felicidad general.</p>

        <h2>6. Mejora de la socialización</h2>
        <p>Las mascotas pueden facilitar la interacción social. Sacar a pasear a un perro, por ejemplo, puede llevarte a conocer a otras personas y hacer nuevos amigos.</p>
    </div>
</asp:Content>

