Imports System
Imports System.Web.UI

Public Class Refugios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ' No es necesario cargar datos de la base de datos, ya que los datos son estáticos en la página
        ' Solo se necesita para inicializar si en algún momento quieres agregar lógica adicional

        If Not IsPostBack Then
            ' Aquí podrías agregar cualquier lógica adicional si lo necesitas
        End If
    End Sub
End Class