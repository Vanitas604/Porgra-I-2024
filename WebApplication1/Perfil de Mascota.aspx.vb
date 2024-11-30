Imports System.Data
Imports System.Data.SqlClient

Public Class PerfilMascota
    Inherits System.Web.UI.Page

    ' Este método se ejecuta al cargar la página
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim mascotaId As Integer
            ' Verifica si el ID de la mascota está presente en la URL y es válido
            If Integer.TryParse(Request.QueryString("id"), mascotaId) Then
                CargarPerfilMascota(mascotaId)
            Else
                ' Redirige a la página principal si el ID no es válido
                Response.Redirect("Mascotas.aspx")
            End If
        End If
    End Sub
    'Función para cargar los detalles de la mascota desde la base de datos
    Private Sub CargarPerfilMascota(mascotaId As Integer)
        ' Conexión a la base de datos
        Using conn As New SqlConnection("your_connection_string")
            Try
                ' Consulta SQL para obtener los detalles de la mascota
                Dim cmd As New SqlCommand("SELECT Nombre, DescripcionCompleta, Edad, Raza, Tamanio, ImagenUrl FROM Mascotas WHERE Id = @Id", conn)
                cmd.Parameters.AddWithValue("@Id", mascotaId)
                conn.Open()

                ' Ejecuta la consulta y obtiene los datos de la mascota
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.Read() Then
                    Dim lblNombre As Object = Nothing
                    ' Asigna los datos a los controles en la página ASPX
                    lblNombre.Text = reader("Nombre").ToString()
                    Dim lblDescripcion As Object = Nothing
                    lblDescripcion.Text = reader("DescripcionCompleta").ToString()
                    Dim lblEdad As Object = Nothing
                    lblEdad.Text = reader("Edad").ToString() & " años"
                    Dim lblRaza As Object = Nothing
                    lblRaza.Text = reader("Raza").ToString()
                    Dim lblTamaño As Object = Nothing
                    lblTamaño.Text = reader("Tamaño").ToString()
                    Dim imgMascota As Object = Nothing
                    imgMascota.ImageUrl = reader("ImagenUrl").ToString()
                Else
                    ' Redirige a la página principal si no se encuentra la mascota
                    Response.Redirect("Mascotas.aspx")
                End If
            Catch ex As Exception
                ' Manejo de errores: aquí puedes registrar el error o mostrar un mensaje
                Response.Write("Error al cargar el perfil de la mascota: " & ex.Message)
            End Try
        End Using
    End Sub
End Class