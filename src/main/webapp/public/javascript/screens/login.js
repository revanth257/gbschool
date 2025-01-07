/**
 * 
 */

 document.getElementById('loginForm').addEventListener('submit', function (event) {
    event.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    // Dummy RESTful API request
    fetch('https://dummyapi.io/data/v1/user/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'app-id': 'dummy-app-id'  // Replace with your actual app-id if using a real API
        },
        body: JSON.stringify({ email, password })
    })
    .then(response => response.json())
    .then(data => {
        // Assuming the dummy API returns { success: true } on successful login
        if (data.success) {
            alert('Login Successful');
            // Redirect to home or dashboard
            window.location.href = "/home";
        } else {
            alert('Invalid credentials, please try again.');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('There was an issue with the login process. Please try again later.');
    });
});

// Event listener for "Forgot Password"
document.getElementById('forgotPassword').addEventListener('click', function (event) {
    event.preventDefault();
    alert('Redirecting to Forgot Password page...');
    // Redirect to forgot password page (or open a modal)
    window.location.href = "/forgot-password";
});
