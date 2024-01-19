import 'package:flutter/material.dart';
import 'package:flutter_sneakers/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Image.asset(
                  "lib/images/logo.png",
                  height: 240,
                ),
              ),

              const SizedBox(height: 48.0),

              //title
              const Text(
                "Just Do It",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24.0),

              //subtitle
              const Text(
                "Brand new sneakers and custom kicks made with premium quality materials.",
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48.0),

              //button
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48.0,
                    vertical: 16.0,
                  ),
                ),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
