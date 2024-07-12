using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;




namespace StudentWebfom
{
    public class BLL
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        public BLL()  
        {
            con = new SqlConnection("Data Source=WEBNETSOLUTIONS\\SQLEXPRESS;Initial Catalog=DBLStudent;user ID=sa;Password=unlock");
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
        }
        public bool AddNewCourseForm(string CourseName)
        {
            try
            {
                string Sql = string.Format("insert into tblcourse values('{0}')", CourseName);
                cmd.CommandText = Sql;
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }
        public DataTable SelectAllCourse()
        {
            string Sql = String.Format("select *from tblcourse");
            cmd.CommandText = Sql;
            cmd.ExecuteNonQuery();
            SqlDataAdapter odp = new SqlDataAdapter(Sql, con);
            DataTable dt = new DataTable();
            odp.Fill(dt);
            return (dt);
        }
        public DataTable SelectAllYear()
        {

            string Sql = String.Format(" SELECT DISTINCT YOA FROM tblstudent ");
            cmd.CommandText = Sql;
            cmd.ExecuteNonQuery();
            SqlDataAdapter odp = new SqlDataAdapter(Sql, con);
            DataTable dt = new DataTable();
            odp.Fill(dt);
            return (dt);
        }
        public DataTable SelectStudent_Yearwise(string Year)
        {
            string Sql = String.Format("select *from tblstudent INNER JOIN tblcourse ON tblstudent.CourseId = tblcourse.CourseId where YOA='{0}'", Year);
            cmd.CommandText = Sql;
            cmd.ExecuteNonQuery();
            SqlDataAdapter odp = new SqlDataAdapter(Sql, con);
            DataTable dt = new DataTable();
            odp.Fill(dt);
            return (dt);


        }
        public DataTable SelectStudent_Coursewise(int CourseID)
        {
            string Sql = String.Format("select *from tblstudent INNER JOIN tblcourse ON tblstudent.CourseId = tblcourse.CourseId where tblcourse.CourseId={0}", CourseID);
            cmd.CommandText = Sql;
            cmd.ExecuteNonQuery();
            SqlDataAdapter odp = new SqlDataAdapter(Sql, con);
            DataTable dt = new DataTable();
            odp.Fill(dt);
            return (dt);


        }
        public bool CheckStudentUsn(string Usn)
        {
            string sql = string.Format("select count(*) from tblstudent where StudentUSN='{0}'", Usn);
            cmd.CommandText = sql;
            int n = int.Parse(cmd.ExecuteScalar().ToString());
            if (n == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool CheckCourse(string Coursename)
        {
            string sql = string.Format("select count(*) from tblcourse where CourseName='{0}'", Coursename);
            cmd.CommandText = sql;
            int n = int.Parse(cmd.ExecuteScalar().ToString());
            if (n == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool AddNewStudentForm(string USN, string StudentName, string Address, int CourseID, string YOA)
        {
            try
            {
                string Sql = string.Format("insert into tblstudent values('{0}','{1}','{2}',{3},'{4}')", USN, StudentName, Address, CourseID, YOA);
                cmd.CommandText = Sql;
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }
    }
}