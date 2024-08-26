import 'package:crm_flutter/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.mainBackground,
            centerTitle: true,
            surfaceTintColor: Colors.transparent,
            shadowColor: AppColors.grey,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              overlayColor: WidgetStatePropertyAll(
                AppColors.grayishBlue.withOpacity(0.1),
              ),
            ),
          ),
          scaffoldBackgroundColor: AppColors.mainBackground,
          textTheme:
              GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
          textSelectionTheme: TextSelectionThemeData(
            selectionColor: const Color(0xFF3F8CFF).withOpacity(0.1),
            selectionHandleColor: const Color(0xFF3F8CFF),
            cursorColor: const Color(0xFF3F8CFF),
          ),
        ),
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
