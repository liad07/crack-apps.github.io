using System;
using System.Data;
using System.Data.OleDb;

namespace proj2.App_Code
{
    public class devicesService
    {
        OleDbConnection myConnection1;
        public devicesService()
        {

#pragma warning disable CS0436 // Type conflicts with imported type
            string connectionString = Connect.GetConnectionString();
#pragma warning restore CS0436 // Type conflicts with imported type
            myConnection1 = new OleDbConnection(connectionString);

        }


        public DataSet GetDevices()//שאילתא שמחזירה את כל הנתונים של המכשירים 
        {
            DataSet dataset = new DataSet();
            try
            {
                myConnection1.Open();
                string sSql = "SELECT * FROM[catalog]";

                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection1);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset, "catalog");

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myConnection1.Close();
            }
            return dataset;
        }
    }
}