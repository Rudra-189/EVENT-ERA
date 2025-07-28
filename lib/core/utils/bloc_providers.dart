import 'package:eventera/core/api_config/client/api_client.dart';
import 'package:eventera/core/themes/bloc/theme_bloc.dart';
import 'package:eventera/repository/auth_repository.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders extends StatelessWidget {
  final Widget child;

  const BlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<LocaleBloc>(
        //   create: (context) =>
        //       LocaleBloc()..add(SetLocale(locale: Locale('en'))),
        // ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(AuthRepository(ApiClient())),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc()
            ..add(
              InitializeTheme(isDarkThemeOn: false, followSystemTheme: true),
            ),
        ),
      ],
      child: child,
    );
  }
}
