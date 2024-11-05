import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _title = "Nueva nota";

  @override
  Widget build(BuildContext context) {
    void changeTitle(String text) {
      setState(() {
        _title = text;
        if (_title == "") {
          _title = "Nueva nota";
        }
      });
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: false,
        title: Text(_title),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sync,
                color: Colors.black,
              ))
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(2.0),
            child: Container(
              color: Colors.black,
              height: 1.0,
            )),
      ),
      body: Column(
        children: [
          Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1.0))),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.description,
                          size: 42,
                        )),
                    TextField(
                      onChanged: changeTitle,
                      decoration: const InputDecoration(
                          hintText: "Nueva nota", border: InputBorder.none),
                    ),
                  ],
                ),
              )),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(32.00),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  decoration:
                  InputDecoration(hintText: "Texto", border: InputBorder.none),
                )
    ),
          )
        ], // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
