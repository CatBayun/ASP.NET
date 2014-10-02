<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" 
    Inherits="_02_Step_1.Using_jQuery.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using jQuery</title>
    <link rel="stylesheet" href="Styles.css" />
    <script src="/Scripts/jquery-2.1.1.js"></script>
    <script src="/Scripts/Default.js"></script>
</head>
<body>
    <h2 id="summitsHeader">Summits</h2>
    <table id="peaksTable">
        <thead>
            <tr>
                <th class="name">Name</th>
                <th class="height">Height (m)</th>
            </tr>
        </thead>
        <tbody id="tableBody">
            <tr><td class="name">Everest</td><td class="height">8848</td></tr>
            <tr><td class="name">Aconcagua</td><td class="height">6962</td></tr>
            <tr><td class="name">McKinley</td><td class="height">6194</td></tr>
            <tr><td class="name">Kilimanjaro</td><td class="height">5895</td></tr>
            <tr><td class="name">K2</td><td class="height">8611</td></tr>
        </tbody>
    </table>
    <input type="button" value="Delete" id="deleteButton"/>
</body>
</html>
