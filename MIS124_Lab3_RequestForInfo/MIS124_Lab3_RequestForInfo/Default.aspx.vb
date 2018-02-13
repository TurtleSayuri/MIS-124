Public Class Defaule
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'You should write the functionality to display the previous content as we did in Lab 2

        'In this lab we only focus on:

        ' Chapter 6. Standard server controls (images, labels, text boxes, check boxes, list boxes, buttons)
        ' Chapter 7. Required field validator, compare validator, RegEx validator, custom validator, validation summary

        'TODO: Write your code here
        ' add item to pageload
        If Not IsPostBack Then
            Me.lstMajor.Items.Add("Marketing") 'Both this item and the next gets added everytime the page loads without the If code.
            Me.lstMajor.Items.Add("International Business")
        End If




    End Sub

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        Response.Redirect("Verification.aspx?" & "UserName=" & txtName.Text & " & CBA Events=" & chkCBAEvents.Checked)

    End Sub
   

End Class