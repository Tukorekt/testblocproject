import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'main_city_search.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final themeData = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.white.withOpacity(0),
        titleTextStyle: GoogleFonts.montserrat(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
        )
    ),
    textTheme: TextTheme(
        bodyMedium: GoogleFonts.montserrat(fontSize: 20, color: Colors.black),
        bodySmall: GoogleFonts.montserrat(fontSize: 20, color: Colors.black)),
    backgroundColor: Colors.white,
    cardColor: Colors.black.withOpacity(.05)
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: themeData,
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    home: const MainPage(cityName: ''),
  ));
}

class MainPage extends StatelessWidget {
  final String cityName;

  const MainPage({Key? key, required this.cityName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            appBar: AppBar(
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              shadowColor: Theme.of(context).appBarTheme.shadowColor,
              title: Text(
                S.current.search,
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    showSearch(
                        context: context,
                        delegate: CitySearch(),
                        useRootNavigator: true);
                  },
                  child: const CircleAvatar(
                    child: Icon(Icons.search),
                  ),
                )
              ],
            ),
            body: entryState(context, size)));
  }

  Widget entryState(BuildContext context, Size size) {
    return Center(
        child: Text(
          S.current.hint,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ));
  }
}
