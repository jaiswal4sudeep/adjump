# 📲 Adjump Flutter Plugin

A simple Flutter plugin for integrating **Adjump Offerwall SDK**. Initialize the SDK and launch the offerwall with just a few lines of code.

---

## 🚀 Features

- ✅ Easy SDK initialization
- ✅ Show Offerwall directly
- ✅ Singleton pattern for easy access

---

## 📦 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  adjump_plugin:
    path: ./path_to_your_plugin_directory
```

> Replace the path with the actual location of your local plugin.

---

## ⚙️ Android Setup

1. Integrate the **Adjump SDK** in your native `build.gradle` files.
2. Add required permissions and activities in your `AndroidManifest.xml`.

> Refer to the Adjump documentation for detailed setup steps.

---

## 🧑‍💻 Usage

### 1️⃣ Initialize SDK

```dart
await Adjump.instance.initSDK(
  accountId: 'your_account_id',
  appId: 'your_app_id',
  userId: 'your_user_id',
);
```

---

### 2️⃣ Show Offerwall

```dart
await Adjump.instance.showOfferwall();
```

---

## 📘 API Reference

### `Adjump.initSDK({ accountId, appId, userId })`

Initializes the Adjump SDK with the provided credentials.

### `Adjump.showOfferwall()`

Displays the Adjump offerwall to the user.

---

## 🧾 Notes

- Ensure the SDK is initialized before calling `showOfferwall`.
- Use `Adjump.instance` to access the singleton instance of the plugin.

---

## 🧪 Example

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Adjump.instance.initSDK(
    accountId: 'acc_123',
    appId: 'app_456',
    userId: 'user_789',
  );

  runApp(MyApp());
}
```

---

## 📝 License

MIT License

---

## 🤝 Contributing

PRs and issues welcome! Let’s make this plugin better together.