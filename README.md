# 🕌 Islami App

A modern Islamic Flutter application designed to provide a beautiful and interactive experience for Muslims through essential daily Islamic features.

The app brings together Quran, Hadith, Sebha, Islamic Radio, Prayer Times, and more in one elegant and user-friendly application.

---

# 📱 Preview

<div align="center">

| 🏠 Home | 📚 Hadith | 📿 Sebha |
|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/d449c012-7fc1-4cc5-8833-e1405bbe5834" width="220"/> | <img src="https://github.com/user-attachments/assets/955cf929-38f7-40f7-9eae-1e1e4c2803f3" width="220"/> | <img src="https://github.com/user-attachments/assets/8d10ac0f-6916-4e38-854e-37a4717ecdf7" width="220"/> |

<br>

| 📻 Radio | 🕐 Prayer Times |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/98a77297-9d34-497f-80fa-8ceeef7d390d" width="220"/> | <img src="https://github.com/user-attachments/assets/e7bcaa6f-45db-4e3d-8f3d-6aae28a73a47" width="220"/> |

</div>

---

# 🎥 Demo

You can watch the full application demo below:

https://github.com/user-attachments/assets/c4cef1d6-c261-47ae-a480-c04d6189a0a4

---

# ✨ Features

* 🕌 Beautiful Islamic-themed UI
* 📖 Quran browsing and reading
* 📚 Hadith collection and detailed Hadith screens
* 📿 Digital Sebha
* 📻 Islamic Radio
* 🕐 Prayer Times
* 🤲 Islamic content and daily worship tools
* 🌙 Modern dark Islamic theme
* 🎨 Clean and elegant UI
* 📱 Responsive design
* ⚡ Smooth and interactive user experience
* ♻️ Reusable widgets and components
* 💾 Local data persistence
* 🚀 Organized and scalable project architecture

---

# 📱 App Screens

## 🚀 Onboarding

The application starts with a smooth onboarding experience that introduces users to the main features of the application.

<img src="YOUR_ONBOARDING_IMAGE_URL" width="250"/>

---

## 🏠 Home

The Home screen provides quick access to the main Islamic features of the application.

It includes sections for:

* Quran
* Hadith
* Sebha
* Radio
* Prayer Times
* Other Islamic features

<img src="YOUR_HOME_IMAGE_URL" width="250"/>

---

## 📖 Quran

Users can browse Quran Surahs and open a dedicated Surah details screen to read the selected Surah.

The Quran content is organized locally and loaded from the application's assets.

<img src="YOUR_QURAN_IMAGE_URL" width="250"/>

---

## 📚 Hadith

The Hadith section allows users to browse Hadith content and open detailed Hadith screens.

The application provides a clean reading experience designed specifically for Arabic Islamic content.

<img src="YOUR_HADETH_IMAGE_URL" width="250"/>

---

## 📿 Sebha

A digital Sebha feature that allows users to keep track of their Tasbeeh count through an interactive counter.

<img src="YOUR_SEBHA_IMAGE_URL" width="250"/>

---

## 📻 Islamic Radio

The Radio section provides access to different Islamic radio stations and Quran recitations through a simple and interactive interface.

<img src="YOUR_RADIO_IMAGE_URL" width="250"/>

---

## 🕐 Prayer Times

The Time screen displays daily prayer information in an organized interface.

<img src="YOUR_TIME_IMAGE_URL" width="250"/>

---

# 🛠 Tech Stack

* Flutter
* Dart
* Material Design
* Custom Widgets
* Responsive UI
* Feature-Based Architecture
* Local Data Storage
* Asset-Based Islamic Content

---

# 📦 Packages

The project uses the following Flutter packages:

| Package                 | Purpose                                                 |
| ----------------------- | ------------------------------------------------------- |
| `flutter_svg`           | Display and work with SVG assets                        |
| `flutter_bounceable`    | Add interactive bounce animations to widgets            |
| `smooth_page_indicator` | Create smooth page indicators for onboarding/navigation |
| `carousel_slider`       | Build interactive carousel components                   |
| `shared_preferences`    | Store lightweight local user preferences                |
| `flutter_native_splash` | Customize the native splash screen                      |
| `flutter_gen`           | Generate strongly-typed asset references                |
| `build_runner`          | Generate project files and support code generation      |
| `cupertino_icons`       | Provide Cupertino-style icons                           |

---

# 🏗 Architecture

The project follows a **Feature-Based Architecture** to keep the application organized, scalable, and maintainable.

```text
lib/
│
├── core/
│   ├── cache/
│   ├── constants/
│   ├── gen/
│   ├── router/
│   └── theme/
│
├── features/
│   │
│   ├── hadeth/
│   │   ├── models/
│   │   └── presentation/
│   │       ├── views/
│   │       └── widgets/
│   │
│   ├── layout/
│   │
│   ├── onboarding/
│   │
│   ├── quran/
│   │   ├── models/
│   │   └── presentation/
│   │       ├── views/
│   │       └── widgets/
│   │
│   ├── radio/
│   │
│   ├── sebha/
│   │
│   ├── splash/
│   │
│   └── time/
│
├── main.dart
└── my_app.dart
```

### 🧩 Core

Contains shared application-level functionality such as:

* Cache
* Constants
* Generated assets
* Routing
* Theme

### 📚 Features

Each major application feature is separated into its own feature folder.

This makes the codebase easier to understand and allows each feature to evolve independently.

### 🎨 Presentation

Features that require UI organization contain:

```text
presentation/
├── views/
└── widgets/
```

This separates complete screens from reusable UI components.

### 🗂 Models

Models are separated inside their corresponding features, such as:

```text
hadeth/
└── models/

quran/
└── models/
```

This keeps feature-specific data structures close to the feature that uses them.

---

# 📂 Assets

The application uses several types of local assets:

```text
assets/
│
├── icons/
├── images/
├── files/
│   ├── quran/
│   └── Hadeeth/
│
└── fonts/
    ├── Janna LT Regular.ttf
    └── Janna LT Bold.ttf
```

The project also uses the **Janna LT** Arabic font family to provide a suitable Arabic reading experience.

---

# 🔤 Typography

The application uses:

**Janna LT**

with:

* Janna LT Regular
* Janna LT Bold

The font is mainly used to provide a clean and readable Arabic interface.

---

# 🎨 UI Design

The design focuses on creating a calm and immersive Islamic experience using:

* 🌙 Dark backgrounds
* 🟡 Gold Islamic accents
* 🕌 Islamic decorative elements
* 📖 Arabic-focused typography
* 🎨 Consistent visual identity
* 📱 Responsive layouts
* ♻️ Reusable UI components

The interface was designed to keep the application visually consistent across all major features.

---

# 💾 Local Storage

The application uses `shared_preferences` for lightweight local data persistence.

This allows the app to save simple user-related preferences locally on the device.

---

# 🚀 Getting Started

## Clone the Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

## Navigate to the Project

```bash
cd islami
```

## Install Dependencies

```bash
flutter pub get
```

## Run the Application

```bash
flutter run
```

---

# 📋 Requirements

Before running the project, make sure you have:

* Flutter SDK
* Dart SDK
* Android Studio or VS Code
* Android Emulator or physical Android device

---

# 🎯 Project Goals

The main goal of Islami App is to provide a collection of useful Islamic features inside one simple and beautiful Flutter application.

The project also focuses on demonstrating:

* Feature-Based Architecture
* Clean and maintainable Flutter code
* Reusable Widgets
* Responsive UI
* Local asset management
* Local data persistence
* Arabic UI design
* Navigation and routing
* Modern Flutter development practices

---

# 👨‍💻 Author

### Ziad Magdy

**Flutter Mobile Developer**

GitHub:

https://github.com/ziadmagdy109/islami_app

LinkedIn:

https://www.linkedin.com/in/ziadmagdy109/

---

# ⭐ Support

If you like this project, don't forget to leave a ⭐ on the repository.

It really helps and motivates me to keep building and improving Flutter applications.
