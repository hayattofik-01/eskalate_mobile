import 'package:flutter/material.dart';
import 'package:profile_page/blueCard.dart';
import 'package:profile_page/post_display.dart';


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
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child:Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Profile"),
            SizedBox(width: 30),
            Icon(Icons.more_horiz)
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 50.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      //<-- SEE HERE
                                      width: 5,
                                      color: Color.fromARGB(255, 39, 176, 169)),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                        "https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?b=1&k=20&m=1270067126&s=612x612&w=0&h=tcabRaVlA0bsZhWCDBXxC1IYuGnh7_VuramO-vJ5jRs=",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25),
                              Column(
                                children: [
                                  Text("@Joviadan"),
                                  SizedBox(height: 5),
                                  Text("Jov Daniel"),
                                  SizedBox(height: 10),
                                  Text("Ux Designer"),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text("About me"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 60),
                          child: Text('This is a paragraph of text. '
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                              'Suspendisse potenti. Aenean dapibus sapien maximus, venenatis velit non, eleifend massa. '),
                        ),
                      ],
                    ))),
                    BlueCard()
                    ],
          ),
        ),
        PostDisplay()
//        Container(
//   decoration: BoxDecoration(
//     color: Colors.blueGrey,
//     borderRadius: BorderRadius.only(
//       topLeft: Radius.circular(20),
//       topRight: Radius.circular(20),
//     ),
//   ),
//   width:500,
//   height: 170,
// )

               ]),
    ));
  
  }
}
