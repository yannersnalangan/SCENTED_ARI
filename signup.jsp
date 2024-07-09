<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration form</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

        :root {
            --success-color: green;
            --error-color: red;
        }

        * {
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f1c4ee;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 100px;
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .btn-primary {
            background-color: #fbbeed;
            border-color: #f9b8f6;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: #d699d2;
            border-color: #feccff;
        }

        .form-control {
            width: 100%;
        }

        .form-group.success input {
            border-color: var(--success-color);
        }

        .form-group.error input {
            border-color: var(--error-color);
        }

        .form-group p {
            color: var(--error-color);
            font-size: smaller;
            display: none;
        }

        .form-group small {
            color: red;
            position: absolute;
            visibility: hidden;
        }

        .form-group.error small {
            visibility: visible;
        }

        .text-center {
            text-align: center;
        }

        .link-text {
            margin-top: 15px;
            display: block;
            text-align: center;
        }

        .text-right-label {
            text-align: right;
        }

        .show-password {
            display: flex;
            margin: 0;
            font-size: smaller;
        }

        input[type="checkbox"] {
            width: 15px;
            margin-right: 10px;
        }

        p {
            font-size: 15px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <img src="${pageContext.request.contextPath}/assets/images/new ari.png" alt="Image" class="img-thumbnail">
                </div>
            </div>
            <div class="col-md-8">
                <h2 class="text-center">Registration</h2>
                <form id="form" class="form" method="post" action="${pageContext.request.contextPath}/signup">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="userName" class="text-right-label">Username</label>
                                <input type="text" class="form-control" id="userName" name="userName" pattern="^[a-zA-Z0-9]{4,12}$" required>
                                <p class="userError">*Required</p>
                                <p class="userError">*Username must be alphanumeric and 4-12 characters long.</p>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-right-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$&*]).{8,16}$" required>
                                <label class="show-password"><input type="checkbox" onclick="showPass()">Show Password</label>
                                <p class="passError">*Required</p>
                                <p class="passError">*Password must:<br>
                                    - Include an Uppercase Letter, a Lowercase Letter, a Number, and a Special Character.<br>
                                    - Be 8 to 16 characters long.<br>
                                </p>
                                <p class="isPassSame">*Passwords do not match!</p> 
                            </div>
                            <div class="form-group">
                                <label for="confirmPassword" class="text-right-label">Confirm Password</label>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                                <label class="show-password"><input type="checkbox" onclick="showCon()">Show Password</label>
                                <p class="isPassSame">*Required</p>
                                <p class="isPassSame">*Passwords do not match!</p>
                            </div>
                            <div class="form-group">
                                <label for="firstName" class="text-right-label">First Name</label>
                                <input type="text" class="form-control" id="firstName" name="firstName" pattern="^[a-zA-Z]+$" required>
                                <p id="isfirstReq">*Required</p>
                                <p id="first">*First name should only contain alphabetical characters!</p>
                            </div>
                            <div class="form-group">
                                <label for="middleName" class="text-right-label">Middle Name</label>
                                <input type="text" class="form-control" id="middleName" name="middleName" pattern="^[a-zA-Z]+$">
                                <p id="middle">*Middle name should only contain alphabetical characters!</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="lastName" class="text-right-label">Last Name</label>
                                <input type="text" class="form-control" id="lastName" name="lastName" pattern="^[a-zA-Z]+$" required>
                                <p id="islastReq">*Required</p>
                                <p id="last">*Last name should only contain alphabetical characters!</p>
                            </div>
                            <div class="form-group">
                                <label for="completeAddress" class="text-right-label">Complete Address</label>
                                <input type="text" class="form-control" id="completeAddress" name="completeAddress" required>
                                <p class="addressError">Address must be provided.</p>
                            </div>
                            <div class="form-group">
                                <label for="birthday" class="text-right-label">Birth Date</label>
                                <input type="date" class="form-control" id="birthday" name="birthday" required>
                                <p id="bdayError">*Required</p>
                            </div>
                            <div class="form-group">
                                <label for="mobileNumber" class="text-right-label">Mobile Number</label>
                                <input type="text" class="form-control" id="mobileNumber" name="mobileNumber" pattern="^\d{11}$" required>
                                <p class="numberError">*Required</p>
                                <p class="numberError">*Phone number is invalid! (PH format only)</p>
                            </div>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary" id="submit" name="submit">Register</button>
                        <label for="Already">Already have an account? Click <a href="${pageContext.request.contextPath}/login">here</a></label>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        // Hide all <p> elements initially
        for (let i = 0; i < document.getElementsByTagName("p").length; i++) {
            document.getElementsByTagName("p")[i].style.display = "none";
        }

        // Function to toggle password visibility
        function showPass() {
            let password = document.getElementById("password");
            password.type = (password.type === "password") ? "text" : "password";
        }

        function showCon() {
            let confirmPassword = document.getElementById("confirmPassword");
            confirmPassword.type = (confirmPassword.type === "password") ? "text" : "password";
        }

        // Function to show or hide error messages
        function showOrHideErrors(errors, state) {
            for (let i = 0; i < errors.length; i++) {
                errors[i].style.display = state;
            }
        }

        // Elements
        const form = document.getElementById("form");
        const submit = document.getElementById("submit");
        const username = document.getElementById("userName");
        const password = document.getElementById("password");
        const confirmPassword = document.getElementById("confirmPassword");
        const firstname = document.getElementById("firstName");
        const middlename = document.getElementById("middleName");
        const lastname = document.getElementById("lastName");
        const address = document.getElementById("completeAddress");
        const birthdate = document.getElementById("birthday");
        const number = document.getElementById("mobileNumber");

        const passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^\w\s]).{8,16}$/;
        const alphaPattern = /^[a-zA-Z0-9]{4,12}$/;
        const namePattern = /^[a-zA-Z]+$/;
        const addressPattern = /^[a-zA-Z0-9\s,.-]+$/;
        const numberPattern = /^\d{11}$/;

        const usernameErrors = document.getElementsByClassName("userError");
        const passwordErrors = document.getElementsByClassName("passError");
        const notSame = document.getElementsByClassName("isPassSame");
        const addressErrors = document.getElementsByClassName("addressError");
        const numberErrors = document.getElementsByClassName("numberError");

        function checkForm() {
            const checkAll = {
                "username": true,
                "password": true,
                "same": true,
                "firstname": true,
                "middlename": true,
                "lastname": true,
                "address": true,
                "number": true,
                "birthday": true
            };

            if (!alphaPattern.test(username.value)) {
                checkAll["username"] = false;
                username.style.border = "2px solid red";
                showOrHideErrors(usernameErrors, "block");
            } else {
                username.style.border = "2px solid #999";
                showOrHideErrors(usernameErrors, "none");
            }

            if (confirmPassword.value === "" || password.value !== confirmPassword.value) {
                checkAll["same"] = false;
                password.style.border = "2px solid red";
                confirmPassword.style.border = "2px solid red";
                showOrHideErrors(notSame, "block");
            } else {
                password.style.border = "2px solid #999";
                confirmPassword.style.border = "2px solid #999";
                showOrHideErrors(notSame, "none");
            }

            if (!passwordPattern.test(password.value)) {
                password.style.border = "2px solid red";
                showOrHideErrors(passwordErrors, "block");
                checkAll["password"] = false;
            } else {
                password.style.border = "2px solid #999";
                showOrHideErrors(passwordErrors, "none");
            }

            if (!namePattern.test(firstname.value)) {
                firstname.style.border = "2px solid red";
                checkAll["firstname"] = false;
                document.getElementById("first").style.display = "block";
                document.getElementById("isfirstReq").style.display = "block";
            } else {
                firstname.style.border = "2px solid #999";
                checkAll["firstname"] = true;
                document.getElementById("first").style.display = "none";
                document.getElementById("isfirstReq").style.display = "none";
            }

            if (middlename.value !== "" && !namePattern.test(middlename.value)) {
                middlename.style.border = "2px solid red";
                checkAll["middlename"] = false;
                document.getElementById("middle").style.display = "block";
            } else {
                middlename.style.border = "2px solid #999";
                checkAll["middlename"] = true;
                document.getElementById("middle").style.display = "none";
            }

            if (!namePattern.test(lastname.value)) {
                lastname.style.border = "2px solid red";
                checkAll["lastname"] = false;
                document.getElementById("last").style.display = "block";
                document.getElementById("islastReq").style.display = "block";
            } else {
                lastname.style.border = "2px solid #999";
                checkAll["lastname"] = true;
                document.getElementById("last").style.display = "none";
                document.getElementById("islastReq").style.display = "none";
            }

            if (!addressPattern.test(address.value)) {
                address.style.border = "2px solid red";
                checkAll["address"] = false;
                showOrHideErrors(addressErrors, "block");
            } else {
                address.style.border = "2px solid #999";
                checkAll["address"] = true;
                showOrHideErrors(addressErrors, "none");
            }

            if (!numberPattern.test(number.value)) {
                number.style.border = "2px solid red";
                checkAll["number"] = false;
                showOrHideErrors(numberErrors, "block");
            } else {
                number.style.border = "2px solid #999";
                checkAll["number"] = true;
                showOrHideErrors(numberErrors, "none");
            }

            if (birthdate.value === "") {
                birthdate.style.border = "2px solid red";
                checkAll["birthday"] = false;
                document.getElementById("bdayError").style.display = "block";
            } else {
                birthdate.style.border = "2px solid #999";
                checkAll["birthday"] = true;
                document.getElementById("bdayError").style.display = "none";
            }

            return Object.values(checkAll).every(value => value === true);
        }

        submit.addEventListener("click", (event) => {
            if (!checkForm()) {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>

