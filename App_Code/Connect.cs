using System.Web;

namespace proj2.App_Code
{
    public class Connect
    {



        const string FileName = "proj.accdb";

        public static string GetConnectionString()
        {

            string location = HttpContext.Current.Server.MapPath("~/App_Data/" + FileName);
            string ConnectionString = @"Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + location;
            return ConnectionString;
        }

        public Connect()
        {


        }
    }
}