import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/auth/core/auth_widgets.dart';
import 'package:food/auth/ui/forget_password_screen.dart';
import 'package:food/auth/ui/phone_sreen.dart';
import 'package:food/auth/ui/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _State();
}

class _State extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    height: 380,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          CustomTextFiled(
                              hintText: "Email",
                              controller: emailController,
                              keyboardType: TextInputType.name,
                              obscured: false, inputFormatters: [],),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextFiled(
                              hintText: "Password",
                              controller: passwordController,
                              keyboardType: TextInputType.name,
                              obscured: false, inputFormatters: [],),
                          SizedBox(
                            height: 4,
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>forgetPasswordScreen()));
                                },
                                child: Text(
                                  'Forget Password',
                                  style: TextStyle(color: Colors.orange.shade700),
                                ),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          CustomContainer(
                            width: double.infinity,
                            height: 40,
                            color: Colors.orange.shade700,
                            child: Center(
                                child: Text(
                              "LOG IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: Colors.grey.shade300,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'Sigin With',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                color: Colors.grey.shade300,
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: CustomContainer(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.grey.shade200,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.google,
                                            color: Colors.black54,
                                          ),
                                          Text('Google'),
                                        ],
                                      ))),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PhoneScreen()));
                                },
                                child: CustomContainer(
                                    width: double.infinity,
                                    height: 40,
                                    color: Colors.grey.shade200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.mobile,
                                          color: Colors.black54,
                                        ),
                                        Text('Phone'),
                                      ],
                                    )),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dont't have an account?"),
                              SizedBox(
                                width: 4,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupScreen()));
                                },
                                child: Text(
                                  'SignUp',
                                  style:
                                      TextStyle(color: Colors.orange.shade700),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
