<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gudea&display=swap" rel="stylesheet">
            <style>
                @import url("ViewAllProjects.css");
            </style>
            <link rel="stylesheet" type="text/css"
                href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <title>View All Projects</title>
        </head>

        <body>

            <div>
                <nav id="navbar">
                    <div id="nav1">
                        <h1>
                            <i style="font-size: 50px;" class="fa fa-laptop"></i>&nbsp ProJeM
                        </h1>
                    </div>
                    <div id="list">
                        <ul>
                            <li><a href="home" class="btn-1"><span><i class="fa fa-home"></i>&nbsp</span>Home</a></li>
                            <li><a href="loginForm" class="btn-1"><span><i class="fa fa-user"></i>&nbsp</span>Login</a>
                            </li>
                            <li><a href="registerForm" class="btn-1"><span><i
                                            class="fa fa-users"></i>&nbsp</span>Register</a></li>
                            <li><a href="FAQ" class="btn-1"><span>&nbsp</span>FAQs</a></li>
                            <li><a href="contact" class="btn-1"><span><i class="fa fa-phone"></i>&nbsp</span>Contact
                                    Us</a></li>

                        </ul>
                    </div>

                </nav>
            </div>

            <div id="main-body" class="container">
                <table class="table table-striped">
                    <tr align="center">
                        <th colspan="7">
                            <h3>Project Details</h3>
                        </th>
                    </tr>
                    <tr style="letter-spacing:2px">
                        <th>Project Name</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${listProjectKey}" var="project">
                        <tr class="table-data ">
                            <td>${project.projectName}</td>
                            <td>${project.startDate}</td>
                            <td>${project.endDate}</td>
                            <!-- <td><button type="button" class="btn btn-danger">
                                    <a style="color: white; text-decoration: none;"
                                        href="${pageContext.request.contextPath }/deleteuser/${user.id}">Delete</a>
                                </button></td> -->

                        </tr>
                    </c:forEach>

                </table>
            </div>



        </body>

        </html>