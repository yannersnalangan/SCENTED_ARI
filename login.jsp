<%-- 
    Document   : Log in
    Created on : 27 May 2024, 8:12:49 pm
    Author     : Alyanna Nalangan
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login_form.css">
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Login</title>
</head>
<body>
  <div class="wrapper">
    <div class="container main">
        <div class="row">
            <div class="col-md-6 side-image">
                <img src="${pageContext.request.contextPath}/assets/images/SCENTED ARI.png" alt="">
                <div class="text">
                </div>
            </div>
            <div class="col-md-6 right">
                <div class="input-box">
                   <header>Log in</header>
                   <div class="input-field">
                       <form id="loginForm" action="login" method="POST">
                        <input type="text" class="input" id="userName" name="userName" required="" autocomplete="off">
                        <label for="username">Username</label>
                        <span class="error"></span>
                    </div>
                   <div class="input-field">
                        <input type="password" class="input" id="password" name="password" required="">
                        <label for="password">Password</label>
                        <span class="error"></span>
                    </div>
                   <div class="input-field">
                        <input type="submit" id="submitButton" class="submit" value="Log In">
                   </div>
                   <div class="signin">
                    <span>Don't have an account? <a href="${pageContext.request.contextPath}/signup">Register here</a></span>
                   </div>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
function submitForm(event) {
    event.preventDefault(); // Prevent form submission

    const userNameRegex = /^[a-zA-Z0-9]{4,12}$/;
    const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$&*])[A-Za-z\d!@#$&*]{8,16}$/;
    const userName = document.getElementById('userName');
    const password = document.getElementById('password');
    const userNameError = document.querySelector('#userName + .error');
    const passwordError = document.querySelector('#password + .error');
    let isValid = true;

    function validateInput(input, regex, errorMessage, errorSpan) {
        if (!regex.test(input.value)) {
            if (errorSpan) errorSpan.textContent = errorMessage;
            input.style.borderColor = 'red';
            isValid = false;
            if (errorSpan) errorSpan.style.color = 'red';
        } else {
            if (errorSpan) errorSpan.textContent = '';
            input.style.borderColor = 'green';
        }
    }

    validateInput(userName, userNameRegex, 'Username must be alphanumeric and between 4 to 12 characters', userNameError);
    validateInput(password, passwordRegex, 'Password must be alphanumeric (8 to 16 characters) with at least 1 capital letter, 1 small letter, 1 number, and 1 special character (!@#$&*)', passwordError);

    const requiredFields = [
        { input: userName, error: userNameError, message: 'Please enter your Username' },
        { input: password, error: passwordError, message: 'Please enter your Password' }
    ];
    
    requiredFields.forEach(field => {
        if (field.input.value === '') {
            if (field.error) field.error.textContent = field.message;
            field.input.style.borderColor = 'red';
            if (field.error) field.error.style.color = 'red';
            isValid = false;
        }
    });

    if (isValid) {
        alert('User has been successfully logged in');
        // Submit the form if validation is successful
        document.getElementById('loginForm').submit();
    } else {
        alert('Please check your inputs and try again.');
    }
}

document.getElementById('submitButton').addEventListener('click', submitForm);
</script>

</body>
</html>
