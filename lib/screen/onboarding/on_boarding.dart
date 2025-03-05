import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../login/login_screen.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final TextEditingController _schoolCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top Section with Curved Image
            ClipPath(
              clipper: BottomCurveClipper(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: SvgPicture.asset('assets/svg/onboarding.svg'),
              ),
            ),

            // Middle Section: Text and Input
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Enter Your School Code",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Enter the code provided by your school to access your account.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _schoolCodeController,
                    decoration: InputDecoration(
                      hintText: "School Code",
                      prefixIcon: const Icon(Icons.school),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      final schoolCode = _schoolCodeController.text;
                      if (schoolCode.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please enter the school code."),
                          ),
                        );
                      } else {
                        // Handle proceed action
                        print("School Code: $schoolCode");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  LoginScreen()),
                        );

                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Center(
                      child: Text("Proceed",style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Clickable Texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle "Don't know school code" action
                          print("User doesn't know school code");
                        },
                        child: const Text(
                          "Don't know school code?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle support contact action
                          print("Contact Support");
                        },
                        child: const Text(
                          "Contact Support",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Clipper for Bottom Curve
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
