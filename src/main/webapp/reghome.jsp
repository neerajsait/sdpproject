<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.klef.jfsd.springboot.model.Recruiter"%>
    <%
Recruiter rq = (Recruiter)session.getAttribute("recruiter");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recruiter Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <!-- Sidebar Container -->
    <div class="sidebar-container">
        <!-- Menu Icon (Hamburger) -->
        <div class="menu-icon">
            <i class="fas fa-bars" onclick="toggleSidebar()"></i>
        </div>

        <!-- Sidebar -->
        <div class="sidebar" id="sidebar">
            <div class="sidebar-header"><br><br>
                <h2>Welcome Recruiter</h2>
            </div>
            <ul>
                <li><a href="home.html"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-btn" onclick="toggleDropdown('jobPostings')">
                        <i class="fas fa-briefcase"></i> Manage Job Postings
                        <span class="arrow">&#9662;</span>
                    </a>
                    <ul class="dropdown-content" id="jobPostings-dropdown">
                        <li><a href="view_job_postings.html"><i class="fas fa-eye"></i> View Job Postings</a></li>
                        <li><a href="edit_job_posting.html"><i class="fas fa-user-edit"></i> Edit Job Posting</a></li>
                        <li><a href="add_job_posting.html"><i class="fas fa-plus"></i> Add New Posting</a></li>
                    </ul>
                </li>
                <li><a href="applications.html"><i class="fas fa-file-alt"></i> View Applications</a></li>

                <li><a href="reports.html"><i class="fas fa-chart-line"></i> Reports</a></li>
                <li><a href="settings.html"><i class="fas fa-cogs"></i> Settings</a></li>
            </ul>
        </div>
    </div>

    <div class="main-content" id="mainContent">
        <header>
            <h1>Recruiter Dashboard</h1>
            <div class="user-info">
              <%-- Welcome <%=emp.getName()%> --%>
                <button class="logout-btn" onclick="logout()">Logout</button>
            </div>
        </header>
        
        <section class="dashboard-cards">
            <div class="card">
                <h3>Total Job Postings</h3>
                <p>30</p>
            </div>
            <div class="card">
                <h3>Total Candidates</h3>
                <p>200</p>
            </div>
            <div class="card">
                <h3>Interviews Scheduled</h3>
                <p>15</p>
            </div>
        </section>

        <!-- Job Status Overview Section -->
        <section class="job-status">
            <h2>Job Status Overview</h2>
            <div class="status">
                <div>Open Jobs: 20</div>
                <div>Closed Jobs: 5</div>
                <div>Pending Approval: 5</div>
            </div>
        </section>


        

        

        <!-- Interview Calendar Section -->
        <section class="interview-calendar">
            <h2>Interview Calendar</h2>
            <p>Quickly view and manage your scheduled interviews.</p>
            <button onclick="location.href='calendar.html'">Go to Calendar</button>
        </section>

        

        <!-- Task List Section -->
        <section class="task-list">
            <h2>Task List</h2>
            <ul>
                <li>Post new job opening for Developer</li>
                <li>Follow up with shortlisted candidates</li>
                <li>Review applications for Manager position</li>
            </ul>
        </section>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('active');
        }

        function toggleDropdown(type) {
            const dropdownContent = document.getElementById(`${type}-dropdown`);
            const arrow = dropdownContent.previousElementSibling.querySelector('.arrow');
            dropdownContent.classList.toggle('show');

            // Rotate arrow when dropdown is toggled
            if (dropdownContent.classList.contains('show')) {
                arrow.style.transform = "rotate(180deg)";
            } else {
                arrow.style.transform = "rotate(0deg)";
            }
        }

        // Close sidebar when clicking outside of it
        document.addEventListener('click', function(event) {
            const sidebar = document.getElementById('sidebar');
            const menuIcon = document.querySelector('.menu-icon');
            if (!sidebar.contains(event.target) && !menuIcon.contains(event.target) && sidebar.classList.contains('active')) {
                sidebar.classList.remove('active');
            }
        });

        function logout() {
            window.location.href = "login.html";
        }
    </script>
</body>
</html>
