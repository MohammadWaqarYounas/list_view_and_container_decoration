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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'List View HomePage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "waqar",
      "kamran",
      "saad",
      "husnain",
      "rahab",
      "amar",
      "zain",
      "asjad",
      "ABR"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              height: 200,
              width: 100,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Text(
                    arrNames[index],
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  );
                },
                itemCount: arrNames.length,
                // reverse: false,
                // itemExtent: 100,
                // scrollDirection: Axis.horizontal,

                separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    color: Colors.amber,
                  );
                  //   const Divider(
                  //   height: 50,
                  //   thickness: 1,
                  // );
                },
              ),
            ),
            Container(
              height: 300,
              width: 50,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    arrNames[index],
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  );
                },
                itemCount: arrNames.length,
                reverse: false,
                // itemExtent: 100,
                // scrollDirection: Axis.horizontal,
              ),
            ),
            Column(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  child: Image.asset("assets/images/ic_icon.png"),
                  decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      border: Border.all(color: Colors.amber, width: 2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black87,
                          spreadRadius: 1,
                        )
                      ],
                      shape: BoxShape.rectangle
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.amber, width: 2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black87,
                          spreadRadius: 1,
                        )
                      ],
                      shape: BoxShape.rectangle
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Text("Hello Text 1", style: TextStyle(fontSize: 20, color: Colors.blueAccent,fontWeight: FontWeight.w500),),
