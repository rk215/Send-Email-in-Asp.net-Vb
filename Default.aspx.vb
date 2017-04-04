Imports System.Net.Mail
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'FOR PASSING MAIL ,SUBJECT AND BODY TEXT TO MAILMESSAGE OBJECT.
        Dim message As New MailMessage(toEmail.Text, from.Text, Subject.Text, Body.Text)

        'ENABLE HTML CONTENT TO DISPLAY IN BODY BY FOLLOWING STATEMENT.
        message.IsBodyHtml = True

        'DECLARE SMTPCLIENT TYPE OF VARIABLE AND PASS SMTP HOST SERVER AND PORT NUMBER.
        Dim client As New SmtpClient("smtp.gmail.com", 587)

        'ENABLE SECURE SOCKET LAYER FOR SMTP SERVER.
        client.EnableSsl = True

        'PASS AUTHENTICATE USERNAME AND PASSWORD.HERE USERNAME & PASSWORD IS MY ONE OF MY GMAIL ACCOUNT.
        client.Credentials = New System.Net.NetworkCredential("Type your Email Address", "Type your password")

        'AND NOW SEND THE EMAIL TO ABOVE PROVIDED MESSAGE VARIABLE VALUE.
        client.Send(message)

        label5.Text = "Email Done Successfully.........."

    End Sub
End Class
