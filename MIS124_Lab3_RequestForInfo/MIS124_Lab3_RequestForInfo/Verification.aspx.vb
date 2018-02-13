Public Class Verification
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pageLoadFunctionality()
    End Sub

    Protected Sub btnMore_Click(sender As Object, e As EventArgs) Handles btnMore.Click
        Response.Redirect("Answer_Default.aspx")
    End Sub

    ''' <summary>
    ''' 
    ''' </summary>
    Private Sub pageLoadFunctionality()
        'You should use session verification and redirecting to the main page as we did in Lab 2
        'Try
        '    lblName.Text = Session("Name")
        '    lblMajor.Text = Session("Major")
        '    If Session("CheckBoxStatus").ToString.StartsWith(1) Then
        '        lblRequests.Text = "all campus events"
        '    End If
        '    If Session("CheckBoxStatus").ToString.EndsWith(1) Then
        '        lblRequests.Text = lblRequests.Text & " and all CBA events"
        '    End If
        'Catch ex As Exception
        '    lblMessage.Text = ex.Message
        'End Try

        lblMessage.Text = "Hello " & Request.QueryString(0) & "You requested information " & Request.QueryString(1)



    End Sub
End Class