import 'package:flutter/material.dart';

class ExpenseCategory {
  final String name;
  final IconData icon;
  final Color color;

  const ExpenseCategory({
    required this.name,
    required this.icon,
    required this.color,
  });
}

class Categories {
  static const food = ExpenseCategory(
    name: 'Food',
    icon: Icons.restaurant,
    color: Colors.orange,
  );

  static const transport = ExpenseCategory(
    name: 'Transport',
    icon: Icons.directions_car,
    color: Colors.blue,
  );

  static const shopping = ExpenseCategory(
    name: 'Shopping',
    icon: Icons.shopping_bag,
    color: Colors.purple,
  );

  static const entertainment = ExpenseCategory(
    name: 'Entertainment',
    icon: Icons.movie,
    color: Colors.pink,
  );

  static const health = ExpenseCategory(
    name: 'Health',
    icon: Icons.local_hospital,
    color: Colors.red,
  );

  static const bills = ExpenseCategory(
    name: 'Bills',
    icon: Icons.receipt_long,
    color: Colors.teal,
  );

  static const education = ExpenseCategory(
    name: 'Education',
    icon: Icons.school,
    color: Colors.indigo,
  );

  static const other = ExpenseCategory(
    name: 'Other',
    icon: Icons.more_horiz,
    color: Colors.grey,
  );

  static List<ExpenseCategory> get all => [
        food,
        transport,
        shopping,
        entertainment,
        health,
        bills,
        education,
        other,
      ];

  static ExpenseCategory getByName(String name) {
    return all.firstWhere(
      (category) => category.name == name,
      orElse: () => other,
    );
  }
}
