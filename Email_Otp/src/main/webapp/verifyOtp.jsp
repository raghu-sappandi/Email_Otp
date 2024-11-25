<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .otp-input {
        width: 50px;
        height: 50px;
        text-align: center;
        margin: 0 5px;
        font-size: 1.5rem;
    }
</style>
</head>
<body>
<!--<form action="VerifyOtp" method="post">
    <label for="otp">Enter OTP:</label>
    <input type="text" name="otp" required>
    <button type="submit">Verify OTP</button>
</form>-->

<form action="VerifyOtp" method="post">
        <div id="otp" class="d-flex justify-content-between">
            <input type="text" class="form-control otp-input" name="digit1" maxlength="1" pattern="[0-9]" required>
            <input type="text" class="form-control otp-input" name="digit2" maxlength="1" pattern="[0-9]" required>
            <input type="text" class="form-control otp-input" name="digit3" maxlength="1" pattern="[0-9]" required>
            <input type="text" class="form-control otp-input" name="digit4" maxlength="1" pattern="[0-9]" required>
            <input type="text" class="form-control otp-input" name="digit5" maxlength="1" pattern="[0-9]" required>
            <input type="text" class="form-control otp-input" name="digit6" maxlength="1" pattern="[0-9]" required>
        </div>
        <div class="mt-3">
            <button type="submit" class="btn btn-primary">Verify OTP</button>
        </div>
        
        <script>
            // Automatically move focus to the next input
            const otpInputs = document.querySelectorAll('.otp-input');
        
            otpInputs.forEach((input, index) => {
                input.addEventListener('input', (event) => {
                    const value = event.target.value;
                    if (value && index < otpInputs.length - 1) {
                        otpInputs[index + 1].focus();
                    }
                });
        
                input.addEventListener('keydown', (event) => {
                    if (event.key === 'Backspace' && !input.value && index > 0) {
                        otpInputs[index - 1].focus();
                    }
                });
            });
        </script>
        
    </form>

</body>
</html>