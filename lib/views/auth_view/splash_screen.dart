import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) => const SplashScreen();
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(SplashEvent());
    return Scaffold(
      body: Center(
        child: Text("splash scrren"),
      ),
    );
  }
}
