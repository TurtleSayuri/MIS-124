Public Class Answer_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session.Count > 0 Then
                txtName.Text = Session("Name")
                lstMajor.SelectedValue = Session("Major")
            End If
        End If
    End Sub

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        'TODO: Write your code here
        sendRequest()
    End Sub

    ' Has the code that we will implement
    Private Sub sendRequest()
        Try
            'Stores the status of the list box
            Session.Add("Name", txtName.Text)
            Session.Add("Major", lstMajor.SelectedValue)
            'Stores the status of the check boxes as a String 00 means none is checked, 11 means both checked
            Dim strCheckBoxStatus As String
            If chkCampusEvents.Checked Then
                strCheckBoxStatus = "1"
            Else
                strCheckBoxStatus = "0"
            End If

            If chkCBAEvents.Checked Then
                strCheckBoxStatus = strCheckBoxStatus & "1"
            Else
                strCheckBoxStatus = strCheckBoxStatus & "0"
            End If
            Session.Add("CheckBoxStatus", strCheckBoxStatus)

            Response.Redirect("Verification.aspx")
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Protected Sub chkCampusEvents_CheckedChanged(sender As Object, e As EventArgs) Handles chkCampusEvents.CheckedChanged
        processCheckBoxes()
    End Sub

    Protected Sub chkCBAEvents_CheckedChanged(sender As Object, e As EventArgs) Handles chkCBAEvents.CheckedChanged
        processCheckBoxes()
    End Sub

    Private Sub processCheckBoxes()
        If chkCampusEvents.Checked Or chkCBAEvents.Checked Then
            btnSend.Visible = True
        Else
            btnSend.Visible = False
        End If
    End Sub
End Class