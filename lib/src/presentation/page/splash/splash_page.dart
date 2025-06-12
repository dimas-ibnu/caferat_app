import 'package:caferat_app/src/common/routes/app_routes.dart';
import 'package:caferat_app/src/presentation/bloc/auth_watcher/auth_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      Future.microtask(() {
        context.read<AuthWatcherBloc>().add(
          const AuthWatcherEvent.authCheckRequest(),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthWatcherBloc, AuthWatcherState>(
      listener: (context, state) {
        switch (state) {
          case Authenticating():
            // Do nothing (or show a loader)
            break;
          case Authenticated():
            context.pushReplacementNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
            break;
          case IsFirstTime():
            context.pushReplacementNamed(AppRoutes.LOGIN_ROUTE_NAME);
            break;
          case Unauthenticated():
            context.pushReplacementNamed(AppRoutes.SIGNUP_ROUTE_NAME);
            break;
          default:
            context.pushReplacementNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
            break;
        }
      },
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.black,
          child: Center(
            child: Text(
              'CafeRat',
              style: GoogleFonts.pacifico(
                fontSize: 40,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
