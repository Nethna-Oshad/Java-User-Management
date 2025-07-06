<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #F2F6F6; /* Light background */
            color: #000; /* Black text */
            margin: 0;
            padding: 0;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #F2F6F6;
        }

        form {
            background-color: white;
            padding: 2.5rem;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            transition: all 0.3s ease;
        }

        form:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #5692F9; /* Darker blue for headings */
            margin-bottom: 1.5rem;
            font-size: 2rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
            color: #61B6E6;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1.2rem;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 1rem;
            background-color: #F2F6F6;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        input[type="password"]:focus {
            border-color: #61B6E6;
            outline: none;
        }

        input[type="submit"] {
            background-color: #5692F9; /* Main blue button */
            color: white;
            border: none;
            padding: 0.75rem;
            width: 100%;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 6px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #61B6E6; /* Lighter blue on hover */
            transform: translateY(-2px);
        }

        input[type="submit"]:active {
            background-color: #5692F9; /* Return to original color on click */
            transform: translateY(0);
        }

        /* Small screen adjustments */
        @media (max-width: 600px) {
            form {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <main>
        <form action="register" method="post" onsubmit="return validateForm()">
            <h2>Register</h2>

            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="dateOfBirth">Date of Birth:</label>
            <input type="date" id="dateOfBirth" name="dateOfBirth" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Register">
        </form>

        <script>
            function validateForm() {
                var password = document.getElementById("password").value;
                var message = "";

                // Check for minimum 8 characters
                if (password.length < 8) {
                    message += "Password must be at least 8 characters long.\n";
                }
                // Check for at least one uppercase letter
                if (!/[A-Z]/.test(password)) {
                    message += "Password must contain at least one uppercase letter.\n";
                }
                // Check for at least one lowercase letter
                if (!/[a-z]/.test(password)) {
                    message += "Password must contain at least one lowercase letter.\n";
                }
                // Check for at least one number
                if (!/\d/.test(password)) {
                    message += "Password must contain at least one number.\n";
                }

                // If there's a message, alert the user
                if (message !== "") {
                    alert(message);
                    return false; // Prevent form submission
                }
                return true; // Allow form submission
            }
        </script>
    </main>
</body>


</html>
