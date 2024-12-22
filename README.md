# Flutter TODO List Tutorial Project

Welcome to the **Flutter TODO List Tutorial Project**! This repository is designed to help beginners learn Flutter by building a simple TODO list application. Whether you're new to Flutter or mobile development in general, this project will guide through essential Flutter concepts and practices, such as Dart language, Stateful and Stateless widgets,

## Prerequisites

Before you begin, ensure you have Flutter installed on your machine. If you haven’t already, follow the official Flutter installation guide: [Flutter Installation Guide](https://docs.flutter.dev/get-started/install).

## 🌱 Create a New Flutter Project

To create a new Flutter project, run the following command in your terminal or command prompt:

```
flutter create todo_list_tutorial
```

## 🧐 Quick Introduction to Widgets

Widgets are the building blocks of a Flutter app. There are two main types of widgets:

- **StatelessWidget**: Does not change over time (e.g., a static label).
- **StatefulWidget**: Changes dynamically based on user interaction or data (e.g., a checkbox).

You’ll use a combination of these to build the TODO list app.

## 📖 Useful Covered in This Tutorial

### 1. **Theme of Context**

Use `Theme.of(context)` to apply consistent colors, text styles, and theming throughout your app.

Example:

```dart
final primaryColor = Theme.of(context).colorScheme.primary;
final textStyle = Theme.of(context).textTheme.headline6;
```

### 2. **Navigator of Context**

The `Navigator.of(context)` is used to navigate between screens.

Example:

```dart
Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => NewScreen()),
);
```

### 3. **ScaffoldMessenger of Context**

The `ScaffoldMessenger.of(context)` is used to display snackbars for brief messages.

Example:

```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text('Task added successfully!')),
);
```

## 🪐 Future Possible Steps

Here are some potential enhancements you can try after completing the basic tutorial:

1. **Add Task Descriptions**

   - Allow users to add detailed descriptions for each task.

2. **Add Localization**

   - Use the [Slang](https://pub.dev/packages/slang) library to support multiple languages.

3. **Integrate External State Management**

   - Explore solutions like **[Bloc and Cubit](https://pub.dev/packages/flutter_bloc)** or **[Riverpod](https://pub.dev/packages/flutter_riverpod)** for better state management.

4. **Implement Dependency Injection**

   - Use libraries like **[get_it](https://pub.dev/packages/get_it)** for dependency injection.

5. **Enable On-Device Storage**
   - Save tasks locally using **[Hive](https://pub.dev/packages/hive_flutter)** or **[Hydrated Bloc](https://pub.dev/packages/hydrated_bloc)**.

**Happy coding! 🚀**
