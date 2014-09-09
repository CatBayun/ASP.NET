<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="FirstWebForm.aspx.cs" 
    Inherits="_01_Step_1.Empty_WEB_Application.FirstWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>01 Step 1. Empty WEB Application</title>
    <link rel="stylesheet" href="FirstWebForm.css" />
</head>
<body>
    <form id="rsvpform" runat="server">
<div>
    <h1>New Year's Party at Alexie's!</h1>
    <p>We're going to have an exciting party. And you're invited!</p>
</div>
<asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
<div><label>Your name:</label><input type="text" id="Name" runat="server"/></div>
<div><label>Your email:</label><input type="text" id="Email" runat="server"/></div>
<div><label>Your phone:</label><input type="text" id="Phone" runat="server"/></div>
<div>
<label>Will you attend?</label>
<select id="WillAttend" runat="server">
<option value="">Choose an Option</option>
<option value="true">Yes</option>
<option value="false">No</option>
</select>
</div>
<div>
    <button type="submit">Submit RSVP</button>
    <button type="submit">Summary</button>
</div>
</form>
</body>
</html>
