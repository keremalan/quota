import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/widgets.dart';
import 'package:quota/widgets/text.dart';
import 'package:quota/pages/eventDetail.dart';
import 'package:quota/widgets/eventCardOverview.dart';

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
