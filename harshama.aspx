<% @ Page Language="C#" AutoEventWireup="true" CodeBehind="harshama.aspx.cs" Inherits="proj2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
   <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
           background-color: #333;
             
        }

        li {
            float: right;
        }

            li a {
                display: block;
                color: white;
                text-align: right;
                padding: 14px 16px;
                text-decoration: none;
                 min-width :70px;
            }

                li a:hover {
                    background-color: #111;
                }

        body {
             background-color : lightblue;
           
        }
    </style>
    

</head>
<body dir="rtl" >
    <script src="JavaScript.js"></script>

  








     <ul >

        <li><a class="active" href="Home.aspx">דף הבית</a></li>
        <li><a href="mobils.aspx">המוצרים שלנו</a></li>
        <%
             if (Session["nm"] == null)
                 Response.Write(" <li><a href='login.aspx'>התחברות</a></li>");

                %>
        <li><a href="odot.aspx">אודות</a></li>
        <li><a href="#about">ביקורות</a></li>
         
    </ul>






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
           <td>  <input type="Button" ID="login"  value="הירשם" onclick="check()" /> </input>
               
              </td>

        </tr>
         
        </table>
    </form>
             
</body>
</html>
