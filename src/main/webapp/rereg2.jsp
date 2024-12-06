<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recruiter Registration</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f2f5;
        }

        /* Navbar styles */
        .navbar {
            background-color: #1E3264;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar h1 {
            color: white;
            font-size: 24px;
            font-weight: bold;
            margin-left: 20px;
        }

        .navbar a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s;
        }

        .navbar a:hover {
            color: #FFD700; /* Gold color on hover */
        }

        .container {
            height: calc(100vh - 60px); /* Keeping this to fill the view height */
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Changed to flex-start to align at the top */
            padding-top: 20px; /* Add padding to push the content down */
            background-color: #f0f2f5;
        }


        .register-box {
            background-color: white;
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
            width: 500px;
            margin-top: 40px; /* Increased margin to push it down more */
        }


        .register-box h2 {
            margin-bottom: 15px; /* Reduced margin */
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }

        .input-group {
            margin-bottom: 10px; /* Reduced margin */
        }

        .input-group label {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        .input-group input,
        .input-group select {
            width: 100%;
            padding: 8px; /* Reduced padding */
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        .input-group input:focus,
        .input-group select:focus {
            border-color: #1E3264; /* Change border color on focus */
            outline: none; /* Remove outline */
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #1E3264;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px; /* Reduced margin */
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #14254B; /* Darker blue on hover */
        }

        .checkbox-group {
            margin-bottom: 10px; /* Reduced margin */
        }

        .checkbox-group label {
            font-size: 14px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h1>Career Stream</h1>
        <a href="rereg1">Register</a>
    </div>

    <!-- Recruiter Registration Box -->
    <h2 text-align="center" >Recruiter Registration</h2>
    <div class="container">
        <div class="register-box">
            
            <form action="/" method="POST">
                <div class="input-group">
                    <label for="full-name">Full Name</label>
                    <input type="text" id="full-name" placeholder="Enter your full name" required>
                </div>
                <div class="input-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" placeholder="Enter your email" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" placeholder="Create a password" required>
                </div>
                <div class="input-group">
                    <label for="confirm-password">Confirm Password</label>
                    <input type="password" id="confirm-password" placeholder="Confirm your password" required>
                </div>
                <div class="input-group">
                    <label for="company-name">Company Name</label>
                    <input type="text" id="company-name" placeholder="Enter your company name" required>
                </div>
                <div class="input-group">
                    <label for="company-website">Company Website</label>
                    <input type="url" id="company-website" placeholder="Enter your company website" required>
                </div>
                <div class="input-group">
                    <label for="industry">Industry</label>
                    <select id="industry" required>
                        <option value="">Select Industry</option>
                        <option value="technology">Technology</option>
                        <option value="healthcare">Healthcare</option>
                        <option value="finance">Finance</option>
                        <option value="education">Education</option>
                        <option value="retail">Retail</option>
                        <option value="manufacturing">Manufacturing</option>
                        <option value="transportation">Transportation</option>
                        <option value="hospitality">Hospitality</option>
                        <option value="real_estate">Real Estate</option>
                        <option value="energy">Energy</option>
                        <option value="entertainment">Entertainment</option>
                        <option value="telecommunications">Telecommunications</option>
                        <option value="non_profit">Non-Profit</option>
                        <option value="agriculture">Agriculture</option>
                    </select>
                </div>
                
                        
                    </select>
                </div>
                <div class="input-group">
                    <label for="company-size">Company Size</label>
                    <select id="company-size" required>
                        <option value="">Select Size</option>
                        <option value="small">Small</option>
                        <option value="medium">Medium</option>
                        <option value="large">Large</option>
                       
                    </select>
                </div>
                <div class="input-group">
                    <label for="phone">Phone Number</label>
                    <input type="text" id="phone" placeholder="Enter your phone number" required>
                </div>
                <div class="input-group">
                    <label for="location">Company Location</label>
                    <input type="text" id="location" placeholder="Enter your company location" required>
                </div>
                <div class="input-group">
                    <label for="address">Address</label>
                    <input type="text" id="address" placeholder="Enter your address" required>
                </div>
                <div class="input-group">
                    <label for="city">City</label>
                    <input type="text" id="city" placeholder="Enter your city" required>
                </div>
                <div class="input-group">
                    <label for="state">State/Province</label>
                    <input type="text" id="state" placeholder="Enter your state/province" required>
                </div>
                <div class="input-group">
                    <label for="postal-code">Postal Code</label>
                    <input type="text" id="postal-code" placeholder="Enter your postal code" required>
                </div>
                <div class="input-group">
                    <label for="country">Country</label>
                    <input type="text" id="country" placeholder="Enter your country" required>
                </div>
                <div class="input-group">
                    <label for="linkedin">LinkedIn Profile</label>
                    <input type="url" id="linkedin" placeholder="Enter your LinkedIn profile URL">
                </div>
                <div class="checkbox-group">
                    <label><input type="checkbox" required> I agree to the Terms and Conditions</label>
                </div>
                <div class="checkbox-group">
                    <label><input type="checkbox" required> I agree to the Privacy Policy</label>
                </div>
                <button type="submit">Register as Recruiter</button>
            </form>
        </div>
    </div>
</body>
</html>
