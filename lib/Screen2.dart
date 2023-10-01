import 'package:exam_project/home_screen.dart';
import 'package:exam_project/screen3.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = "page2";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: ((value) {
              index = value;
              setState(() {});
            }),
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon:  InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child:
                  Icon(
                    Icons.home,
                    color: Colors.blueGrey,
                  ),),
                  label: "Home",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ScreenThree()));
                  },
                  child: Icon(Icons.navigation_outlined, color: Colors.grey),
                ),
                label: "navigation",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart, color: Colors.grey),
                label: "chart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, color: Colors.grey),
                label: "person",
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(33),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            "images/love.jpg",
                            width: 57,
                            height: 57,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            Text("Hello, Jade",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            Text(
                              "Ready to workout?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.notifications_none,
                          size: 25,
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 82,
                  width: 326,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 241, 247),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.heart_broken_outlined,
                                    color: Colors.blueGrey[300],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("Heart Rate"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "81",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "BPM",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Container(
                              height: 50,
                              width: 1,
                              color: Colors.blueGrey[200]),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.list,
                                  color: Colors.blueGrey[300],
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("To-do"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "32,5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Container(
                              height: 50,
                              width: 1,
                              color: Colors.blueGrey[200]),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.fireplace_rounded,
                                  color: Colors.blueGrey[300],
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("Calo"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "1000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Cal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Workout Programs",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
                DefaultTabController(
                  length: 4,
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Color.fromARGB(255, 62, 115, 141),
                    labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    labelColor: Color.fromARGB(255, 115, 158, 180),
                    tabs: [
                      Tab(
                        text: "All Type",
                      ),
                      Tab(
                        text: "FullBody",
                      ),
                      Tab(
                        text: "UPPer",
                      ),
                      Tab(
                        text: "Lower",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  height: 174,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(
                          "images/yoga.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  height: 174,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(
                          "images/gym.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
