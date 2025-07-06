<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - School Management System</title>
    <style>
        /* General Styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #000; /* Black text */
        }

        header {
            background-color: #00509e; /* Dark blue header */
            color: white;
            padding: 1rem;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }

        nav {
            display: flex;
            justify-content: center;
            background-color: #003d7a; /* Slightly darker blue for navigation */
        }

        nav a {
            color: white;
            padding: 1rem;
            text-decoration: none;
            font-size: 1.2rem;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #00509e; /* Light blue on hover */
        }

        main {
            padding: 2rem;
            text-align: center;
        }

        main h2 {
            color: #00509e;
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .welcome-message {
            font-size: 1.5rem;
            margin-bottom: 2rem;
            color: #333;
        }

        .cta-button {
            background-color: #00509e;
            color: white;
            border: none;
            padding: 1rem 2rem;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .cta-button:hover {
            background-color: #003d7a;
        }

        /* Footer Styling */
        footer {
            background-color: #003d7a;
            color: white;
            padding: 1rem;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            nav a {
                padding: 0.8rem;
                font-size: 1rem;
            }

            main h2 {
                font-size: 1.8rem;
            }

            .cta-button {
                padding: 0.8rem 1.5rem;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>School Management System</h1>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="home.jsp">Home</a>
        <a href="register.jsp">Register</a>
        <a href="login.jsp">Login</a>
        <a href="profile.jsp">Profile</a>
    </nav>

    <!-- Main Content -->
    <main>
        <h2>Welcome to Our Online School Management System</h2>
        <p class="welcome-message">Manage student data, teachers, classes, attendance, and more!</p>
        <a href="login.jsp">
            <button class="cta-button">Get Started</button>
        </a>
    </main>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 School Management System. All rights reserved.</p>
    </footer>
</body>
</html>
