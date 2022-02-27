using System;

namespace proj2
{
    public partial class Webtest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 10; i++)
                lbl1.Text += "<tr> <td> " + i + i + "</td>   <td>3 </td>  <td>1 </td> </tr>";
        }
    }
}