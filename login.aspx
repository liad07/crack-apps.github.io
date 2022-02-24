<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="proj2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
            <link rel="stylesheet" href="https://raw.githack.com/liad07/cssuses/main/liad.css">
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.3.min.js" ></script>
    <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <link rel="stylesheet" href="signup.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Crack Apps login</title>
</head>
<body align="right" dir="rtl"  class="bg">
<section class="login-clean">
    <div class="login-body">
        <article class="container-login center-block">
            <div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
                <h2><i class="glyphicon glyphicon-log-in"></i> Welcome To Crack Apps Web App!</h2>
            </div>

        </article>
    </div>
     
 
   
     <%  Response.Write(Session["nm"]); %>
<br><br>


    <form id="formlogin" runat="server">
         <table border="0" align="center" >
         <tr>
            <td align="center"> <font color="black" size="5">    
                <asp:Label ID="labelalert" runat="server" Text=""></asp:Label>
                </font>  </td>
           
        </tr>
              <ion-icon class="illustration" name="person-add-sharp"></ion-icon>
        <div class="mb-5"><input type="text" id="mail" class="form-control" name="mail" placeholder="mail" runat="server" /></div>
        <div class="mb-5"><input type="password" class="form-control" id="passp" name="passp" runat="server" placeholder="password" /></div>
        <div class="mb-5"><input class="btn btn-primary d-block w-100" type="submit" value="login" onclick="checklogin()"/></div>
        <span class="alert-danger" role="alert" id="errorMessage"></span>
             </table>
    
   <br><br>
         <table border="0" align="center" width="30%">
      
         <tr>
            <td><a href="harshama.aspx">לחץ כאן להרשמה</a> במידה ואינך רשום לאתר  </td>
 </tr>
        </table>
        
        </form>
    <p>
       </p>
</>
      </html>
.0  <script src="JavaScript.js"></script>