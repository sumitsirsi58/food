import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/auth/core/auth_widgets.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _State();
}

class _State extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fastfood_rounded,
              color: Colors.orange,
              size: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'F',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'oo',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'd',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Card(
                shadowColor: Colors.orange,
                elevation: 14,
                child: CustomContainer(
                    width: double.infinity,
                    height: 160,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          CustomTextFiled(
                            hintText: "Enter your OTP",
                            controller: otpController,
                            keyboardType: TextInputType.name,
                            obscured: false,
                            inputFormatters: [],
                          ),SizedBox(height: 20,),
                          CustomContainer(
                            width: double.infinity,
                            height: 40,
                            color: Colors.orange.shade700,
                            child: Center(
                                child: Text(
                                  "Continoue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
