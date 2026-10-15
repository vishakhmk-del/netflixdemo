import 'package:dmflix/application/downloads/downloads_bloc.dart';
import 'package:dmflix/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:dmflix/application/hotandnew/hot_and_new_bloc.dart';
import 'package:dmflix/application/search/search_bloc.dart';
import 'package:dmflix/core/hook/hooks.dart';
import 'package:dmflix/domain/di/injectable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<DownloadsBloc>()),
            BlocProvider(create: (context) => getIt<SearchBloc>()),
            BlocProvider(create: (context) => getIt<FastLaughBloc>()),
            BlocProvider(create: (context) => getIt<HotAndNewBloc>()),

          ],
          child: MaterialApp(
            title: 'NetFlix',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: backgroundcolor,
              fontFamily: GoogleFonts.montserrat().fontFamily,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              textTheme: TextTheme(
                bodySmall: TextStyle(color: whitecolor),
                bodyMedium: TextStyle(color: whitecolor),
              ),
            ),
            home: ScreenMainpage(),
          ),
        );
      },
    );
  }
}
