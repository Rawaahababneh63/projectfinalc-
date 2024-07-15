<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="YourNamespace.HomePage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css"/>
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css"/>
    <link rel="stylesheet" href="assets/css/owl.css"/>
    <link rel="stylesheet" href="assets/css/lightbox.css"/>

    <style>
        .course-card {
            background-color: #1e1e1e;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.2s;
            margin-bottom: 20px;
        }
        .course-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }
        .course-card-content {
            padding: 20px;
        }
        .course-card-content h2 {
            color: #ff7f00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2 class="text-center mb-4">Selected Courses</h2>
            <div class="row">
                <asp:Repeater ID="rptCourses" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="course-card">
                                <img src='<%# "Images/" + Eval("CourseName").ToString().ToLower() + ".png" %>' alt='<%# Eval("CourseName") %>' />
                                <div class="course-card-content">
                                    <h2><%# Eval("CourseName") %></h2>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
