using proj2.App_Code;
using System;
using System.Data;
using System.Data.OleDb;





namespace proj2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string ml = mail.Value;

            string ps = passp.Value;


            string nm = "";
            if (mail.Value == "liad07@gmail.com" && passp.Value == "li230878")
            {

                Session["Admin"] = 1;
                Response.Redirect("members.aspx");


            }

            if (mail.Value != "" && passp.Value != "")
            {


                OleDbCommand db = new OleDbCommand();
                membersService us = new membersService();
                DataSet ds = new DataSet();

                ds = us.cheklLogUsers(ml, ps);

                if (ds.Tables[0].Rows.Count == 0)
                    labelalert.Text = " משתמש לא רשום או טעות בסיסמה ואימייל";
                // Response.Write(" משתמש לא רשום או טעות בסיסמה ואימייל");
                else
                {

                    nm = ds.Tables[0].Rows[0][1].ToString(); // aשם פרטי
                    nm = "<h6 style='color: white;'>" + "ברוך הבא : " + nm + " " + ds.Tables[0].Rows[0][2].ToString(); // שם משפחה
                    nm = nm + "</h6>";                                                         // Response.Write(nm);
                    Session["nm"] = nm;
                    Session["idmember"] = ds.Tables[0].Rows[0][0].ToString();
                    Response.Redirect("Home.aspx");
                }

            }



        }
    }
}