import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food/auth/core/auth_widgets.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _State();
}

class _State extends State<PhoneScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();

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
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CustomTextFiled(
                              hintText: '+91',
                              controller: countryCodeController,
                              keyboardType: TextInputType.phone,
                              obscured: false,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(3),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            flex: 5,
                            child: CustomTextFiled(
                              hintText: "Mobile No",
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              obscured: false,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomContainer(
                        width: double.infinity,
                        height: 40,
                        color: Colors.orange.shade700,
                        child: Center(
                          child: Text(
                            "Verify",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
