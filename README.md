
# 📱 BMI Calculator (Flutter)

A simple and clean **Body Mass Index (BMI) Calculator** built باستخدام Flutter.  
The app allows users to input their physical data and instantly calculate their BMI along with a health interpretation.

---

## 📌 Project Overview

This project is a beginner-to-intermediate Flutter application focused on:

- Building responsive UI
- Handling user input
- Performing basic calculations
- Structuring a Flutter project properly

The app calculates BMI based on height and weight, then categorizes the result (e.g., underweight, normal, overweight).

---

## 🛠 Tech Stack

- **Flutter** – UI framework
- **Dart** – Programming language
- **Material Design** – UI components
- **cupertino_icons** – iOS-style icons

---

## 🏗 Architecture

The project follows a **simple UI-driven architecture**:


- Uses **StatefulWidgets** for handling UI state
- Logic is directly embedded in UI (no separate layers yet)
- Suitable for small-scale apps

---

## ✨ Features

- Input:
  - Height
  - Weight
  - (Optional: Age / Gender depending on implementation)
- Real-time BMI calculation
- BMI classification:
  - Underweight
  - Normal
  - Overweight
  - Obese
- Clean and responsive UI
- Cross-platform (Android / Web / Windows)

---

## 🧪 Testing

The project includes:

- Flutter default testing setup (`flutter_test`)
- Basic widget testing capability

> Currently, no extensive unit or integration tests are implemented.

---






## 📂 Folder Structure

bmi_calc/
│
├── android/ # Android configuration
├── build/ # Build outputs
├── ios/ # iOS configuration (if enabled)
├── lib/
│ ├── main.dart # Entry point
│ ├── screens/ # UI screens (if structured)
│ ├── widgets/ # Reusable components
│ └── utils/ # Helper functions (BMI logic)
│
├── test/ # Test files
├── pubspec.yaml # Dependencies
└── README.md # Project documentation








---

## ▶️ How to Run the Project

### 1. Clone the repository
```bash
git clone https://github.com/your-username/bmi_calc.git
cd bmi_calc

2. Install dependencies
flutter pub get

3. Run the app
flutter run

4. Build APK (optional)
flutter build apk

🚀 Future Improvements
Separate business logic (MVVM / Clean Architecture)
Add state management (Provider / Riverpod / Bloc)
Improve UI/UX with animations
Add input validation
Save history of BMI results
Dark mode support
Unit & integration testing
Localization (multi-language support)

📸 Screenshots



https://github.com/user-attachments/assets/dfc93a69-c439-43c9-9dee-a76e71ac916a



📄 License
This project is open-source and available under the MIT License.

🤝 Contribution
Contributions are welcome.
Feel free to fork the repo and submit a pull request.













