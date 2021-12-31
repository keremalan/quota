import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/widgets.dart';
import 'package:quota/widgets/text.dart';

class EventCardOverview extends StatelessWidget {
  EventCardOverview({
    required this.eventImage,
    required this.eventName,
    required this.eventDate,
    required this.eventCreator,
    Key? key,
  }) : super(key: key);
  String eventImage;
  String eventName;
  String eventDate;
  String eventCreator;

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
                    Caption2Text('$eventName', '#0077C2'),
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
            IconButton(onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Title1Text('Katılım durumu', '#004BA0'),
                content: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - 16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network('$eventImage'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: SubheadText('$eventName', '#004BA0'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: Caption1Text('$eventDate', '#0077C2'),
                              ),
                              Caption1Text('$eventCreator tarafından oluşturuldu.', '#0077C2')
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: Image.network(
                                      'https://www.upload.ee/image/13756261/Group_7.png',
                                      width: 80,
                                    ),
                                  ),
                                  Text("Gidiyorum"),
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: Image.network(
                                      'https://www.upload.ee/image/13756267/Group_8.png',
                                      width: 80,
                                    ),
                                  ),
                                  Text("Belki"),
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: Image.network(
                                      'https://www.upload.ee/image/13756268/Group_9__1_.png',
                                      width: 80,
                                    ),
                                  ),
                                  Text("Gitmiyorum"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            icon: Icon(Icons.edit, color: HexColor('#0077C2'))
              ),
          ],
        ),
      ),
    );
  }
}
