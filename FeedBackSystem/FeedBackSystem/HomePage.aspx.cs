using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;

namespace YourNamespace
{
    public partial class HomePage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }

        private void LoadCourses()
        {
            string filePath = Server.MapPath("~/App_Data/SelectedCourses.txt");
            List<string> courses = new List<string>();

            if (File.Exists(filePath))
            {
                foreach (string line in File.ReadAllLines(filePath))
                {
                    courses.Add(line);
                }
            }

            List<Course> courseList = new List<Course>();
            foreach (string course in courses)
            {
                courseList.Add(new Course { CourseName = course });
            }

            rptCourses.DataSource = courseList;
            rptCourses.DataBind();
        }
    }

    public class Course
    {
        public string CourseName { get; set; }
    }
}
