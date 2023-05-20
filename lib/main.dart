import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:net_flek/application/downloads/downloads_bloc.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/domain/core/di/injectable.dart';
import 'package:net_flek/domain/downloads/i_downloads_repo.dart';
import 'package:net_flek/presentation/main_page/widgets/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx)=> getIt<DownloadsBloc>())
      ],
      child: MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent
            ),
            fontFamily: GoogleFonts
                .montserrat()
                .fontFamily,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
                .copyWith(background: Colors.black),
            iconTheme: const IconThemeData(
                color: secondryColor
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                color: Colors.white,
              ),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white),
              titleLarge: TextStyle(color: Colors.white),
            )),
        home: const ScreenMainPage(),
      ),
    );
  }
}
