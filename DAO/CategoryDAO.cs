using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class CategoryDAO
    {
        private static CategoryDAO instance;

        public static CategoryDAO Instance
        {
            get { if (instance == null) instance = new CategoryDAO(); return CategoryDAO.instance; }
            private set { CategoryDAO.instance = value; }
        }

        private CategoryDAO() { }
	    /**
        * Hàm lấy danh mục
        */
        public List<Category> GetListCategory()
        {
            List<Category> list = new List<Category>();

            string query = "select * from FoodCategory";

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Category category = new Category(item);
                list.Add(category);
            }

            return list;
        }
	    /**
        * Hàm lấy danh mục thức ăn
        */
        public List<Category> GetListFoodCategory()
        {
            List<Category> list = new List<Category>();

            string query = "select * from FoodCategory";

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Category foodcategory = new Category(item);
                list.Add(foodcategory);
            }

            return list;
        }
	    /**
        * Hàm lấy danh mục theo ID
        */
        public Category GetCategoryByID(int id)
        {
            Category category = null;

            string query = "select * from FoodCategory where id = " + id;

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                category = new Category(item);
                return category;
            }

            return category;
        }

	    /**
        * Hàm thêm danh mục
        *@param name @name
        *@return result
        */
        public bool InsertCategory(string name)
        {
            string query = string.Format("INSERT dbo.FoodCategory (name)  VALUES  ( N'{0}')", name);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }
	    /**
        * Hàm Sửa danh mục
        *@param name @name
        *@param id @id
        *@return result
        */
        public bool UpdateCategory(string name, int id)
        {
            string query = string.Format("UPDATE dbo.FoodCategory SET name = N'{0}' WHERE id = {1}", name, id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }
        
	    /**
        * Hàm Xóa danh mục
        *@param id @id
        *@return result
        */
        public bool DeleteCategory(int id)
        {
            BillInfoDAO.Instance.DeleteBillInfoByFoodID(id);

            string query = string.Format("Delete FoodCategory where id = {0}", id);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

    }
}
