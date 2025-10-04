import 'package:flutter/foundation.dart';
import '../models/expense.dart';
import '../services/database_service.dart';

class ExpenseProvider with ChangeNotifier {
  List<Expense> _expenses = [];
  bool _isLoading = false;

  List<Expense> get expenses => _expenses;
  bool get isLoading => _isLoading;

  double get totalExpenses {
    return _expenses.fold(0, (sum, expense) => sum + expense.amount);
  }

  Map<String, double> get expensesByCategory {
    final Map<String, double> categoryTotals = {};
    for (var expense in _expenses) {
      categoryTotals[expense.category] =
          (categoryTotals[expense.category] ?? 0) + expense.amount;
    }
    return categoryTotals;
  }

  List<Expense> getExpensesForMonth(DateTime month) {
    return _expenses.where((expense) {
      return expense.date.year == month.year &&
          expense.date.month == month.month;
    }).toList();
  }

  double getTotalForMonth(DateTime month) {
    return getExpensesForMonth(month)
        .fold(0, (sum, expense) => sum + expense.amount);
  }

  Future<void> loadExpenses() async {
    _isLoading = true;
    notifyListeners();

    try {
      _expenses = await DatabaseService.instance.getAllExpenses();
    } catch (e) {
      print('Error loading expenses: $e');
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> addExpense(Expense expense) async {
    try {
      await DatabaseService.instance.insertExpense(expense);
      await loadExpenses();
    } catch (e) {
      print('Error adding expense: $e');
      rethrow;
    }
  }

  Future<void> updateExpense(Expense expense) async {
    try {
      await DatabaseService.instance.updateExpense(expense);
      await loadExpenses();
    } catch (e) {
      print('Error updating expense: $e');
      rethrow;
    }
  }

  Future<void> deleteExpense(String id) async {
    try {
      await DatabaseService.instance.deleteExpense(id);
      await loadExpenses();
    } catch (e) {
      print('Error deleting expense: $e');
      rethrow;
    }
  }
}
