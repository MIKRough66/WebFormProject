using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace OnlineShop.Pages.ProductManagement
{
    public partial class ProductManagement : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineShopDB.mdf;Initial Catalog=OnlineShopDB;Integrated Security=True; MultipleActiveResultSets=true");
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Catrgory(CatrgoryName) Values('" + TextBoxCategoryName.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            TextBoxCategoryName.Text = "";
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            FileUpload.SaveAs(Request.PhysicalApplicationPath + "./ProductImages/" + FileUpload.FileName.ToString());
            b = "/ProductImages/" + FileUpload.FileName.ToString();

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Product(ProductName, Category, Available, Price, ProductImage) VALUES('" + TextBoxName.Text+"','"+DropDownListCategory.SelectedValue+"','"+TextBoxAvailable.Text+"','"+TextBoxPrice.Text+"','"+b.ToString()+"')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}