<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>התחברות - Game Changer</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #000 0%, #1a1a1a 100%);
            color: #fff;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .background-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('https://images.unsplash.com/photo-1523381210434-271e8be1f52b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            opacity: 0.1;
            z-index: 1;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 3rem;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.3);
            position: relative;
            z-index: 2;
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .logo-section {
            text-align: center;
            margin-bottom: 2.5rem;
        }

        .logo {
            width: 80px;
            height: 80px;
            background: #fff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            font-weight: 900;
            color: #000;
            margin: 0 auto 1rem;
            box-shadow: 0 10px 30px rgba(255, 255, 255, 0.1);
        }

        .brand-title {
            font-size: 2rem;
            font-weight: 900;
            letter-spacing: 0.3rem;
            margin-bottom: 0.5rem;
            background: linear-gradient(45deg, #fff, #ccc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .brand-subtitle {
            font-size: 0.9rem;
            opacity: 0.7;
            letter-spacing: 0.2rem;
        }

        .form-tabs {
            display: flex;
            margin-bottom: 2rem;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 12px;
            padding: 4px;
        }

        .tab-btn {
            flex: 1;
            background: transparent;
            border: none;
            color: #fff;
            padding: 1rem;
            font-size: 0.9rem;
            font-weight: 600;
            letter-spacing: 0.1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            border-radius: 8px;
        }

        .tab-btn.active {
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 2px 10px rgba(255, 255, 255, 0.1);
        }

        .form-container {
            position: relative;
        }

        .form-section {
            display: none;
        }

        .form-section.active {
            display: block;
            animation: fadeIn 0.3s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            font-size: 0.9rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            opacity: 0.9;
            letter-spacing: 0.05rem;
        }

        .form-group input {
            width: 100%;
            padding: 1rem 1.2rem;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            color: #fff;
            font-size: 1rem;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
        }

        .form-group input:focus {
            outline: none;
            border-color: rgba(255, 255, 255, 0.3);
            background: rgba(255, 255, 255, 0.08);
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
        }

        .form-group input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }

        .forgot-password {
            text-align: left;
            margin-bottom: 2rem;
        }

        .forgot-password a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .forgot-password a:hover {
            color: #fff;
        }

        .submit-btn {
            width: 100%;
            background: linear-gradient(45deg, #fff, #f0f0f0);
            border: none;
            color: #000;
            padding: 1.2rem;
            font-size: 1rem;
            font-weight: 700;
            letter-spacing: 0.1rem;
            cursor: pointer;
            border-radius: 12px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            position: relative;
            overflow: hidden;
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(255, 255, 255, 0.2);
        }

        .submit-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: left 0.5s;
        }

        .submit-btn:hover::before {
            left: 100%;
        }

        .back-to-home {
            position: absolute;
            top: 2rem;
            left: 2rem;
            z-index: 3;
        }

        .back-btn {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            padding: 1rem;
            color: #fff;
            text-decoration: none;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.9rem;
            font-weight: 600;
        }

        .back-btn:hover {
            background: rgba(255, 255, 255, 0.15);
            border-color: rgba(255, 255, 255, 0.4);
            transform: translateX(-3px);
        }

        .social-login {
            margin-top: 2rem;
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }

        .social-text {
            text-align: center;
            margin-bottom: 1rem;
            opacity: 0.7;
            font-size: 0.9rem;
        }

        .social-buttons {
            display: flex;
            gap: 1rem;
        }

        .social-btn {
            flex: 1;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            padding: 0.8rem;
            color: #fff;
            text-decoration: none;
            transition: all 0.3s ease;
            text-align: center;
            font-size: 0.9rem;
            font-weight: 600;
        }

        .social-btn:hover {
            background: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .login-container {
                margin: 1rem;
                padding: 2rem;
            }

            .back-to-home {
                top: 1rem;
                left: 1rem;
            }

            .brand-title {
                font-size: 1.5rem;
                letter-spacing: 0.2rem;
            }

            .social-buttons {
                flex-direction: column;
            }
        }

        .loading {
            display: none;
            width: 20px;
            height: 20px;
            border: 2px solid rgba(0, 0, 0, 0.3);
            border-radius: 50%;
            border-top-color: #000;
            animation: spin 1s ease-in-out infinite;
            margin: 0 auto;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        .error-message {
            background: rgba(255, 0, 0, 0.1);
            border: 1px solid rgba(255, 0, 0, 0.3);
            border-radius: 8px;
            padding: 1rem;
            margin-bottom: 1rem;
            color: #ff6b6b;
            font-size: 0.9rem;
            display: none;
        }

        .success-message {
            background: rgba(0, 255, 0, 0.1);
            border: 1px solid rgba(0, 255, 0, 0.3);
            border-radius: 8px;
            padding: 1rem;
            margin-bottom: 1rem;
            color: #51cf66;
            font-size: 0.9rem;
            display: none;
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    
    <div class="back-to-home">
        <a href="index.html" class="back-btn">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M19 12H5M12 19l-7-7 7-7"/>
            </svg>
            חזרה לעמוד הראשי
        </a>
    </div>

    <div class="login-container">
        <div class="logo-section">
            <div class="logo">G</div>
            <div class="brand-title">GAME CHANGER</div>
            <div class="brand-subtitle">FASHION STORE</div>
        </div>

        <div class="form-tabs">
            <button class="tab-btn active" onclick="switchTab('login')">התחברות</button>
            <button class="tab-btn" onclick="switchTab('register')">הרשמה</button>
        </div>

        <div id="error-message" class="error-message"></div>
        <div id="success-message" class="success-message"></div>

        <!-- Login Form -->
        <div id="login-form" class="form-section active">
            <form onsubmit="handleLogin(event)">
                <div class="form-group">
                    <label for="login-email">כתובת אימייל</label>
                    <input type="email" id="login-email" placeholder="הכנס את כתובת האימייל שלך" required>
                </div>
                
                <div class="form-group">
                    <label for="login-password">סיסמה</label>
                    <input type="password" id="login-password" placeholder="הכנס את הסיסמה שלך" required>
                </div>

                <div class="forgot-password">
                    <a href="#" onclick="forgotPassword()">שכחת סיסמה?</a>
                </div>

                <button type="submit" class="submit-btn">
                    <span class="btn-text">התחבר</span>
                    <div class="loading"></div>
                </button>
            </form>
        </div>

        <!-- Register Form -->
        <div id="register-form" class="form-section">
            <form onsubmit="handleRegister(event)">
                <div class="form-group">
                    <label for="register-name">שם מלא</label>
                    <input type="text" id="register-name" placeholder="הכנס את השם המלא שלך" required>
                </div>

                <div class="form-group">
                    <label for="register-email">כתובת אימייל</label>
                    <input type="email" id="register-email" placeholder="הכנס את כתובת האימייל שלך" required>
                </div>
                
                <div class="form-group">
                    <label for="register-password">סיסמה</label>
                    <input type="password" id="register-password" placeholder="בחר סיסמה חזקה" required minlength="6">
                </div>

                <div class="form-group">
                    <label for="register-confirm">אימוד סיסמה</label>
                    <input type="password" id="register-confirm" placeholder="הכנס שוב את הסיסמה" required>
                </div>

                <button type="submit" class="submit-btn">
                    <span class="btn-text">הירשם</span>
                    <div class="loading"></div>
                </button>
            </form>
        </div>

        <div class="social-login">
            <div class="social-text">או התחבר באמצעות</div>
            <div class="social-buttons">
                <a href="#" class="social-btn" onclick="socialLogin('google')">📧 Google</a>
                <a href="#" class="social-btn" onclick="socialLogin('facebook')">📘 Facebook</a>
            </div>
        </div>
    </div>

    <script>
        function switchTab(tab) {
            // Remove active class from all tabs
            document.querySelectorAll('.tab-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // Hide all form sections
            document.querySelectorAll('.form-section').forEach(section => {
                section.classList.remove('active');
            });
            
            // Show selected tab and form
            event.target.classList.add('active');
            document.getElementById(tab + '-form').classList.add('active');
            
            // Clear messages
            hideMessages();
        }

        function handleLogin(event) {
            event.preventDefault();
            
            const email = document.getElementById('login-email').value;
            const password = document.getElementById('login-password').value;
            
            showLoading(true);
            hideMessages();
            
            // Simulate API call
            setTimeout(() => {
                showLoading(false);
                
                if (email && password) {
                    // Save user data to localStorage
                    const userData = {
                        name: email.split('@')[0], // Use email prefix as name
                        email: email,
                        loginTime: new Date().toISOString()
                    };
                    
                    localStorage.setItem('gameChangerUser', JSON.stringify(userData));
                    
                    showSuccess('התחברת בהצלחה! מעביר אותך לעמוד הראשי...');
                    
                    // Redirect to main page after 2 seconds
                    setTimeout(() => {
                        window.location.href = 'index.html';
                    }, 2000);
                } else {
                    showError('אימייל או סיסמה שגויים');
                }
            }, 1500);
        }

        function handleRegister(event) {
            event.preventDefault();
            
            const name = document.getElementById('register-name').value;
            const email = document.getElementById('register-email').value;
            const password = document.getElementById('register-password').value;
            const confirmPassword = document.getElementById('register-confirm').value;
            
            hideMessages();
            
            if (password !== confirmPassword) {
                showError('הסיסמאות אינן תואמות');
                return;
            }
            
            showLoading(true);
            
            // Simulate API call
            setTimeout(() => {
                showLoading(false);
                
                // Save user data
                const userData = {
                    name: name,
                    email: email,
                    loginTime: new Date().toISOString()
                };
                
                localStorage.setItem('gameChangerUser', JSON.stringify(userData));
                
                showSuccess('נרשמת בהצלחה! מעביר אותך לעמוד הראשי...');
                
                // Redirect to main page after 2 seconds
                setTimeout(() => {
                    window.location.href = 'index.html';
                }, 2000);
            }, 1500);
        }

        function forgotPassword() {
            const email = prompt('הכנס את כתובת האימייל שלך לאיפוס סיסמה:');
            if (email) {
                showSuccess('הוראות איפוס סיסמה נשלחו לאימייל שלך');
            }
        }

        function socialLogin(provider) {
            showLoading(true);
            hideMessages();
            
            setTimeout(() => {
                showLoading(false);
                
                // Simulate social login
                const userData = {
                    name: `משתמש ${provider}`,
                    email: `user@${provider}.com`,
                    loginTime: new Date().toISOString(),
                    provider: provider
                };
                
                localStorage.setItem('gameChangerUser', JSON.stringify(userData));
                
                showSuccess(`התחברת בהצלחה דרך ${provider}! מעביר אותך לעמוד הראשי...`);
                
                setTimeout(() => {
                    window.location.href = 'index.html';
                }, 2000);
            }, 1000);
        }

        function showLoading(show) {
            const loadings = document.querySelectorAll('.loading');
            const btnTexts = document.querySelectorAll('.btn-text');
            
            loadings.forEach(loading => {
                loading.style.display = show ? 'block' : 'none';
            });
            
            btnTexts.forEach(text => {
                text.style.display = show ? 'none' : 'inline';
            });
        }

        function showError(message) {
            const errorDiv = document.getElementById('error-message');
            errorDiv.textContent = message;
            errorDiv.style.display = 'block';
        }

        function showSuccess(message) {
            const successDiv = document.getElementById('success-message');
            successDiv.textContent = message;
            successDiv.style.display = 'block';
        }

        function hideMessages() {
            document.getElementById('error-message').style.display = 'none';
            document.getElementById('success-message').style.display = 'none';
        }

        // Check if user is already logged in
        document.addEventListener('DOMContentLoaded', function() {
            const userData = localStorage.getItem('gameChangerUser');
            if (userData) {
                showSuccess('אתה כבר מחובר למערכת');
                setTimeout(() => {
                    window.location.href = 'index.html';
                }, 1500);
            }
        });
    </script>
</body>
</html>
