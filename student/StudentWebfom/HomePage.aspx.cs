using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebfom
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Course_page_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCourse.aspx");
        }

        protected void Student_Page_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddStudent.aspx");
        }

        protected void Course_Student_Display_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Display_Student_Coursewise.aspx");
           
        }

        protected void Year_Student_Display_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Display_Student_Yearwise.aspx");
        }
    }
}