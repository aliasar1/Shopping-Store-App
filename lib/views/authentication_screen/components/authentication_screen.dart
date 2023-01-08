import 'package:flutter/material.dart';
import 'package:shopping_store_app/utils/color_scheme.dart';
import 'package:shopping_store_app/widgets/custom_widgets/custom_button.dart';
import 'package:shopping_store_app/widgets/custom_widgets/custom_text.dart';
import 'package:shopping_store_app/widgets/custom_widgets/custom_text_form_field.dart';
import '../../../utils/size_config.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kLightPurple,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Image.asset("assets/images/login.png"),
                  const Txt(text: "Login"),
                  const CustomTextFormField(
                    prefixIconData: Icons.person,
                    labelText: 'Username',
                  ),
                  const CustomTextFormField(
                    prefixIconData: Icons.lock,
                    labelText: 'Password',
                  ),
                  CustomButton(
                    color: AppColors.kLightGreen,
                    textColor: AppColors.kLightPurple,
                    text: "Sign in",
                    onPressed: () {},
                    hasInfiniteWidth: true,
                  ),
                  CustomButton(
                    color: Colors.transparent,
                    textColor: AppColors.kLightGreen,
                    text: "Don't have an account?",
                    onPressed: () {},
                    hasInfiniteWidth: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Txt(text: "---------  OR  ---------"),
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.g_mobiledata),
                              Txt(text: "Google"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.facebook),
                              Txt(text: "Google"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
