class LoginService {



  Future<bool> login(String email, String password) async {
    // Simulate a network call
    await Future.delayed(const Duration(seconds: 2)); // Mock delay for async call
    // Mock login logic
    return email == "a@a.com" && password == "password123";
  }

}
