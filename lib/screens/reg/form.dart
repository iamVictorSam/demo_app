import 'package:demo_app/screens/login/login.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'First Name',
              labelText: 'First Name',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Last Name',
              labelText: 'Last Name',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            obscureText: isTrue,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',

              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

              // suffixStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isTrue = !isTrue;
                  });
                },
                icon: Icon(isTrue ? Icons.visibility : Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            obscureText: isTrue,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              labelText: 'Confirm Password',

              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

              // suffixStyle: TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isTrue = !isTrue;
                  });
                },
                icon: Icon(isTrue ? Icons.visibility : Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    )),
                child: const Text('Sign Up')),
          ),
        ],
      ),
    );
  }
}
