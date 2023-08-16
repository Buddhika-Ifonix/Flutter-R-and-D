import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/route.dart';
import 'package:myfirstapp/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(children: [
        const Text(
            "We've sent you an email verification, Please open it to verify your account"),
        const Text(
            "If you haven't received a verfication email yet, press the button below"),
        TextButton(
          onPressed: () async {
             await AuthService.firebase().sendEmailVerficate();
          },
          child: const Text('send Email verfication'),
        ),
        TextButton(
            onPressed: () async {
              await AuthService.firebase().logOUt();
              if (!mounted) return;
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(registerRoute, (route) => false);
            },
            child: const Text('Restart'))
      ]),
    );
  }
}
