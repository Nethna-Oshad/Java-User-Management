<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.model.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #000; /* Black text */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        main {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 100%;
            max-width: 400px;
            background-color: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2, h3 {
            color: #00509e; /* Darker blue for headings */
            margin-bottom: 1.5rem;
        }

        form {
            width: 100%;
            margin-bottom: 2rem;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="date"] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1rem;
        }

        input[type="submit"] {
            background-color: #00509e; /* Light blue button */
            color: white;
            border: none;
            padding: 0.75rem;
            width: 100%;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #003d7a; /* Darker blue on hover */
        }

        /* Success and Error Messages */
        p {
            font-weight: bold;
            margin-top: 1rem;
        }

        p.success-message {
            color: green;
        }

        p.error-message {
            color: red;
        }

        /* Logout Button */
        .logout-button {
            background-color: #00509e;
            color: white;
            border: none;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            margin-top: 1.5rem;
        }

        .logout-button:hover {
            background-color: #003d7a;
        }

        @media (max-width: 600px) {
            main {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <%
        // Retrieve the user object from session and check if user is logged in
        User user = (User) session.getAttribute("user");
        if (user == null) {
            // Redirect to login if not logged in
            response.sendRedirect("login.jsp");
        } else {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    %>
        <main>
        
        <br>
        <br>
            <h2>Welcome, <%= user.getUsername() %>!</h2>
            <h3>Your Profile</h3>

            <!-- Profile Update Form -->
            <form action="profile" method="post">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= user.getEmail() %>" required><br>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="<%= user.getPassword() %>" required><br>

                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" value="<%= user.getFullName() %>" required><br>

                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" id="dateOfBirth" name="dateOfBirth" value="<%= sdf.format(user.getDateOfBirth()) %>" required><br>

                <input type="submit" value="Update Profile">
            </form>

            <!-- Profile Deletion Form -->
            <h3>Delete Profile</h3>
            <form action="deleteProfile" method="post" onsubmit="return confirm('Are you sure you want to delete your profile? This action cannot be undone.');">
                <input type="submit" value="Delete Profile">
            </form>

            <!-- Success or Error Messages -->
            <%
                String successMessage = (String) request.getAttribute("successMessage");
                if (successMessage != null) {
            %>
                <p class="success-message"><%= successMessage %></p>
            <%
                }
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) {
            %>
                <p class="error-message"><%= errorMessage %></p>
            <%
                }
            %>

            <!-- Logout Button -->
            <a href="logout"><button class="logout-button">Logout</button></a>
        </main>
    <% } %>

</body>
</html>
