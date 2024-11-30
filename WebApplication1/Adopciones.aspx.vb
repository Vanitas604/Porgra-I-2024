Imports System.Data.SqlClient

Public Class Adopciones
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Llenar el DropDownList con las mascotas disponibles
            LlenarMascotas()
        End If
    End Sub

    ' Método para llenar el DropDownList con las mascotas disponibles
    Private Sub LlenarMascotas()
        ' Crear la conexión a la base de datos
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("TuConexion").ConnectionString)
        Dim cmd As New SqlCommand("SELECT MascotaID, Nombre FROM Mascotas", conn)

        Try
            conn.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()

            ddlMascotas.DataSource = reader
            ddlMascotas.DataTextField = "Nombre"
            ddlMascotas.DataValueField = "MascotaID"
            ddlMascotas.DataBind()

            ' Agregar un item predeterminado
            ddlMascotas.Items.Insert(0, New ListItem("Seleccione una mascota", "0"))
        Catch ex As Exception
            lblMensaje.Text = "Error al cargar las mascotas: " & ex.Message
            lblMensaje.ForeColor = System.Drawing.Color.Red
        Finally
            conn.Close()
        End Try
    End Sub

    ' Método para manejar el clic del botón de enviar
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        ' Verificar si la página es válida
        If Page.IsValid Then
            ' Obtener los valores de los campos del formulario
            Dim nombreAdoptante As String = txtNombre.Text.Trim()
            Dim telefono As String = txtTelefono.Text.Trim()
            Dim email As String = txtEmail.Text.Trim()
            Dim mascotaID As Integer = Convert.ToInt32(ddlMascotas.SelectedValue)
            Dim fechaSolicitud As DateTime = DateTime.Now ' Fecha actual

            ' Validar campos
            If String.IsNullOrEmpty(nombreAdoptante) Then
                lblMensaje.Text = "El nombre del adoptante es obligatorio."
                lblMensaje.ForeColor = System.Drawing.Color.Red
                Return
            End If

            If String.IsNullOrEmpty(telefono) OrElse Not IsNumeric(telefono.Replace(" ", "")) Then
                lblMensaje.Text = "El teléfono debe ser un número válido (incluyendo el código de país)."
                lblMensaje.ForeColor = System.Drawing.Color.Red
                Return
            End If

            If String.IsNullOrEmpty(email) OrElse Not email.Contains("@") Then
                lblMensaje.Text = "El correo electrónico no es válido."
                lblMensaje.ForeColor = System.Drawing.Color.Red
                Return
            End If

            If mascotaID = 0 Then
                lblMensaje.Text = "Debe seleccionar una mascota."
                lblMensaje.ForeColor = System.Drawing.Color.Red
                Return
            End If

            ' Crear la conexión a la base de datos
            Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("TuConexion").ConnectionString)
            Dim cmd As New SqlCommand("INSERT INTO Adopciones (MascotaID, NombreAdoptante, TelefonoAdoptante, EmailAdoptante, FechaSolicitud) " &
                                      "VALUES (@MascotaID, @Nombre, @Telefono, @Email, @FechaSolicitud)", conn)

            ' Añadir los parámetros a la consulta SQL
            cmd.Parameters.AddWithValue("@MascotaID", mascotaID)
            cmd.Parameters.AddWithValue("@Nombre", nombreAdoptante)
            cmd.Parameters.AddWithValue("@Telefono", telefono)
            cmd.Parameters.AddWithValue("@Email", email)
            cmd.Parameters.AddWithValue("@FechaSolicitud", fechaSolicitud)

            Try
                ' Abrir la conexión y ejecutar la consulta
                conn.Open()
                cmd.ExecuteNonQuery()
                lblMensaje.Text = "¡Solicitud enviada con éxito!"
                lblMensaje.ForeColor = System.Drawing.Color.Green
            Catch ex As Exception
                ' Mostrar el error si ocurre
                lblMensaje.Text = "Error al enviar la solicitud: " & ex.Message
                lblMensaje.ForeColor = System.Drawing.Color.Red
            Finally
                conn.Close()
            End Try
        Else
            ' Si la página no es válida, mostrar un mensaje
            lblMensaje.Text = "Por favor, complete todos los campos correctamente."
            lblMensaje.ForeColor = System.Drawing.Color.Red
        End If
    End Sub
End Class








