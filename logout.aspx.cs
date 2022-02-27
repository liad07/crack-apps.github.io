using System;

namespace proj2
{
    public partial class nituk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["nm"] = null;
            Session["Admin"] = null;
            Response.Redirect("home.aspx");
        }
    }
}
