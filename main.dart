import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/widgets.dart';
import 'package:quota/widgets/text.dart';
import 'package:quota/pages/eventDetail.dart';
import 'package:quota/widgets/eventCardOverview.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Test> fetchTest() async {
  final response = await http
      .get(Uri.parse('http://localhost:3333/posts'));
  if (response.statusCode == 200) {
    return Test.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

//List<Test> testFromJson(String str) => List<Test>.from(json.decode(str).map((x) => Test.fromJson(x)));
//String testToJson(List<Test> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

List<Test> testFromJson(String str) =>
    List<Test>.from(json.decode(str).map((x) => Test.fromJson(x)));
String questionToJson(List<Test> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Test {
  final int id;
  final String title;
  final String description;
  final String date;

  Test({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
});

  factory Test.fromJson(Map<String, dynamic> json) => Test(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      date: json['date'],
    );
    Map<String, dynamic> toJson()=> {
      "id": id,
      "title": title,
      "description": description,
      "date": date,
    };
  }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Future<Test>? futureTest;
  bool isOnline = true;
  @override
  void initState() {
    super.initState();
    futureTest = fetchTest();
  }
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
                          child: Title2Text('Merhaba Kerem', '#1976D2'),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 37),
                          child: Caption2TextCenter(
                              'Burası anasayfan, buradan kayıt olduğun etkinlikleri görüntüleyebilir ve katılım durumunu düzenleyebilirsin.',
                              '#1976D2',
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 27, top: 36, bottom: 22),
                              child: Title1Text('Etkinliklerim', '#004BA0'),
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
                            child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756048/Rectangle.png',eventName: 'NSİstanbul Ocak Ayı Buluşması', eventDate: 'Ocak 23, 2019', eventCreator: 'Şule Turp',),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756075/image_1.png', eventName: 'İstanbul Grubu 2. Buluşma', eventDate: 'Ocak 1, 2022', eventCreator: 'Berkay Çatak',),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 40),
                          child: EventCardOverview(eventImage: 'https://www.upload.ee/image/13756075/image_1.png', eventName: 'İstanbul Grubu 3. Buluşma', eventDate: 'Şubat 1, 2022', eventCreator: 'Berkay Çatak',),
                        ),
                        FutureBuilder<Test>(
                          future: futureTest,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(snapshot.data!.title);
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            }
                            return const CircularProgressIndicator();
                          }
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
