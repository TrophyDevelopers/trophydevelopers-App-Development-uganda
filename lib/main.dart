import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trophydevelopers/bloc/bloc/auth_bloc.dart';
import 'package:trophydevelopers/data/repositories/auth_repository.dart';
import 'package:trophydevelopers/presentation/Dashboard/dashboard.dart';

import 'presentation/SignUp/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TrophyDevelopers());
}

class TrophyDevelopers extends StatelessWidget {
  const TrophyDevelopers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepository: RepositoryProvider.of<AuthRepository>(context),
        ),
        child: MaterialApp(
          home: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                // If the snapshot has user data, then they're already signed in. So Navigating to the Dashboard.
                if (snapshot.hasData) {
                  return const Dashboard();
                }
                // Otherwise, they're not signed in. Show the sign in page.
                return const Welcome();
              }),
        ),
      ),
    );
  }
}
