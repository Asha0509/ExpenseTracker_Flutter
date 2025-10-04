# Quick Setup Guide

## Prerequisites Check

Before running the app, ensure you have:

1. **Flutter SDK** installed and configured
   ```bash
   flutter --version
   ```

2. **Device/Emulator** ready
   ```bash
   flutter devices
   ```

## Setup Steps

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Verify Installation

```bash
flutter doctor
```

Fix any issues reported by Flutter Doctor.

### 3. Run the App

**For Android:**
```bash
flutter run
```

**For iOS (macOS only):**
```bash
flutter run -d ios
```

**For Web:**
```bash
flutter run -d chrome
```

**For Windows:**
```bash
flutter run -d windows
```

### 4. Build Release Version

**Android APK:**
```bash
flutter build apk --release
```

**Android App Bundle:**
```bash
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

**Windows:**
```bash
flutter build windows --release
```

## Troubleshooting

### Common Issues

**Issue: Package version conflicts**
```bash
flutter pub upgrade
flutter clean
flutter pub get
```

**Issue: Build errors**
```bash
flutter clean
flutter pub get
flutter run
```

**Issue: SQLite errors on iOS**
- SQLite is built into iOS, no additional setup needed

**Issue: Hot reload not working**
- Press `r` in terminal for hot reload
- Press `R` for hot restart

## Development Tips

- Use `flutter run` for development with hot reload
- Press `r` for hot reload after making changes
- Press `R` for full restart
- Press `q` to quit the app

## Testing

Run tests (when added):
```bash
flutter test
```

## Code Analysis

Check for issues:
```bash
flutter analyze
```

Format code:
```bash
flutter format lib/
```

## Next Steps

1. Run `flutter pub get` to install all dependencies
2. Connect a device or start an emulator
3. Run `flutter run` to launch the app
4. Start tracking your expenses!

## Support

For Flutter-specific issues, visit:
- [Flutter Documentation](https://docs.flutter.dev)
- [Flutter GitHub](https://github.com/flutter/flutter)
