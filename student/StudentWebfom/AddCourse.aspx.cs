using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebfom
{
    public partial class AddCourse : System.Web.UI.Page
    {
        BLL b = new BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Coursename_Gridview_Bind();
            }
        }
        public void Coursename_Gridview_Bind()
        {
            GridView1.DataSource = b.SelectAllCourse();
            GridView1.DataBind();
        }

        protected void Button1_Course_Click1(object sender, EventArgs e)
        {
            bool res = b.CheckCourse(textCoursename.Text);
            if (res == true)
            {
                Response.Write("<script>alert('Coursename Already added')</script>");

            }
            else
            {
                bool n = b.AddNewCourseForm(textCoursename.Text);
                if (n == true)
                {
                   // Coursename_Gridview_Bind();
                    Response.Write("<script>alert('Coursename added')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Coursename not added')</script>");

                }
            }

        }

        protected void textClear_Click(object sender, EventArgs e)
        {
            textCoursename.Text = "";
        }
    }
}