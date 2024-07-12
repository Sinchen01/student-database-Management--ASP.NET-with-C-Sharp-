using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebfom
{
    public partial class AddStudent : System.Web.UI.Page
    {
        BLL b = new BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                coursename_bind();
            }
        }

        public void coursename_bind()
        {

            DropDownList1.DataSource = b.SelectAllCourse();
            DropDownList1.DataTextField = "CourseName";
            DropDownList1.DataValueField = "CourseID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "select");
        }

        protected void Button1_AddStudent_Click(object sender, EventArgs e)
        {
            bool res = b.CheckStudentUsn(textUSN.Text);
            if (res == true)
            {
                Response.Write("<script>alert('Student Usn Already added')</script>");
            }
            else
            {
                bool n = b.AddNewStudentForm(textUSN.Text, textName.Text, textAddress.Text, int.Parse(DropDownList1.SelectedItem.Value.ToString()), textYOA.Text);
                if (n == true)
                {
                    Response.Write("<script>alert('New student Details added')</script>");
                }
                else
                {
                    Response.Write("<script>alert('New student Deatils not added')</script>");

                }
            }
        }

        protected void Button1_Clear_Click(object sender, EventArgs e)
        {
            textUSN.Text = "";
            textName.Text = "";
            textAddress.Text = "";
            DropDownList1.ClearSelection();
            textYOA.Text = "";
        }
    }
}