<%@ Page Title="Adopta un Amigo" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">BIENVENIDOS ADOPTA A UN AMIGO</h1>
            <p class="lead">
                Bienvenido a nuestra plataforma de adopción de mascotas. Aquí podrás encontrar a tu compañero ideal. 
                Esta página es para ayudar a mascotas que no tienen un hogar, nos gustaría encontrar familias que buscan un miembro más y también ayudarles a las mascotas a encontrar un hogar acogedor.
            </p>
        </section>

        <div class="row">
            <!-- Sección de Mascotas -->
            <section class="col-md-4" aria-labelledby="mascotasTitle">
                <h2 id="mascotasTitle">Mascotas Disponibles</h2>
                <p>
                    Explora las mascotas que están esperando por un hogar. Tenemos perros, gatos y más, ¡listos para ser adoptados!
                </p>
                <p>
                    <a class="btn btn-default" href="Mascotas.aspx">Explorar Mascotas &raquo;</a>
                </p>
            </section>

            <!-- Sección de Formulario de Adopción -->
            <section class="col-md-4" aria-labelledby="adopcionTitle">
                <h2 id="adopcionTitle">Formulario de Adopción</h2>
                <p>
                    Completa nuestro formulario para iniciar el proceso de adopción y dar una nueva oportunidad a una mascota.
                </p>
                <p>
                    <a class="btn btn-default" href="Adopciones.aspx">Llenar Formulario &raquo;</a>
                </p>
            </section>

            <!-- Sección de Importancia de un Amigo -->
            <section class="col-md-4" aria-labelledby="importanciaTitle">
                <h2 id="importanciaTitle">La Importancia de un Amigo</h2>
                <p>
                    Descubre los beneficios de tener una mascota en tu vida y cómo pueden mejorar tu bienestar y felicidad.
                </p>
                <p>
                    <a class="btn btn-default" href="Importancia_amigo.aspx">Saber Más &raquo;</a>
                </p>
            </section>
        </div>

        <div class="row mt-4">
           
            <!-- Sección de Refugios -->
        <section class="col-md-12" aria-labelledby="RefugioTitle">
            <h2 id="RefugioTitle">Refugios Relacionados</h2>
            <p>
                ¿Quieres conocer más sobre nuestros refugios o el proceso de adopción? ¡Estamos aquí para ayudarte!
            </p>
            <p>
                <a class="btn btn-default" href="Refugios.aspx">Visítanos &raquo;</a>
            </p>
        </section> 
            
           <!-- Sección de Contactos -->
            <section class="col-md-12" aria-labelledby="contactoTitle">
                <h2 id="contactoTitle">Contacto</h2>
                <p>
                    ¿Tienes preguntas o necesitas ayuda? Contáctanos para más información sobre adopciones.
                </p>
                <p>
                    <a class="btn btn-default" href="Contacto.aspx">Contáctanos &raquo;</a>
                </p>
            </section>

    </div>
</main>
</asp:Content>

