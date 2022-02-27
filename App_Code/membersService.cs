using System;
using System.Data;
using System.Data.OleDb;


namespace proj2.App_Code
{
    public class membersService
    {
        OleDbConnection myConnection;

        public membersService()
        {
            string connectionString = Connect.GetConnectionString();
            myConnection = new OleDbConnection(connectionString);
        }



        public void InsertMembers(string fn, string ln, string tell, string ktovet, string mail, string pass)
        {


            try
            {
                myConnection.Open();
                string sSql = "INSERT INTO members([first name], [last name], tell, ktovet, mail, pass) VALUES( '" + fn + "',' " + ln + "',' " + tell + "',' " + ktovet + "','" + mail + "','" + pass + "')";
                //sSql= "INSERT INTO members ([first name], [last name],tell, ktovet, mail, pass) VALUES('1111111', 'hamarha 23','1111111', 'hamarha 23', 'hbhd@mail.com', '12345')";

                /* Unmerged change from project '2_App_Code'
                Before:
                                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);

                                myCmd.ExecuteNonQuery();
                After:
                                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);

                                myCmd.ExecuteNonQuery();
                */
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);

                myCmd.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myConnection.Close();
            }
        }

        public void UpdateMembers(string fn, string ln, string tell, string ktovet, string mail, string pass, string id)
        {


            try
            {
                myConnection.Open();
                string sSql = "update  members set [first name] = '" + fn + "', [last name] = '" + ln + "', tell = '" + tell + "', ktovet = '" + ktovet + "', mail = '" + mail + "', pass = '" + pass + "'  WHERE(auto_numID = " + id + ")";
                //sSql= "INSERT INTO members ([first name], [last name],tell, ktovet, mail, pass) VALUES('1111111', 'hamarha 23','1111111', 'hamarha 23', 'hbhd@mail.com', '12345')";

                /* Unmerged change from project '2_App_Code'
                Before:
                                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);

                                myCmd.ExecuteNonQuery();
                After:
                                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);

                                myCmd.ExecuteNonQuery();
                */
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);

                myCmd.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myConnection.Close();
            }
        }


        public DataSet GetUsers()//שאילתא שמחזירה את כל הנתונים של המשתמשים הרשומים
        {
            DataSet dataset = new DataSet();
            try
            {
                myConnection.Open();
                string sSql = "SELECT [first name], [last name], tell, ktovet, mail, pass FROM members";

                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset, "members");

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                myConnection.Close();
            }
            return dataset;
        }


        public DataSet chekUsers(string ml)//שאילתא שמחזירה את כל הנתונים של המשתמשים הרשומים
        {
            DataSet dataset = new DataSet();

            try
            {
                myConnection.Open();

                string sSql = "SELECT * FROM members WHERE(mail = '" + ml + "')";
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();

                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset, "members");


            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                myConnection.Close();
            }

            return dataset;


        }
        public DataSet cheklLogUsers(string ml, string ps)//שאילתא שמחזירה את כל הנתונים של המשתמשים הרשומים
        {
            DataSet dataset = new DataSet();

            try
            {
                myConnection.Open();

                string sSql = "SELECT * FROM members WHERE(mail = '" + ml + "'AND(pass = '" + ps + "') )";
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();

                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset, "members");
                // if ((int)myCmd.ExecuteScalar() > 0)
                //    rowsAmount = (int)myCmd.ExecuteScalar();

            }
            catch (Exception ex)
            {
                throw ex;
                //return 0;
            }
            finally
            {
                myConnection.Close();
            }

            return dataset;


        }
        public DataSet updateMM(string id)//שאילתא שמחזירה את כל הנתונים של המשתמשים הרשומים
        {
            DataSet dataset = new DataSet();

            try
            {
                myConnection.Open();

                string sSql = "SELECT * FROM members WHERE(auto_numID = " + id + ")";
               // string sSql = "SELECT * FROM members WHERE(auto_numID = 1)";
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();

                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset, "members");


            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                myConnection.Close();
            }

            return dataset;


        }
    }
}