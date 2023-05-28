import 'package:uzima/screens/sign_in/page/sign_in_page.dart';
import 'package:uzima/screens/sign_up/bloc/signup_bloc.dart';
import 'package:uzima/screens/sign_up/widget/sign_up_content.dart';
import 'package:uzima/screens/tab_bar/page/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody(context));
  }

  BlocProvider<SignUpBloc> _buildBody(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (BuildContext context) => SignUpBloc(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listenWhen: (_, currState) =>
            currState is NextTabBarPageState ||
            currState is NextSignInPageState ||
            currState is ErrorState,
        listener: (context, state) {
          if (state is NextTabBarPageState) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const TabBarPage()));
          } else if (state is NextSignInPageState) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const SignInPage()));
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        buildWhen: (_, currState) => currState is SignupInitial,
        builder: (context, state) {
          return const SignUpContent();
        },
      ),
    );
  }
}
