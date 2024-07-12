using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebfom
{
    public partial class Display_Student_Yearwise : System.Web.UI.Page
    {
        BLL b = new BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                YearDropdown_Bind();
            }

        }
        public void YearDropdown_Bind()
        {
            DropDownList1.DataSource = b.SelectAllYear();
            DropDownList1.DataTextField = "YOA";
            DropDownList1.DataValueField = "YOA";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select");
        }
        protected void Sub_Btn_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = b.SelectStudent_Yearwise(DropDownList1.SelectedItem.Text);
            GridView1.DataBind();
        }
    }
}