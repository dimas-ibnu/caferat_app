import 'dart:async';

import 'package:caferat_app/src/common/themes/app_theme.dart';
import 'package:caferat_app/src/core/dependency/dependency_injection.dart'
    as di;
import 'package:caferat_app/src/presentation/bloc/auth_watcher/auth_watcher_bloc.dart';
import 'package:caferat_app/src/presentation/bloc/signin/signin_form_bloc.dart';
import 'package:caferat_app/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:caferat_app/src/untilities/app_bloc_observer.dart';
import 'package:caferat_app/src/untilities/go_router_init.dart';
import 'package:caferat_app/src/untilities/logger.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.transformer = bloc_concurrency.sequential();
      Bloc.observer = const AppBlocObserver();

      await dotenv.load();

      await Supabase.initialize(
        url: dotenv.get('SUPABASE_PROJECT_URL'),
        anonKey: dotenv.get('SUPABASE_ANON_KEY'),
      );

      di.init();
      runApp(const MyApp());
    }, logger.logZoneError),
    const LogOptions(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<AuthWatcherBloc>()),
        BlocProvider(create: (_) => di.locator<SignInFormBloc>()),
        BlocProvider(create: (_) => di.locator<ThemeCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Cafe Rat (Cafe Rating App)',
        theme: themeLight(context),
        darkTheme: themeDark(context),
        themeMode: ThemeMode.system,
        routerConfig: routerInit,
      ),
    );
  }
}
