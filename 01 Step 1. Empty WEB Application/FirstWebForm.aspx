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
<div><label>Your name:</label><input type="text" id="name" /></div>
<div><label>Your email:</label><input type="text" id="email" /></div>
<div><label>Your phone:</label><input type="text" id="phone" /></div>
<div>
<label>Will you attend?</label>
<select id="willattend">
<option value="">Choose an Option</option>
<option value="true">Yes</option>
<option value="false">No</option>
</select>
</div>
<div>
<button type="submit">Submit RSVP</button>
</div>
</form>
</body>
</html>
