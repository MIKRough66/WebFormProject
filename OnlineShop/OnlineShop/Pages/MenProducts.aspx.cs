using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

namespace OnlineShop.Pages
{
    public partial class MenProducts : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {
            //For paging
            if(!IsPostBack)
            {
                items();
            }

            //For Cart Item Count
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                LabelItem.Text = dt.Rows.Count.ToString();
            }
            else
            {
                LabelItem.Text = "0";

            }
        }

        protected void items()
        {
            PagedDataSource objDs = new PagedDataSource();
            DataView dv = (DataView)SqlDataSourceProduct.Select(DataSourceSelectArguments.Empty);
            objDs.DataSource = dv;
            objDs.AllowPaging = true;
            objDs.PageSize = 5;
            objDs.CurrentPageIndex = CurrentPage;
            lblCurrentPage.Text = "Page : " + (CurrentPage + 1).ToString() + "of" + objDs.PageCount.ToString();

            ButtonPrev.Enabled = !objDs.IsFirstPage;
            ButtonNext.Enabled = !objDs.IsLastPage;
            DataListProduct.DataSourceID = null;            //Disabled because error happens when loading pages
            DataListProduct.DataSource = objDs;
            DataListProduct.DataBind();
        }

        public int CurrentPage
        {
            get
            {
                object o = this.ViewState["_CurrentPage"];
                if (o == null)
                    return 0;
                else
                    return (int)o;
            }
            set
            {
                this.ViewState["_CurrentPage"] = value;
            }
        }

        protected void ButtonPrev_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            items();
        }

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            items();
        }

        protected void DataListProduct_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownListQty"));
            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
    }
}