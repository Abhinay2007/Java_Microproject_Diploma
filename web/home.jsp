<%-- 
    Document   : home
    Created on : Oct 19, 2024, 8:57:52 PM
    Author     : Sushil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.IOException , java.io.PrintWriter , java.sql.Connection , java.sql.DriverManager , java.sql.PreparedStatement , java.sql.ResultSet, java.sql.SQLException, java.util.logging.Level, java.util.logging.Logger"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courseplus</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        header {
            background-color: #f39c12;
            padding: 20px;
            text-align: center;
            color: white;
        }

        header h1 {
            margin: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        nav {
            background-color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            gap: 15px;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            text-decoration: none;
            color: #333;
        }

        .featured {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .featured img {
            width: 100%;
            max-width: 400px;
            border-radius: 5px;
        }

        .featured-text {
            max-width: 600px;
            margin-left: 20px;
            color: orange;
        }

        .featured-text h2 {
            color: #333;
        }

        .popular-courses {
            margin-top: 40px;
        }

        .popular-courses h2 {
            text-align: left;
            color: #333;
        }

        .course-grid {
            display: flex;
            gap: 20px;
            justify-content: space-between;
        }

        .course-card {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 30%;
        }

        .course-card img {
            max-width: 100px;
            margin-bottom: 10px;
        }

        .course-card h3 {
            color: #333;
            font-size: 18px;
        }

        .course-card p {
            color: #777;
            font-size: 14px;
        }

        .course-card .price {
            color: #f39c12;
            font-size: 16px;
            margin-top: 10px;
        }

        .course-card button {
            background-color: #f39c12;
            color: white;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .course-card button:hover {
            background-color: #d35400;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Learn from the best</h1>
        <p>Choose from 130,000 online video courses with new additions published every month</p>
        <button>Get Started</button>
    </header>

    <div class="container">
        <!-- Navigation -->
        <nav>
            <ul>
                <li><a href="#">Explore</a></li>
                <li><a href="#">Courses</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">Books</a></li>
                <li><a href="#">Articles</a></li>
            </ul>
        </nav>

        <!-- Featured Classes Section -->
        <section class="featured">
            <img src="Abc.jpeg" alt="Featured Course">
            <div class="featured-text">
                <h1>Welcome to our website</h1>
                <p>AISSMS e-learning website offers a comprehensive, engaging platform for online education, designed to empower learners of all ages and skill levels. With a wide range of courses covering various subjects, the website provides interactive lessons, expert instructors, and flexible learning schedules. Whether you're looking to upskill, explore new interests, or enhance your professional qualifications, the platform offers personalized learning experiences, progress tracking, and certifications to support your growth. Accessible from any device, it enables users to learn at their own pace, from anywhere in the world, fostering a community of lifelong learners.</p>
            </div>
        </section>

        <!-- Popular Courses Section -->
        <section class="popular-courses">
            <h2>Popular Classes</h2>
            <div class="course-grid">
                    <div class="course-card">
                    <img src="https://cdn.prod.website-files.com/6320125ace536b6ad148eca3/66502d746f57d299fe0e0c31_Image%201-Express.js.webp" alt="JavaScript Course"><br><br>
                    <h3>Learn JavaScript and Express</h3>
                    <p>Become a professional JavaScript developer with this comprehensive course.</p>
                    <div class="price">$14.99</div>
                   
                        <% 
                        int a=0;
                        String userid="abcd";
                         try {    
                        Connection c;
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhinay","root","admin");
                         PreparedStatement p =c.prepareStatement("select nodejs from login where uname=?;");
                         userid= (String) getServletContext().getAttribute("userid");
                         p.setString(1, userid);
                         ResultSet rs =p.executeQuery();
                         
                        if (rs.next()) { // Move to the first row of the result set
                                a = rs.getInt(1); // Assign the value to `a`
                            }
                        }
                        catch(Exception e){
                            System.out.println(e);
                            }
                        
                        if(a == 0) {  %>
                        <button onclick="abc1()">Buy Course</button>
                          <script>
                             function abc1() {
                                    window.location.href = "NodejsServlet";  // Replace "anotherPage.html" with your target file
                                  }   
                                
                            </script>
                    
                        <% } else {  %>                                                
                        <button onclick="pqr1()">Watch</button> 
                        <script>
                             function pqr1() {
                                    window.location.href = "Nodejs.html";  // Replace "anotherPage.html" with your target file
                                  }   
                                
                            </script>
                        <% } %>
                           
                    
                    </div>
                <div class="course-card">
                    <img src="https://platri.de/wp-content/uploads/2024/01/Angular-Framework-e1649312852136.png" alt="Angular Course"><br>
                    <h3>Learn Angular Fundamentals</h3>
                    <p>Master the Angular framework and create responsive web applications.</p>
                    <div class="price">$18.99</div>
                    
                            <% 
                            int b=0;
                            String userid1="";
                             try {
                            Connection c1;
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhinay","root","admin");
                             PreparedStatement p1 =c1.prepareStatement("select angular from login where uname=?;");
                             userid1= (String) getServletContext().getAttribute("userid");
                             p1.setString(1, userid1);
                             ResultSet rs1 =p1.executeQuery();

                            if (rs1.next()) { // Move to the first row of the result set
                                    b = rs1.getInt(1); // Assign the value to `a`
                                }
                            }
                            catch(Exception e){
                                System.out.println(e);
                                }

                            if(b == 0) {  %>
                            <button  onclick="abc2()">Buy Course</button>
                            <script>
                             function abc2() {
                                    window.location.href = "AngularServlet";  // Replace "anotherPage.html" with your target file
                                  }   
                                
                            </script>
              
                        <% } else {  %>                                                
                        <button onclick="pqr2()">Watch</button> 
                        <script>
                             function pqr2() {
                                    window.location.href = "Angular.html";  // Replace "anotherPage.html" with your target file
                                  }   
                                
                            </script>
                        <% } %>
                    
                 
                </div>
                <div class="course-card">
                    <img src="https://cdn.prod.website-files.com/61cdf3c5e0b8152652e01082/66667bbeda8fc86a658534aa_thumbnail_Responsive-Web-Design-%3D-SEO-success.jpg" alt="Web Design Course"><br><br>
                    <h3>Responsive Web Design Essentials</h3>
                    <p>Build modern websites using HTML, CSS, and Bootstrap with this course.</p>
                    <div class="price">$11.99</div>
                    <% 
                            int c=0;
                            String userid2="";
                             try {
                            Connection c2;
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            c2=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhinay","root","admin");
                             PreparedStatement p2 =c2.prepareStatement("select html from login where uname=?;");
                             userid2= (String) getServletContext().getAttribute("userid");
                             p2.setString(1, userid2);
                             ResultSet rs2 =p2.executeQuery();

                            if (rs2.next()) { // Move to the first row of the result set
                                    c= rs2.getInt(1); // Assign the value to `a`
                                }
                            }
                            catch(Exception e){
                                System.out.println(e);
                                }

                            if(c == 0) {  %>
                            <button onclick="abc3()">Buy Course</button>
                            <script>
                                     function abc3() {
                                            window.location.href = "HtmlServlet";  // Replace "anotherPage.html" with your target file
                                          }
                            </script>
                            <% } else {  %>                                                
                            <button onclick="pqr3()">Watch</button>
                            <script>
                                     function pqr3() {
                                            window.location.href = "Webdesign.html";  // Replace "anotherPage.html" with your target file
                                          }
                            </script>
                            <% } %>
                 
                </div>
            </div>
        </section>
    </div>

</body>
</html>

