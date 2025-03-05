// controllers/login_controller.dart
import 'package:flutter/material.dart';
import '../screen/dashboard/dashboard.dart';
import '../service/login_service.dart';

class LoginController with ChangeNotifier {
   LoginService _loginService = LoginService();

  set loginService(LoginService service) {
    _loginService = service;
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(String email, String password, BuildContext context) async {
    _isLoading = true;
    notifyListeners(); // Notify listeners about the state change

    try {
      final success = await _loginService.login(email, password);
      if (success) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
        );
      } else {
        // Show error message for incorrect credentials
        debugPrint("Login failed: Incorrect email or password.");
      }
    } catch (e) {
      // Handle errors (e.g., network issues)
      debugPrint("Login error: $e");
    } finally {
      _isLoading = false;
      notifyListeners(); // Reset loading state
    }
  }
}
