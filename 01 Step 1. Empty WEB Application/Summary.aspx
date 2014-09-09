<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="Summary.aspx.cs" 
    Inherits="_01_Step_1.Empty_WEB_Application.Summary" %>

<!DOCTYPE html>

<%@ Import Namespace="_01_Step_1.Empty_WEB_Application" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Summary</title>
    <link rel="stylesheet" href="FirstWebForm.css" />
</head>
<body>
    <h2>RSPV Summary</h2>

    <h3>People who will attend:</h3>
    <table>
        <thead>
            <tr><th>Name</th><th>Email</th><th>Phone</th></tr>
        </thead>
        <tbody>
            <% 
                var yesData = ResponseRepository.GetRepository().GetAllResponses().
                    Where(r => r.WillAttend.HasValue && r.WillAttend.Value);

                foreach (var rspv in yesData)
                {

                    string html = String.Format(@"<tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>",
                        rspv.Name,
                        rspv.Email,
                        rspv.Phone);

                    Response.Write(html);
                }
            %>
        </tbody>
    </table>

    <hr />

    <h3>People who will not attend:</h3>
    <table>
        <thead>
            <tr><th>Name</th><th>Email</th><th>Phone</th></tr>
        </thead>
        <tbody>
            <%= GetNoShowHtml() %>
        </tbody>
    </table>

</body>
</html>
