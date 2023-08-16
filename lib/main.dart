
import 'package:flutter/material.dart';
import 'package:myfirstapp/constant/route.dart';

import 'package:myfirstapp/services/auth/auth_service.dart';
import 'package:myfirstapp/views/login_view.dart';
import 'package:myfirstapp/views/notes_view.dart';
import 'package:myfirstapp/views/register_view.dart';
import 'package:myfirstapp/views/verify_email_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const HomePage(),
    routes: {
      loginRoute: (context) => const LoginView(),
      registerRoute: (context) => const RegisterView(),
      notesRoute: (context) => const NotesView(),
      verifyEmailRoute: (context) => const VerifyEmailView()
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Build method for the home screen widget.
    return Scaffold(
      // Scaffold is a basic structure for the screen, including an app bar and a body.
      // AppBar is the top navigation bar with the title "Home".
      body: FutureBuilder(
        // FutureBuilder widget helps manage asynchronous operations and UI updates.
        future: AuthService.firebase().initialize(),
        // Initializes the Firebase app using the default options for the current platform.
        builder: (context, snapshot) {
          // Builder callback function for FutureBuilder.
          switch (snapshot.connectionState) {
            // Switch based on the connection state of the Future.

            case ConnectionState.done:
              final user = AuthService.firebase().currentUser;
              if (user != null) {
                if (user.isEmailVerified) {
                  return const NotesView();
                } else {
          
                  return const VerifyEmailView();
                }
              } else {
                return const LoginView();
              }

            default:
              // For any other connection state (waiting, active, not started),
              return const CircularProgressIndicator();
            // Display "Loading..." using a Text widget.
          }
        },
      ),
    );
  }
}


