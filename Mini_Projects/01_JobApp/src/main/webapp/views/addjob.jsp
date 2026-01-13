<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold fs-3" href="#">Job Portal Web App</a>

        <button class="navbar-toggler" type="button"
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
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewalljobs">All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://navesh.vercel.app/">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Section -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-lg-7 col-md-9">

            <div class="card job-card shadow-lg border-0 rounded-4">
                <div class="card-body p-4 p-md-5">

                    <h2 class="text-center fw-bold mb-2">
                        Post a New Job
                    </h2>
                    <p class="text-center text-muted mb-4">
                        Provide complete job details to publish a new opportunity
                    </p>

                    <form action="handleForm" method="post">

                        <div class="mb-3">
                            <label for="postId" class="form-label fw-semibold">
                                Post ID
                            </label>
                            <input type="text"
                                   class="form-control"
                                   id="postId"
                                   name="postId"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label for="postProfile" class="form-label fw-semibold">
                                Post Profile
                            </label>
                            <input type="text"
                                   class="form-control"
                                   id="postProfile"
                                   name="postProfile"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label for="postDesc" class="form-label fw-semibold">
                                Post Description
                            </label>
                            <textarea class="form-control"
                                      id="postDesc"
                                      name="postDesc"
                                      rows="3"
                                      required></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="reqExperience" class="form-label fw-semibold">
                                Required Experience
                            </label>
                            <input type="number"
                                   class="form-control"
                                   id="reqExperience"
                                   name="reqExperience"
                                   required>
                        </div>

                        <div class="mb-4">
                            <label for="postTechStack" class="form-label fw-semibold">
                                Tech Stack (Hold Ctrl / Cmd to select multiple)
                            </label>
                            <select multiple
                                    class="form-select"
                                    id="postTechStack"
                                    name="postTechStack"
                                    size="8"
                                    required>

                                <option value="Java">Java</option>
                                <option value="JavaScript">JavaScript</option>
                                <option value="Swift">Swift</option>
                                <option value="TypeScript">TypeScript</option>
                                <option value="Go">Go</option>
                                <option value="Kotlin">Kotlin</option>
                                <option value="Rust">Rust</option>
                                <option value="PHP">PHP</option>
                                <option value="HTML5">HTML5</option>
                                <option value="CSS3">CSS3</option>
                                <option value="GraphQL">GraphQL</option>
                                <option value="Raspberry Pi">Raspberry Pi</option>
                                <option value="Arduino">Arduino</option>
                                <option value="IoT (Internet of Things)">IoT (Internet of Things)</option>
                                <option value="Apache Kafka">Apache Kafka</option>
                                <option value="Elasticsearch">Elasticsearch</option>
                                <option value="Unity">Unity</option>
                                <option value="Game Development">Game Development</option>
                                <option value="Vue.js">Vue.js</option>
                                <option value="Angular">Angular</option>
                                <option value="React Native">React Native</option>
                                <option value="Flutter">Flutter</option>
                                <option value="Node.js">Node.js</option>
                                <option value="Express.js">Express.js</option>
                                <option value="Django">Django</option>
                                <option value="Flask">Flask</option>
                                <option value="Ruby on Rails">Ruby on Rails</option>
                                <option value="Laravel">Laravel</option>
                                <option value="TensorFlow">TensorFlow</option>
                                <option value="PyTorch">PyTorch</option>
                                <option value="Kubernetes">Kubernetes</option>
                                <option value="Docker">Docker</option>
                                <option value="Jenkins">Jenkins</option>
                                <option value="AWS (Amazon Web Services)">AWS (Amazon Web Services)</option>
                                <option value="Azure">Azure</option>
                                <option value="Google Cloud">Google Cloud</option>
                                <option value="DevOps">DevOps</option>
                                <option value="Blockchain">Blockchain</option>
                                <option value="Machine Learning">Machine Learning</option>
                                <option value="Artificial Intelligence">Artificial Intelligence</option>
                                <option value="Cybersecurity">Cybersecurity</option>
                                <option value="CISSP (Certified Information Systems Security Professional)">
                                    CISSP (Certified Information Systems Security Professional)
                                </option>
                                <option value="CompTIA Security+">CompTIA Security+</option>
                                <option value="Certified Ethical Hacker (CEH)">
                                    Certified Ethical Hacker (CEH)
                                </option>
                                <option value="Scrum">Scrum</option>
                                <option value="Agile">Agile</option>
                                <option value="Kanban">Kanban</option>
                            </select>
                        </div>

                        <button type="submit"
                                class="btn btn-primary w-100 py-2 fw-bold">
                            Submit Job Post
                        </button>

                    </form>

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
