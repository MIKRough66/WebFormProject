using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineShop.Pages.Employee
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Getting Cach Value
            LabelUserName.Text = Cache["uName"].ToString();
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
                if(CheckBoxAgree.Checked)
                {
                    con.Open();
                    string Qry = "INSERT INTO Employee(Name, Age, Designation, Gender, Address, Phone, BloodGroup, Email, Religion, JoiningDate, ResigningDate) VALUES(@Name, @Age, @Designation, @Gender, @Address, @Phone, @BloodGroup, @Email, @Religion, @JoiningDate, @ResigningDate)";
                    SqlCommand cmd = new SqlCommand(Qry, con);
                    cmd.Parameters.AddWithValue("@Name", TextBoxEmpName.Text);
                    cmd.Parameters.AddWithValue("@Age", TextBoxEmpAge.Text);
                    cmd.Parameters.AddWithValue("@Designation", DropDownListEmpDesignation.SelectedValue);
                    if(RadioButtonEmpMale.Checked) { cmd.Parameters.AddWithValue("@Gender", "Male"); }
                    if(RadioButtonEmpFemale.Checked) { cmd.Parameters.AddWithValue("@Gender", "Female"); }
                    if(RadioButtonEmpOthers.Checked) { cmd.Parameters.AddWithValue("@Gender", "Others"); }                    
                    cmd.Parameters.AddWithValue("@Address", TextBoxEmpAddress.Text);
                    cmd.Parameters.AddWithValue("@Phone", TextBoxEmpPhone.Text);
                    cmd.Parameters.AddWithValue("@BloodGroup", DropDownListEmpBloodGroup.SelectedValue);
                    cmd.Parameters.AddWithValue("@Email", TextBoxEmpEmail.Text);
                    cmd.Parameters.AddWithValue("@Religion", DropDownListEmpReligion.SelectedValue);
                    cmd.Parameters.AddWithValue("@JoiningDate", TextBoxEmpJoiningDate.Text);
                    cmd.Parameters.AddWithValue("@ResigningDate", TextBoxEmpResigningDate.Text);
                    cmd.ExecuteNonQuery();
                    LabelMsg.Text = "Data has been Saved Successfully";
                    con.Close();

                    TextBoxEmpName.Text = "";
                    TextBoxEmpAge.Text = "";
                    DropDownListEmpDesignation.Text = "";
                    RadioButtonEmpMale.Checked = false;
                    RadioButtonEmpFemale.Checked = false;
                    RadioButtonEmpOthers.Checked = false;
                    TextBoxEmpAddress.Text = "";
                    TextBoxEmpPhone.Text = "";
                    DropDownListEmpBloodGroup.Text = "";
                    TextBoxEmpEmail.Text = "";
                    DropDownListEmpReligion.Text = "";
                    TextBoxEmpJoiningDate.Text = "";
                    TextBoxEmpResigningDate.Text = "";
                }
            else
                {
                    LabelMsg.Text = "Error !";
                }
        }
    }
}