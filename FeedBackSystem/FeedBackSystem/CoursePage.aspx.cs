using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;

namespace YourNamespace
{
    public partial class CoursePage : Page
    {
        protected void SubmitSelection_Click(object sender, EventArgs e)
        {
            try
            {
                // إنشاء قائمة لتخزين الدورات المختارة
                List<string> selectedCourses = new List<string>();

                // تحقق من كل دورة إذا كانت محددة وأضفها إلى القائمة
                if (course1.Checked) selectedCourses.Add("HTML");
                if (course2.Checked) selectedCourses.Add("CSS");
                if (course3.Checked) selectedCourses.Add("JavaScript");

                // تحديد مسار الملف
                string filePath = Server.MapPath("~/App_Data/SelectedCourses.txt");

                // التحقق من وجود المجلد وإنشاؤه إذا لم يكن موجودًا
                string directoryPath = Path.GetDirectoryName(filePath);
                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }

                // فتح الملف النصي في وضع الكتابة فوق البيانات السابقة (عند استخدام append: false)
                using (StreamWriter writer = new StreamWriter(filePath, append: false))  // تعيين append: false لمسح محتوى الملف
                {
                    foreach (var course in selectedCourses)
                    {
                        writer.WriteLine(course);  // كتابة كل دورة في سطر جديد
                    }
                }

                // عرض رسالة نجاح
                Response.Write("<script>alert('Courses saved successfully!');</script>");
            }
            catch (Exception ex)
            {
                // تسجيل الاستثناءات في حالة حدوث خطأ
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }
    }
}
