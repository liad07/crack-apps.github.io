using proj2.App_Code;
using System;
using System.Data;
using System.Data.OleDb;

namespace proj2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {







            if (namep.Value != "" && namem.Value != "" && tel.Value != "" && street1.Value != "" && mail.Value != "" && passp.Value != "")
            {
                string np = namep.Value;
                namep.Value = "";
                string ln = namem.Value;
                namem.Value = "";
                string tl = tel.Value;
                tel.Value = "";
                string st = street1.Value;
                street1.Value = "";
                string ml = mail.Value;
                mail.Value = "";
                string ps = passp.Value;
                passp.Value = "";
                // בדיקה שהמשתמש לא רשום כבר
                OleDbCommand db = new OleDbCommand();
                membersService us = new membersService();
                DataSet ds = new DataSet();

                ds = us.chekUsers(ml);

                if (ds.Tables[0].Rows.Count > 0)
                    labelalert.Text = "כתובת דואר זו כבר רשומה";

                else
                {
                    us.InsertMembers(np, ln, tl, st, ml, ps);
                    Response.Redirect("login.aspx");

                }
            }
        }


    }
}