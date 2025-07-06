<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #000; /* Black text */
            margin: 0;
            padding: 0;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f8ff; /* Light blue background */
        }

        form {
            background-color: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: #00509e; /* Darker blue for headings */
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
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

        .error-message {
            color: red;
            text-align: center;
            font-weight: bold;
            margin-top: 1rem;
        }

        @media (max-width: 600px) {
            form {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>

    <main>
        <form action="login" method="post">
            <h2>Login</h2>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <input type="submit" value="Login">
            
            <% 
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) {
            %>
                <p class="error-message"><%= errorMessage %></p>
            <% } %>
        </form>
    </main>

</body>
</html>
