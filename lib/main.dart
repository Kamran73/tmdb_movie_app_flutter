import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/businessLogic/movieScreenBloc/movie_screen_bloc.dart';
import 'package:movies_app/helper/utils/dependency_utils.dart';
import 'package:movies_app/presentation/screens/movie_screen.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyUtils.registerAppDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieScreenBloc>(
      create: (context) => getIt(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movies App',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: const MovieScreen(),
      ),
    );
  }
}
