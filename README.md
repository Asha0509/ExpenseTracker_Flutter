# Expense Tracker

A beautiful and modern expense tracker app built with Flutter. Track your daily expenses, visualize spending patterns, and manage your finances effectively.

## Features

- 📊 **Track Expenses**: Add, edit, and delete expenses with ease
- 📈 **Statistics Dashboard**: Visualize your spending with pie charts and category breakdowns
- 🏷️ **Categories**: Organize expenses into predefined categories (Food, Transport, Shopping, etc.)
- 💾 **Local Storage**: All data is stored locally using SQLite
- 🎨 **Modern UI**: Beautiful Material Design 3 interface with light/dark theme support
- 📅 **Date Tracking**: Keep track of when expenses occurred
- 📝 **Notes**: Add optional notes to your expenses
- 🔄 **Swipe to Delete**: Quick gesture-based deletion

## Screenshots

### Home Screen
- View all expenses in a scrollable list
- See monthly total at a glance
- Beautiful gradient header with current month summary

### Add/Edit Expense
- Simple form to add or edit expenses
- Category selection with icons
- Date picker for expense date
- Optional notes field

### Statistics
- Total expenses overview
- Monthly spending summary
- Pie chart visualization by category
- Category breakdown with progress bars

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- An emulator or physical device

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Asha0509/ExpenseTracker_Flutter.git
cd ExpenseTracker_Flutter
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   ├── expense.dart         # Expense data model
│   └── category.dart        # Category definitions
├── providers/
│   └── expense_provider.dart # State management
├── screens/
│   ├── home_screen.dart     # Main screen with expense list
│   ├── add_expense_screen.dart # Add/Edit expense form
│   └── statistics_screen.dart  # Statistics and charts
├── services/
│   └── database_service.dart # SQLite database operations
└── widgets/
    └── expense_card.dart    # Reusable expense card widget
```

## Dependencies

- **sqflite**: Local SQLite database
- **path_provider**: Access to file system paths
- **provider**: State management
- **intl**: Date formatting and internationalization
- **fl_chart**: Beautiful charts and graphs
- **uuid**: Generate unique IDs for expenses

## Usage

### Adding an Expense

1. Tap the floating action button (+) on the home screen
2. Fill in the expense details:
   - Title (required)
   - Amount (required)
   - Date (defaults to today)
   - Category (defaults to Food)
   - Notes (optional)
3. Tap "Add Expense" to save

### Editing an Expense

1. Tap on any expense card in the list
2. Modify the details as needed
3. Tap "Update Expense" to save changes

### Deleting an Expense

- **Swipe left** on any expense card and confirm deletion
- Or tap the expense to edit and use the delete option

### Viewing Statistics

1. Tap the "Statistics" tab in the bottom navigation
2. View:
   - Total expenses (all time)
   - Current month expenses
   - Pie chart showing category distribution
   - Detailed category breakdown with amounts

## Categories

The app includes 8 predefined categories:

- 🍔 **Food**: Restaurant, groceries, dining
- 🚗 **Transport**: Gas, public transit, parking
- 🛍️ **Shopping**: Clothes, electronics, general shopping
- 🎬 **Entertainment**: Movies, games, hobbies
- 🏥 **Health**: Medical, pharmacy, fitness
- 📄 **Bills**: Utilities, rent, subscriptions
- 📚 **Education**: Books, courses, tuition
- ⚪ **Other**: Miscellaneous expenses

## Customization

### Adding New Categories

Edit `lib/models/category.dart` to add new categories:

```dart
static const newCategory = ExpenseCategory(
  name: 'Category Name',
  icon: Icons.icon_name,
  color: Colors.colorName,
);
```

### Changing Theme

The app supports both light and dark themes. It automatically follows your system theme preference.

## Database Schema

### Expenses Table

| Column   | Type | Description              |
|----------|------|--------------------------|
| id       | TEXT | Primary key (UUID)       |
| title    | TEXT | Expense title            |
| amount   | REAL | Expense amount           |
| date     | TEXT | ISO 8601 date string     |
| category | TEXT | Category name            |
| notes    | TEXT | Optional notes (nullable)|

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Author

Built with ❤️ using Flutter

## Support

If you encounter any issues or have questions, please file an issue on the GitHub repository.
