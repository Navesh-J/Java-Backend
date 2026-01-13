<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>

    <!-- Bootstrap -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">

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

<!-- Main Content -->
<div class="container py-5">

    <h2 class="mb-5 text-center fw-bold">
        Job Post List
    </h2>

    <div class="row row-cols-1 row-cols-md-2 g-4">

        <c:forEach var="jobPost" items="${jobPosts}">

            <div class="col">
                <div class="card h-100 border-dark bg-dark text-white shadow-lg rounded-4">
                    <div class="card-body p-4">

                        <h5 class="card-title fw-bold mb-3">
                            ${jobPost.postProfile}
                        </h5>

                        <p class="card-text mb-3">
                            <strong>Description:</strong><br>
                            ${jobPost.postDesc}
                        </p>

                        <p class="card-text mb-3">
                            <strong>Experience Required:</strong>
                            ${jobPost.reqExperience} years
                        </p>

                        <p class="card-text mb-2">
                            <strong>Tech Stack:</strong>
                        </p>

                        <ul class="mb-0">
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>

                    </div>

                    <div class="card-footer bg-transparent border-0 text-center">
                        <!-- Optional footer content -->
                    </div>
                </div>
            </div>

        </c:forEach>

    </div>
</div>

<!-- Bootstrap JS -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
