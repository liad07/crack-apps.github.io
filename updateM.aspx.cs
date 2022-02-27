using proj2.App_Code;
using System;
using System.Data;
using System.Data.OleDb;

namespace proj2
{
    public partial class updateM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbCommand db = new OleDbCommand();
            membersService us = new membersService();
            DataSet ds = new DataSet();


            string id = (string)Session["idmember"];
             ds = us.updateMM(id);

            if (namep.Value == "")
            {
                namep.Value = ds.Tables[0].Rows[0][1].ToString();
                namem.Value = ds.Tables[0].Rows[0][2].ToString();
                tel.Value = ds.Tables[0].Rows[0][3].ToString();
                street1.Value = ds.Tables[0].Rows[0][4].ToString();
                mail.Value = ds.Tables[0].Rows[0][5].ToString();
                passp.Value = ds.Tables[0].Rows[0][6].ToString();
            }
            else
            {

                string np = namep.Value;
                string ln = namem.Value;
                string tl = tel.Value;
                string st = street1.Value;
                string ml = mail.Value;
                string ps = passp.Value;
                lbl1.Text = "פרטי המשתמש עודכנו";
                us.UpdateMembers(np, ln, tl, st, ml, ps, id);

                string nm = np; // aשם פרטי
                nm = "ברוך הבא : " + nm + " " + ln; // שם משפחה
                                                                                     // Response.Write(nm);
                Session["nm"] = nm;
               

            }
        }


    }
}
