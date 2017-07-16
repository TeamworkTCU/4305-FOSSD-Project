using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Category
    {
        /**
        * Hàm Category
        *@param id @id
        *@param name @name 
        */
        public Category(int id, string name)
        {
            this.ID = id;
            this.Name = name;
        }
        /**
        * Hàm Category
        *@DataRow row @row
        */
        public Category(DataRow row)
        {
            this.ID = (int)row["id"];
            this.Name = row["name"].ToString();
        }

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private int iD;

        public int ID
        {
            get { return iD; }
            set { iD = value; }
        }
    }
}
