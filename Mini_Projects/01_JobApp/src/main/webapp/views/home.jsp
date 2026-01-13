<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal</title>

    <!-- Bootstrap -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">
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
    <div class="row g-4 justify-content-center">

        <!-- Card 1 -->
        <div class="col-md-6">
            <div class="card h-100 shadow-sm border-0 rounded-4">
                <div class="card-body d-flex flex-column justify-content-center align-items-center text-center p-5">
                    <h4 class="fw-bold mb-3">Browse Opportunities</h4>
                    <p class="text-muted mb-4">
                        Explore all available job openings posted on the platform
                    </p>
                    <a href="/viewalljobs" class="btn btn-primary btn-lg px-4">
                        View All Jobs
                    </a>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-6">
            <div class="card h-100 shadow-sm border-0 rounded-4">
                <div class="card-body d-flex flex-column justify-content-center align-items-center text-center p-5">
                    <h4 class="fw-bold mb-3">Post a Job</h4>
                    <p class="text-muted mb-4">
                        Create a new job listing and reach potential candidates
                    </p>
                    <a href="/addjob" class="btn btn-primary btn-lg px-4">
                        Add Job
                    </a>
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
