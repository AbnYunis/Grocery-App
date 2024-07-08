import 'package:get_it/get_it.dart';
import 'package:grocery/core/utils/function/service_locator.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';

import 'core/utils/function/shared_data.dart';

// class LocaleManager {
//   static Locale currentLocale = const Locale('en');
//
//   static void setLocale(BuildContext context, Locale newLocale) {
//     currentLocale = newLocale;
//     // Rebuild the widget tree when the locale changes
//     runApp(MyApp());
//   }
// }

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedData.init();
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // locale: LocaleManager.currentLocale,
      // supportedLocales: const [
      //   Locale('en'),
      //   Locale('ar'),
      // ],
      // localizationsDelegates: [
      //   AppLocalization.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.grey,
      ),
    );
  }
}
