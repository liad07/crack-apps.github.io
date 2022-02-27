using System;
using System.Data;
using System.Data.OleDb;

namespace proj2.App_Code
{
    public class orderService
    {
        OleDbConnection myConnection;

        public orderService()
        {
#pragma warning disable CS0436 // Type conflicts with imported type
            string connectionString = Connect.GetConnectionString();
#pragma warning restore CS0436 // Type conflicts with imported type
            myConnection = new OleDbConnection(connectionString);
        }



        public void inOrders(String mobID, int memID, String color, String paymants)
        {

            try
            {
                myConnection.Open();

                string sSql = "INSERT INTO orders (mobile_id, memberID , color, paymants) VALUES( '" + mobID + "'," + memID + ",' " + color + "',' " + paymants + "')";
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

        public void updateOrders(int orderNum)
        {

            try
            {
                myConnection.Open();

                string sSql = "UPDATE  orders set tipul=1 where order_num=" + orderNum;
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

        public DataSet GetOrders(int tipul)//שאילתא שמחזירה את כל הנתונים של ההזמנות 
        {
            DataSet dataset = new DataSet();
            try
            {
                myConnection.Open();
                string sSql = "SELECT orders.color, orders.paymants, [catalog].name_m, [catalog].price, members.[first name], members.[last name], members.tell, members.ktovet, members.mail,orders.order_num FROM((orders INNER JOIN [catalog] ON orders.mobile_id = [catalog].id) INNER JOIN members ON orders.memberID = members.auto_numID) WHERE(orders.tipul = " + tipul + ")";
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset, "orders");

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
