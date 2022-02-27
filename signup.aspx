<% @ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="proj2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel="stylesheet" href="https://raw.githack.com/liad07/cssuses/main/liad.css">
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.3.min.js" ></script>
    <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <link rel="stylesheet" href="assets/css/signup.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Crack Apps login</title>
</head>
<body align="right" dir="rtl"  class="bg">

     <%  Response.Write(Session["nm"]); %>
      <%
             if (Session["nm"] == null)
                 Response.Write("<a href='login.aspx'>התחברות</a>");

                %>
      
<section class="login-clean">
    <div class="login-body">
        <article class="container-login center-block">
            <div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
                <h2><i class="glyphicon glyphicon-log-in"></i> Welcome To Crack Apps Web App!</h2>
            </div>

        </article>
    </div>
     
 
   
<br><br>
    <script src="JavaScript.js"></script>

  


      
    






    <form id="formharshama" runat="server">
        <div>
        </div>
   

      <table dir="rtl" border="0" align="center" width="100%">
        <tr><br />
            <td align="center"> <font color="red" size="5">הרשמה לאתר   </font>  </td>
           
        </tr>

          <tr>
            <td align="center"> <font color="black" size="5">    
                <asp:Label ID="labelalert" runat="server" Text=""></asp:Label>
                </font>  </td>
           
        </tr>
        </table>

   <br />
     <table border="0" align="center" width="30%">
      
           <tr>
            <td>שם פרטי</td>
           <td><input runat="server" type="text" id="namep" name="namep"></input></td>
        </tr>
          <tr>
            <td>שם משפחה</td>
           <td><input  runat="server" type="text" id="namem" name="namem"></input></td>
        </tr>
          <tr>
            <td>טלפון</td>
           <td><input  runat="server" type="text" id="tel" name="tel"></input></td>
        </tr>
          <tr>
            <td>כתובת</td>
           <td><input  runat="server" type="text" id="street1" name="street1"></input></td>
        </tr>
         <tr>
            <td>דואר אלקטרוני</td>
           <td><input  runat="server" type="text" id="mail" name="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" ></input></td>
        </tr>
         <tr>
            <td>סיסמה</td>
           <td><input  runat="server"  id="passp" name="passp" type="password" ></input> </td>
        </tr>
          <tr>
            <td>אשר סיסמה</td>
           <td><input  id="passp1" name="passp1" type="password" ></input> </td>
        </tr>
         <tr>
            <td></td>
           <td>  
 <div class="mb-5"><input class="btn btn-primary d-block w-100" type="submit" value="signup" onclick="check()"/></div>

              </td>

        </tr>
         
        </table>
    </form>
             
</body>
</html>
