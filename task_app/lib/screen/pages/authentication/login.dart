import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';
import 'package:task_app/widget/button.dart';
import 'package:task_app/widget/textField.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Map<String, dynamic> _data = Map<String, dynamic>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                  Text(
                    "Sign Up",
                    style: myStyle(14, shadaColor, FontWeight.w700),
                  ),
                ],
              ),
            ),
            Text(
              "Your Email Address",
              style: myStyle(16, shadaColor, FontWeight.w700),
            ),
            MyTextField(
              controller: emailController,
              hintText: "Enter your email address",
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MyTextField(
              controller: emailController,
              hintText: "Enter your Password",
              keyType: TextInputType.number,
              data: _data,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "required";
                }
              },
              icon: Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RoundButton(
              btnColor: btnColor,
              onTapp: () {
                Navigator.pushNamed(context, "registation1");
              },
              buttonText: "Login In",
            ),
          ],
        ),
      ),
    );
  }
}
