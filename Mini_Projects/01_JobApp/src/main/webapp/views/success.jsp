<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.navesh.JobApp.model.JobPost" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>

    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">

    <!-- Inline styles (kept, lightly refined) -->
    <style>
        .job-details-card {
            border: 2px solid #343a40;
            background-color: #212529;
            color: #ffffff;
            border-radius: 16px;
        }

        .job-details-card ul {
            padding-left: 20px;
            margin-bottom: 0;
        }

        .job-details-card li {
            margin-bottom: 6px;
        }
    </style>

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning shadow-sm">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">
            Job Portal Web App
        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-2">
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="viewalljobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="https://navesh.vercel.app/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<!-- Main Content -->
<div class="container py-5">
    <h2 class="mb-4 text-center fw-bold">
        Job Post Details
    </h2>

    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">

            <div class="card job-details-card shadow-lg">
                <div class="card-body p-4 p-md-5">

                    <h4 class="card-title fw-bold mb-3">
                        <%= myJobPost.getPostProfile() %>
                    </h4>

                    <p class="card-text mb-3">
                        <strong>Description:</strong><br>
                        <%= myJobPost.getPostDesc() %>
                    </p>

                    <p class="card-text mb-3">
                        <strong>Experience Required:</strong>
                        <%= myJobPost.getReqExperience() %> years
                    </p>

                    <p class="card-text mb-2">
                        <strong>Tech Stack:</strong>
                    </p>

                    <ul>
                        <% for (String tech : myJobPost.getPostTechStack()) { %>
                            <li><%= tech %></li>
                        <% } %>
                    </ul>

                </div>

                <div class="card-footer bg-transparent border-0 text-center pb-4">
                    <!-- Optional footer content -->
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
