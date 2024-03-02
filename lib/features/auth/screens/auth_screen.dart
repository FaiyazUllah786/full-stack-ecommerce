import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_stack_ecommerce/common/widgets/custom_text_field.dart';
import 'package:full_stack_ecommerce/constants/global_var.dart';

import '../../../common/widgets/custom_button.dart';

enum Auth { signUp, signIn }

class AuthScreen extends StatefulWidget {
  static const routeName = "/authScreen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signUp;

  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //backButton
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            //signup and signin column
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    horizontalTitleGap: 0,
                    title: const Text("Create an account"),
                    leading: Radio(
                      value: Auth.signUp,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                  if (_auth == Auth.signUp)
                    Form(
                      key: _signUpFormKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            CustomTextField(
                              textController: _nameController,
                              labelText: "Username",
                            ),
                            const SizedBox(height: 10),
                            CustomTextField(
                              textController: _emailController,
                              labelText: "Email",
                            ),
                            const SizedBox(height: 10),
                            CustomTextField(
                              textController: _passwordController,
                              labelText: "Password",
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    horizontalTitleGap: 0,
                    title: const Text("Sign-In"),
                    leading: Radio(
                      value: Auth.signIn,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                  if (_auth == Auth.signIn)
                    Form(
                      key: _signInFormKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            CustomTextField(
                              textController: _emailController,
                              labelText: "Email",
                            ),
                            const SizedBox(height: 10),
                            CustomTextField(
                              textController: _passwordController,
                              labelText: "Password",
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
                onTap: () {},
                btnText: _auth == Auth.signUp ? "Sign Up" : "Sign In")
          ],
        ),
      ),
    );
  }
}
