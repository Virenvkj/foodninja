import 'package:flutter/material.dart';
import 'package:foodninja/Presentation/Authentication/common/common_circle_button.dart';
import 'package:foodninja/Presentation/Authentication/registration_screen.dart';
import 'package:foodninja/core/CommonWidget/textformfield_widget.dart';
import 'package:foodninja/core/constant/extension.dart';
import 'package:foodninja/core/constant/strings.dart';
import 'package:foodninja/core/constant/theme_color.dart';
import '../../core/CommonWidget/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: context.height(context) * 0.090,
            ),
            const Text(
              LoginScreenString.title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            const Text(
              LoginScreenString.subtitle,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: context.height(context) * 0.040),
            const Text(
              LoginScreenString.email,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            TextformfieldWidget(
              controller: emailNameController,
              hint: 'darshan12@gmail.com',
            ),
            SizedBox(height: context.height(context) * 0.020),
            const Text(LoginScreenString.password,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            TextformfieldWidget(
              controller: passWordController,
              hint: '********',
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: context.height(context) * 0.025,
                  bottom: context.height(context) * 0.025),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    LoginScreenString.forgotPassword,
                    style: TextStyle(
                        color: ThemeColor.buttonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const ButtonWidget(
              buttonName: LoginScreenString.singIn,
            ),
            SizedBox(height: context.height(context) * 0.030),
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black,
                )),
                Text(
                  'Or sign in with',
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black,
                )),
              ],
            ),
            SizedBox(height: context.height(context) * 0.025),
            SizedBox(height: context.height(context) * 0.07,
              child: ListView.builder(
                itemCount: loginImages.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    Padding(
                      padding:  EdgeInsets.all(context.height(context)*0.01),
                      child: CommonCircleButton(image: loginImages[index]),
                    ),
              ),
            ),
            SizedBox(height: context.height(context) * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(LoginScreenString.notHaveAccount,
                    style: TextStyle(fontSize: 16)),
                GestureDetector(
                  onTap: () => context.pushAndRemoveUntil(context,
                      target: const RegistrationScreen()),
                  child: Text(RegistrationScreenString.singUp,
                      style: TextStyle(
                          color: ThemeColor.buttonColor, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
