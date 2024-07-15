<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showquestion.aspx.cs" Inherits="FeedBackSystem.showquestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/lightbox.css" />
    <style>
        body {
            background-color: #000;
            color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header-area {
            width: 100%;
            position: sticky;
            top: 0;
            z-index: 1000;
            background-color: #1e1e1e;
        }

        .form-container {
            margin-top: 80px;
            padding: 20px;
            background-color: #1e1e1e;
            border-radius: 10px;
        }

        .form-group label {
            color: #ff7f00;
        }

        .form-container .row {
            display: flex;
            flex-wrap: wrap;
        }

        .form-container .col-6 {
            flex: 0 0 50%;
            max-width: 50%;
            padding: 10px;
        }

        .form-container .form-control {
            width: 100%;
        }


        .btn-orange {
            background-color: #ff7f00;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .btn-orange:hover {
                background-color: #cc6600;
            }
    </style>
</head>
<body>
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <a href="index.html" class="logo">Add Question</a>
                        <ul class="nav">
                            <li><a href="index.aspx" class="active">Home</a></li>
                            <li><a href="meetings.html">Meetings</a></li>
                            <li><a href="#apply">Apply Now</a></li>
                            <li class="has-sub">
                                <a href="javascript:void(0)">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="meetings.html">Upcoming Meetings</a></li>
                                    <li><a href="meeting-details.html">Meeting Details</a></li>
                                </ul>
                            </li>
                            <li><a href="#courses">Courses</a></li>
                            <li><a href="#contact">Contact Us</a></li>
                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <div class="container form-container">
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="DropDownList1">Select Technology:</label>

                <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                    <asp:ListItem>HTML</asp:ListItem>
                    <asp:ListItem>CSS</asp:ListItem>
                    <asp:ListItem>JS</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox1">Qusetion 1 : </label>
                        <asp:Label CssClass="form-control" ID="Label1" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox2">Qusetion 2 :</label>
                        <asp:Label CssClass="form-control" ID="Label2" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox3">Qusetion 3 :</label>
                        <asp:Label CssClass="form-control" ID="Label3" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox4">Qusetion 4 :</label>
                        <asp:Label CssClass="form-control" ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox5">Qusetion 5 :</label>
                        <asp:Label CssClass="form-control" ID="Label5" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox6">Qusetion 6 :</label>
                        <asp:Label CssClass="form-control" ID="Label6" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox7">Qusetion 7 :</label>
                        <asp:Label CssClass="form-control" ID="Label7" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox8">Qusetion 8 :</label>
                        <asp:Label CssClass="form-control" ID="Label8" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox9">Qusetion 9 :</label>
                        <asp:Label CssClass="form-control" ID="Label9" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="TextBox10">Qusetion 10 :</label>
                        <asp:Label CssClass="form-control" ID="Label10" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            
        </form>
    </div>
</body>
</html>
