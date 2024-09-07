import 'package:flutter/material.dart';

import 'package:food/auth/core/auth_widgets.dart';

class forgetPasswordScreen extends StatefulWidget {
  const forgetPasswordScreen({super.key});

  @override
  State<forgetPasswordScreen> createState() => _State();
}

class _State extends State<forgetPasswordScreen> {
  TextEditingController forgetController = TextEditingController();

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
                            hintText: "Enter your Email",
                            controller: forgetController,
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
                                  "Send Link",
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
