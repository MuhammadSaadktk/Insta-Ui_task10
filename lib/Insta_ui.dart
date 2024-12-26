import 'package:flutter/material.dart';

class InstaUi extends StatefulWidget {
  const InstaUi({super.key});

  @override
  State<InstaUi> createState() => _InstaUiState();
}

class _InstaUiState extends State<InstaUi> {
  List stories = [
    'M.Saad',
    'Ali',
    'Salman',
    'Kaleem',
    'Saddam',
  ];

  List images = [
    'assets/saad.png.jpg',
    'assets/saad8.png.jpg',
    'assets/saad5.png.jpg',
    'assets/saad9.png.jpg',
    'assets/saad10.png.jpg',
  ];
  List postimages = [
    'assets/saad2.png.jpg',
    'assets/saad7.png.jpg',
    'assets/saad5.png.jpg',
    'assets/saad9.png.jpg',
    'assets/afran.png.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined),
        title: Text(
          'Instagram',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.share_rounded),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'watch all',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(images[index]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            stories[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 500,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                      postimages[index],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  stories[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Icon(Icons.more_horiz_outlined),
                          ],
                        ),
                      ),
                      Container(
                          width: 400,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(postimages[index]),
                                fit: BoxFit.cover,
                              ))),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.favorite_border),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.message_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.share),
                                  ],
                                ),
                                Icon(Icons.save_alt),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '2.875 Likes',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  'marinadillaco Hi!!',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text.rich(TextSpan(
                                    text: "  #marniad",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)))
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
