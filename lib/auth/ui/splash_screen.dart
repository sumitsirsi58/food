import 'package:flutter/material.dart';
import 'package:food/auth/core/auth_widgets.dart';
import 'package:food/auth/ui/login_screen.dart';
import 'package:food/auth/ui/splash_screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSFPhgLMhz79BNhwjvp9TOmPSJAXEJv5AFi17FyApdoarSuZoII',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'All your favourates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Get all your loved foods in one place.\nJust place the order, we do the rest!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SplashScreen2()));
                },
                child: CustomContainer(
                    width: double.infinity,
                    height: 40,
                    color: Colors.orange.shade700,
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
