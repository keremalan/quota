import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: Column(
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

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        appBar: AnasayfaAppBar(),
        body: SingleChildScrollView(
          child: Container(
            width: 800,
            child: Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              "https://www.upload.ee/image/13755976/profil__1_.png",
                              height: 120,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: HexColor('#33F847'),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            "Merhaba Kerem",
                            style: TextStyle(
                              color: HexColor('#1976D2'),
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 37),
                          child: Text(
                            "Burası anasayfan, buradan kayıt olduğun etkinlikleri görüntüleyebilir ve katılım durumunu düzenleyebilirsin.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: HexColor('#1976D2'),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 27, top: 36, bottom: 22),
                              child: Text(
                                "Etkinliklerim",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: HexColor('#004BA0'),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const EventPage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019',),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 40),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756075/image_1.png', eventName: 'OUA İstanbul Grubu 2. Buluşması', eventDate: 'Ocak 1, 2022',),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: Column(
          children: [
            AnasayfaAppBar(),
            Text("Etkinlik detay sayfası"),
          ],
        ),
      ),
    );
  }
}


class EventCardOverview extends StatelessWidget {
   EventCardOverview({
     required this.eventImage,
     required this.eventName,
     required this.eventDate,
    Key? key,
  }) : super(key: key);
   String eventImage;
   String eventName;
   String eventDate;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: HexColor('#FFFFFF'),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Image.network(
                      "$eventImage",
                      height: 60,
                      width: 60,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$eventName",
                      style: TextStyle(
                        color: HexColor('#004BA0'),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "$eventDate",
                      style: TextStyle(
                        color: HexColor('#0077C2'),
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.edit, color: HexColor('#004BA0')),
          ],
        ),
      ),
    );
  }
}

class AnasayfaAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(60);

  const AnasayfaAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: HexColor('#FFFFFF'),
      leading: Image.network(
        "https://www.upload.ee/image/13756097/Group_2.1.png",
        height: 50,
        width: 50,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.menu, color: HexColor('#004BA0')),
        ),
      ],
    );
  }
}

// Row(
//             children: [
//               Image.network(
//                 "https://hwp.com.tr/wp-content/uploads/2021/09/google.jpg",
//                 height: 130,
//                 fit: BoxFit.cover,
//               ),
//               Text("2",
//               style: TextStyle(
//                 color: Colors.purple,
//                 fontSize: 34,
//               ),
//               ),
//               Text("23498u23948239842u2"),
//             ],
//           ),
