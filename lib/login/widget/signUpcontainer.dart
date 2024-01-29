import 'package:apployee/login/data/authrepo.dart';
import 'package:apployee/login/widget/signin_container.dart';
import 'package:apployee/models/signup_model.dart';
import 'package:flutter/material.dart';
import 'signBotton.dart';

class SignoutContainer extends StatefulWidget {
  const SignoutContainer({Key? key});

  @override
  State<SignoutContainer> createState() => _SgninLoginContainerState();
}

class _SgninLoginContainerState extends State<SignoutContainer> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordContriller =
      TextEditingController();

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: firstNameController,
                decoration: const InputDecoration(
                  hintText: "First Name",
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: "Last Name",
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          onChanged: (value) {
            setState(() {});
          },
          controller: emailController,
          decoration: const InputDecoration(
            hintText: "Email",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          onChanged: (value) {
            setState(() {});
          },
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration(
           
            hintText: "Password",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value) {
            setState(() {});
          },
          controller: confirmPasswordContriller,
          obscureText: false,
          decoration: const InputDecoration(
            hintText: "Confirm Password",
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ValueListenableBuilder(
          valueListenable: circleBool,
          builder: (context, value, child) {
            return SignBotton(
              isloading: value,
              fieldIsfilled: passwordController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      firstNameController.text.isNotEmpty &&
                      lastNameController.text.isNotEmpty
                  ? false
                  : true,
              onTap: () {
                var firstName = firstNameController.text;
                var lastName = lastNameController.text;
                var email = emailController.text;
                var password = passwordController.text;
                var confirmPassword = confirmPasswordContriller.text;

                if (password == confirmPassword) {
                  AuthRepo.instance.signUp(
                      UserModelSignOut(
                          firstName: firstName,
                          lastName: lastName,
                          email: email,
                          password: password,
                          confirmPassword: confirmPassword),
                      context);
                  circleBool.value = false;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Passwords Are Not Matched",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              text: "Let's Go",
            );
          },
        )
      ],
    );
  }
}
