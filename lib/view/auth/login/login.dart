import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/view/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000), // Color code with 20% opacity
                    blurRadius: 20.0, // 20% blur
                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    loginLogo,
                    scale: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 2),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                        border: InputBorder.none,

                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        hintText: "Mobile Number",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffF6F6F6)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          ), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        contentPadding: EdgeInsets.only(left: 10),
                        // border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Mobile Number";
                        } else if (value.length < 10) {
                          return "Please enter valid mobile number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        hintText: "Password",

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffF6F6F6)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.red,
                          ), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(5.0),
                        ),

                        // border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter password";
                        } else if (value != "123123") {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [Color(0xFFF10177), Color(0xFF7006CB)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          transform:
                              GradientRotation(89), // 89 degrees in radians
                        ),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Text(
              "GOA",
              style: TextStyle(
                color: Color(0xff7006CB),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "5 Jan - 8 Jan",
              style: TextStyle(
                color: Color(0xff7006CB),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
