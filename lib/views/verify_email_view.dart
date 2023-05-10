import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

import '../constants/colors.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
          backgroundColor: const Color(0xFF1E232C),
          title: const Text('Verify Email')),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
              "We've sent you an email verification. Please open it to verify your account.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
              "If you haven't received a verification email yet, press the button below.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  color: const Color(0xFF1E232C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () async {
                    await AuthService.firebase().sendEmailVerification();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Resend Email Verification",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  color: Color.fromARGB(255, 163, 30, 21),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () async {
                    await AuthService.firebase().logOut();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        registerRoute, (route) => false);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]
          // children: [
          //   const Text(
          //       "We've sent you an email verification. Please open it to verify your account."),
          //   const Text(
          //       "If you haven't received a verification email yet, press the button below."),
          //   TextButton(
          //     onPressed: () async {
          //       await AuthService.firebase().sendEmailVerification();
          //     },
          //     child: const Text('Send email verification'),
          //   ),
          //   TextButton(
          //     onPressed: () async {
          //       await AuthService.firebase().logOut();
          //       Navigator.of(context)
          //           .pushNamedAndRemoveUntil(registerRoute, (route) => false);
          //     },
          //     child: const Text('Restart'),
          //   )
          // ],
          ),
    );
  }
}
