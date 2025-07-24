# task

A new Flutter project.

## Getting Started
# 🍔 Restaurant Food App - Flutter Project

This is a complete mobile application developed using **Flutter**, featuring a beautiful restaurant-style user interface with splash screen, authentication pages (Login & SignUp), OTP verification, and a list of food items. The project uses clean architecture with reusable widgets and colors.

---
## 📸 Screenshots

### 🔹 Splash Screen
![Splash](https://github.com/EmanMohamed7612/FoodProject/blob/main/lib/ScreenTask4/splashfood.png)

### 🔹 Welcome Page
![Welcome](screenshots/welcome.png)

### 🔹 Login Page
![Login](https://github.com/EmanMohamed7612/FoodProject/blob/main/lib/ScreenTask4/loginfood.png)

### 🔹 Sign Up Page
![Sign Up](https://github.com/EmanMohamed7612/FoodProject/blob/main/lib/ScreenTask4/signupfood.png)

### 🔹 OTP Verification
![OTP](https://github.com/EmanMohamed7612/FoodProject/blob/main/lib/ScreenTask4/otpfood.png)

### 🔹 Food List Page
![Food List](https://github.com/EmanMohamed7612/FoodProject/blob/main/lib/ScreenTask4/listfood.png)

## 📱 Screens & Features

### ✅ Splash Screen
- Displays a full-screen image for 15 seconds before navigating to the Welcome screen.

### ✅ Welcome Page
- Introduces the user to the app.
- Two buttons: "Login" and "Sign Up".

### ✅ Login Page
- Uses a **Form** with email and password validation.
- Navigates to OTP screen upon successful login.

### ✅ Sign Up Page
- Contains a full form (username, email, password, confirm password).
- Validates fields and navigates to the OTP screen.

### ✅ OTP Screen
- User enters 6-digit verification code.
- After verification, navigates to the Food List page.

### ✅ Food List Page
- Shows a vertical **ListView** of food items with images.
- Each item uses a `FoodModel` class for cleaner data structure.
- Includes a **BottomNavigationBar** with icons for Home, Favorites, and Profile.

--

---

## 📦 Dependencies

Make sure you include these dependencies in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_otp_text_field: ^1.0.1

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
