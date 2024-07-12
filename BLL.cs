using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Student_project_information_system.DLLTableAdapters;
using System.Data;

namespace Student_project_information_system
{
    public class BLL
    {
        tblAdminTableAdapter Admin_adpt = new tblAdminTableAdapter();
        tblStudentTableAdapter Student_adpt = new tblStudentTableAdapter();
        tblCousreTableAdapter Course_Adpt = new tblCousreTableAdapter();
        tblStaffTableAdapter Staff_Adpt = new tblStaffTableAdapter();
        tblProjectInformationTableAdapter Project_Adpt = new tblProjectInformationTableAdapter();
        tblAssigmentTableAdapter Assigm_adpt = new tblAssigmentTableAdapter();
        tblTaskUpdateTableAdapter Task_Adpt = new tblTaskUpdateTableAdapter();
        tblfeedbackTableAdapter Query_Adpt = new tblfeedbackTableAdapter();
        //Admin
        public int IsvalideAdmin(string Username, string Password)
        {
            return (int)Admin_adpt.Admin_Isvalide(Username, Password);
        }
        public int AdminPassword(string Password, int AdminId)
        {
            return Admin_adpt.AdminPassword(Password, AdminId);
        }
        public DataTable GetAdmin(string Username, string Password)
        {
            return Admin_adpt.GetDataBy2(Username, Password);
        }
        //Course
        public int AddCourse(string Course)
        {
            return Course_Adpt.AddCourse(Course); 
        }
        public int CheckCourse(string Coursename)
        {
            return(int)Course_Adpt.CheckCoursename(Coursename);
        }
        public int updatecourse(string course, int courseid)
        {
            return (int)Course_Adpt.UpdateCourse(course, courseid);
        }
        public DataTable GetAllCourse()
        {
            return Course_Adpt.GetData();
        }
        public DataTable GetStaff_Course(int CourseId)
        {
            return Staff_Adpt.GetDataBy5(CourseId);
        }
        //Students
        public int AddStudent(string name, string usn, int courseId, string semister, string emailid)
        {
            return Student_adpt.AddStudent(name, usn, courseId, semister, emailid);
        }
        public int CheckUsn(string usn)
        {
            return(int) Student_adpt.Checkusn(usn);
        }
        public DataTable GetStudent_ByCourse(int CourseId)
        {
            return Student_adpt.GetDataBy2(CourseId);
        }
        public int UpdateStudent(string name, string usn, int courseId, string semister, string emailid,int StudentId)
        {
            return Student_adpt.UpdateStudent(name,usn,courseId, semister,emailid,StudentId);
        }
        //staff
        public int AddStaff(string name,int courseId,string Qualification,string emailid,string doj,string loginId,string Password)
        {
            return Staff_Adpt.AddStaff(name,courseId,Qualification,emailid,doj,loginId,Password);
        }
        public int StaffUpdate(string name, int courseId, string Qualification, string emailid, string doj,int staffId)
        {
            return Staff_Adpt.StaffUpdate(name, courseId, Qualification, emailid, doj, staffId);
        }
        public int StaffPassword(string Password, int StaffId)
        {
            return Staff_Adpt.StaffPassword(Password, StaffId);
        }
        public DataTable Getallstaff()
        {
            return Staff_Adpt.GetDataBy1();
        }
        public DataTable GetallstaffById(int StaffId)
        {
            return Staff_Adpt.GetDataBy2(StaffId);
        }
        public DataTable GetallstaffBy_LoginId(string LoginId,string Password)
        {
            return Staff_Adpt.GetDataBy3(LoginId,Password);
        }
        public int IsvalideStaff(string StaffLoginId, string Password)
        {
            return (int)Staff_Adpt.isvalideStaff(StaffLoginId,Password);
        }
        //Project
        public int AddProject(string Projectname, int CourseId, int StaffId, int Semister, string EmailId, string Member1, string Member2, string Member3, string Member4, string NoMembers, string Leader_LoginId, string Login_Password)
        {
            return(int)Project_Adpt.AddProject(Projectname,CourseId,StaffId,Semister,EmailId, Member1,Member2, Member3,Member4,NoMembers,Leader_LoginId,Login_Password);
        }
        public DataTable GetAllTopics()
        {
            return Project_Adpt.GetData();
        }
        public DataTable GetProject_ByStaff(int StaffId)
        {
            return Project_Adpt.GetDataBy1(StaffId);
        }
         public DataTable GetProject_ByLeader(string LeaderId,string LeaderPassword)
        {
            return Project_Adpt.GetDataBy2(LeaderId,LeaderPassword);
        }
         public DataTable GetProject_LeaderEmailId(int ProjectId)
         {
             return Project_Adpt.GetDataBy3(ProjectId);
         }
        public int IsvalideStudent(string LoginId, string password)
        {
            return (int)Project_Adpt.IsvalideStudent(LoginId, password);
        }
        public DataTable GetProject_ByStaffId(int ProjectStaffId)
        {
            return Project_Adpt.GetDataBy5(ProjectStaffId);
        }
      
        //Assigment
         public int AddAssig(int projectId, int StaffId, string Leaderemail, string project_task, string date, string doc)
         {
             return Assigm_adpt.AddAssignment(projectId,StaffId,Leaderemail,project_task,date,doc);
         }
         public DataTable GetAssig_ByStaffId(int StaffId)
         {
             return Assigm_adpt.GetDataBy1(StaffId);
         }
         public DataTable GetAssing_ByLeaderId(string EmailId)
         {
             return Assigm_adpt.GetDataBy2(EmailId);
         }
         public DataTable GetAssing_ByProjectId(int ProjectId)
         {
             return Assigm_adpt.GetDataBy3(ProjectId);
         }
        //Task Update
         public int Updatetask(int ProjectId, int AssiId, string Description, string Doc, string date)
         {
             return Task_Adpt.AddUpdatetask(ProjectId, AssiId, Description, Doc, date);
         }
         public DataTable GetTaskUpdate(int ProjectId, int AssigId)
         {
             return Task_Adpt.GetDataBy1(ProjectId, AssigId);
         }
        //Query
         public int Add_Query(int StaffId, int ProjectId, string Query, string Query_Date, string Replay, string Replaydate)
         {
             return Query_Adpt.AddStudentQuery(StaffId, ProjectId, Query, Query_Date, Replay, Replaydate);
         }
         public DataTable getStudentQuery(int ProjectId)
         {
             return Query_Adpt.GetDataBy1(ProjectId);
         }
         public int QueryUpdate(string Replay, string Replaydate,int FeedbackId)
         {
             return Query_Adpt.UpdateQuery(Replay, Replaydate, FeedbackId);
         }
        

    }
}