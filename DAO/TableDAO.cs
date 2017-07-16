﻿using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class TableDAO
    {
        private static TableDAO instance;

        public static TableDAO Instance
        {
            get { if (instance == null) instance = new TableDAO(); return TableDAO.instance; }
            private set { TableDAO.instance = value; }
        }

        public static int TableWidth = 100;
        public static int TableHeight = 100;

        private TableDAO() { }


         /**
        * Hàm chuyển bàn
        *@param id1 @idTable1 [Table 1]
        *@param id2 @idTable2 [Table 2]      
        *@return result
        */
        public void SwitchTable(int id1, int id2)
        {
            DataProvider.Instance.ExecuteQuery("USP_SwitchTabel @idTable1 , @idTabel2", new object[] { id1, id2 });
        }
        
       
        /**
        * Hàm lấy danh sách bàn
        *@param table @tablelist [Table List]    
        *@return tablelist
        */
        public List<Table> GetListTable()
        {
            List<Table> list = new List<Table>();

            string query = "select * from TableFood";

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Table tablelist = new Table(item);
                list.Add(tablelist);
            }
            return list;
        }

               
        /**
        * Hàm load danh sách bàn
        *@param table @tablelist [Table List]    
        *@return tablelist
        */
        
        public List<Table> LoadTableList()
        {
            List<Table> tableList = new List<Table>();

            DataTable data = DataProvider.Instance.ExecuteQuery("USP_GetTableList");

            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tableList.Add(table);
            }

            return tableList;
        }
        
               
        /**
        * Hàm thêm bàn
        *@param name @name [Table Name]    
        *@param status @status [Table Status]    
        *@return result
        */

        public bool InsertTable(string name, string status)
        {
            string query = string.Format("INSERT dbo.TableFood (name, status)  VALUES  ( N'{0}', N'{1}')", name, status);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

        /**
        * Hàm sửa bàn
        *@param name @name [Table Name]    
        *@param id @id [Table ID]    
        *@return result
        */

        
        public bool UpdateTable(string name, int id)
        {
            string query = string.Format("UPDATE dbo.TableFood SET name = N'{0}' WHERE id = {1}", name, id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

        /**
        * Hàm xóa bàn
        *@param id @id [Table ID]    
        *@return result
        */

        
        public bool DeleteTable(int id)
        {
            BillInfoDAO.Instance.DeleteBillInfoByFoodID(id);

            string query = string.Format("Delete TableFood where id = {0}", id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

    }
}
