<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testtttt.aspx.cs" Inherits="proj2.WebForm1" %>

<!DOCTYPE html>

<html  dir="rtl" xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="assets/favicon.ico">
<link rel="stylesheet" href="assets/css/topnav.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/crack-apps.css">
      <div class="topnav">
        <a class="active" href="home.aspx">Home</a>
        <a href="windows.aspx">windows</a>
        <a href="iptv.aspx">iptv</a>
        <a href="learn.aspx">learn</a>
          
   
        <div class="topnav-right">
            
         <%
             if (Session["nm"] == null && Session["Admin"] == null )
                    Response.Write(" <a href='login.aspx'>login</a>");

                %>


       
         <%
                if (Session["Admin"] != null)
                    Response.Write("<a href='members.aspx'>ניהול האתר</a>");

                %>
      
      <%  Response.Write(Session["nm"]);
        if (Session["nm"] != null || Session["Admin"] != null)
              Response.Write(" <a href='logout.aspx'>התנתק</a> <a href='updateM.aspx'>עדכון פרטים</a>");%>

           </div> </div>
      <title>Crack Apps</title>
    <center>
        <div style="background-image: url('assets/pics/bg.png');">
            <img src="assets/pics/all.png" width="1154px" height="724x"></div>
    </center>
    </div>

</head>
<body align="right" dir="rtl"  >
   
   
                <div class="row justify-content-center ">

    <div class="col-sm-2">
        <a href="https://liad07.github.io/crackapps-iphone/">
            <button type="submit" class="btn btn-outline-secondary"><img class="windows-logo" src="assets/pics/Apple_logo_black.png" height="40" width="40" > Download </button>
        </a>

    </div>

    <div class="col-sm-2">
        <a href="assets/android/crack-apps.apk">
            <button type="submit" class="btn btn-outline-secondary"><img class="windows-logo" src="assets/pics/android.png" height="40" width="40" > Download </button>
        </a>

    </div>

    <div class="col-sm-2">
        <a href="windows.aspx">
            <button type="submit" class="btn btn-outline-secondary open-button"><img class="windows-logo" src="assets/pics/windows.png" height="40" width="40" > open </button>
        </a>
    </div>

    <div class="col-sm-2">
        <a href="download-page.html">
            <button type="submit" class="btn btn-outline-secondary open-button"><img class="windows-logo" src="assets/pics/windows.png" height="40" width="40" > download </button>
        </a>
    </div>
    <div class="col-sm-2">
        <a href="https://github.com/liad07/crack-apps-addon/archive/refs/heads/main.zip">
            <button type="submit" class="btn btn-outline-secondary open-button"><img class="windows-logo" src="assets/pics/addon.png" height="40" width="40" > download </button>
        </a>
    </div>

</div>

<br>
<style>
    h1 {text-align: center;}
    p {text-align: center;}
    div {text-align: center;}
</style>
<p>לכל שאלה/בקשה לתוכנה לחצו על הכפתור ובקשו את מה שאתם צריכים

</p>
<div class="row justify-content-center ">
    <div class="col mail-me d-flex justify-content-center">
        <a href="mailto:crackappsite@gmail.com?subject=%D7%A9%D7%90%D7%9C%D7%94&body=%D7%94%D7%99%D7%99%20%D7%99%D7%A9%D7%9C%D7%99%20%D7%A9%D7%90%D7%9C%D7%94">
            <button type="submit" class="btn btn-outline-secondary mail-me-button"><img class="windows-logo" src="assets/pics/mail.png" height="40" width="40" > Mail Me </button>
        </a>

    </div>
</div>

</br>
<br>
<style>
    h1 {text-align: center;}
    h3 {text-align: center;}
    div {text-align: center;}
</style>
<h1>All Games All Apps You need

</h1>
<h3>"Good Its Free"
</h3>

</br>


</div>
</body>
</html>