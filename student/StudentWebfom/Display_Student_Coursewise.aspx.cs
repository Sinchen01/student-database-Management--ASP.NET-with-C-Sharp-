using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebfom
{
    public partial class Display_Student_Coursewise : System.Web.UI.Page
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


        protected void Submit_Course_Click(object sender, EventArgs e)
        {
             GridView1.DataSource=b.SelectStudent_Coursewise(int.Parse(DropDownList1.SelectedItem.Value.ToString()));
            GridView1.DataBind();
        }
    }
}