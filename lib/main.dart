import 'package:flutter/material.dart';

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
      home: AssetPractice(),
    );
  }
}

class AssetPractice extends StatelessWidget {
  const AssetPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(15))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40)), // Image border
                child: SizedBox.fromSize(
                  child: Image.asset(
                    'assets/bg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
            top: 100,
            child: Container(
              padding: EdgeInsets.all(25),
              width: MediaQuery.of(context).size.width,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Ibrahim',
                    style: TextStyle(color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 32.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('pas.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 3,
              // width: MediaQuery.of(context).size.width / 2,
              width: double.infinity,
              child: Card(
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Halo Button',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Pencet saya',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(15),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Pesan Test Sekarang'))),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
