import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List category = [
    {
      'name': 'Tranig Plan',
      'image':
          'https://images.pexels.com/photos/3534924/pexels-photo-3534924.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'name': 'Meal Plan',
      'image':
          'https://images.pexels.com/photos/5560867/pexels-photo-5560867.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'name': ' Plan',
      'image':
          'https://images.pexels.com/photos/6999241/pexels-photo-6999241.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'name': 'Supplement Plan',
      'image':
          'https://images.pexels.com/photos/248547/pexels-photo-248547.jpeg?auto=compress&cs=tinysrgb&w=600'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 50,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 28,
                      color: Color.fromARGB(255, 170, 170, 170),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 2, top: 3),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                child: Icon(
                  Icons.person,
                  size: 28,
                  color: Color.fromARGB(255, 170, 170, 170),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text(
                'Store',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...List.generate(
                        category.length,
                        (index) => Container(
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(bottom: 20),
                              padding: EdgeInsets.only(bottom: 20, left: 20),
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          category[index]['image']),
                                      fit: BoxFit.cover)),
                              child: Text(
                                category[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white),
                              ),
                            ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
