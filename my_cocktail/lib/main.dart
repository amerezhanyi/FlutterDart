import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_cocktail/pages/results_page.dart';
import 'package:my_cocktail/providers/cocktails.dart';
import 'package:provider/provider.dart';

import 'pages/search_page.dart';

void main() {
  // Portrait mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyCocktail()));
}

class MyCocktail extends StatelessWidget {
  const MyCocktail({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Cocktails()),
      ],
      child: Consumer(
        builder: (BuildContext context, cocktails, _) => MaterialApp(
          title: 'My Cocktail',
          theme: ThemeData(
            brightness: Brightness.dark, // Theme: dark mode
            scaffoldBackgroundColor: const Color(0xFF1F2129),
            primaryColor: const Color(0xFF3C4D74),
            secondaryHeaderColor: const Color(0xFF383D4D),
            textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
              headline2: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              headline3: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3C4D74),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ),
          // home: const SearchPage(),
          home: const SearchPage(),
          routes: {
            SearchPage.routeName: (context) => const SearchPage(),
            ResultPage.routeName: (context) => const ResultPage(),
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
