<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateM.aspx.cs" Inherits="proj2.updateM" %>

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


<body dir="rtl" class="bg" >
    <script src="JavaScript.js"></script>
             
<section class="login-clean">
    <div class="login-body">
        <article class="container-login center-block">
            <div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
                <h2><i class="glyphicon glyphicon-log-in"></i> Welcome To Crack Apps Web App!</h2>
            </div>

        </article>
    </div>
     
 
   
<br><br>
  

        <%
             if (Session["nm"] == null)
                 Response.Write(" <li><a href='login.aspx'>התחברות</a></li>");

                %>
     
    <asp:Label ID="lbl1" runat="server" Text="" ForeColor="Red"></asp:Label>

<body dir="rtl">


    <form id="formharshama" runat="server">
        <div>
        </div>
      <table >
          <tr>
              <td>שם פרטי:
                  </td>
                     
                  <td>
                  <input runat="server" type="text" id="namep" name="namep"></input>
              </td>
          </tr>
          <tr>
              <td>
                שם משפחה
                  </td>
     
                   <td>  
                        <input  runat="server" type="text" id="namem" name="namem"></input>
              </td>
          </tr>
          <tr>
              <td>
                  טלפון&nbsp;<td>

                 <input  runat="server" type="text" id="tel" name="tel"></input>

                  </td>
              </td>
          </tr>
          <tr>
              <td>
                  כתובת<td>

                 <input  runat="server" type="text" id="street1" name="street1"></input>

                  </td>
              </td>
          </tr>
          <tr>
              <td>
                  אימייל<td>

                <input  runat="server" type="text" id="mail" name="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" ></input>

                  </td>
              </td>
          </tr>
          <tr>
              <td>
                  סיסמא<td>

                 <input  runat="server"  id="passp" name="passp" type="password" ></input>

                  </td>
              </td>
          </tr>
           <tr>
              <td>
                  סיסמא<td>

                <input  id="passp1" name="passp1" type="password" ></input> 

                  </td>
              </td>
          </tr>
          <tr>
              <td colspan="2">
                 

 <div class="mb-5"><input class="btn btn-primary d-block w-100" type="submit" value="update" onclick="check()"/></div>

                  </td>
             
          </tr>

      </table>
    </form>
</body>
</html>
