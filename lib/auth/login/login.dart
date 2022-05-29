import 'package:flutter/material.dart';
import 'package:timer_snackbar/timer_snackbar.dart';
import 'package:ui_recreate/home/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(
                    Icons.email,
                    size: 20.0,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!v.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(
                    Icons.lock,
                    size: 20.0,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      print('btn tapped');
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: const Icon(
                      Icons.visibility,
                      size: 20.0,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (v) {
                  if (v!.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (v.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //
                    String email = emailController.text;
                    String password = passwordController.text;
                    //
                    String dbEmail = 'dev@flutter.com';
                    String dbPassword = '123456';
                    //
                    if (email == dbEmail && password == dbPassword) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                      print('Sucess');
                    } else {
                      timerSnackbar(
                        context: context,
                        contentText: 'Invalid Credentials.',
                        afterTimeExecute: () {},
                        second: 5,
                      );
                    }
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
