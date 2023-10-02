import 'package:exam_project/Screen2.dart';
import 'package:exam_project/reusablecomponant.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'carsoular_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    AppBanner appBanr = AppBanner(1, "title", "images/cursolar.jpeg");
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
                  icon: Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                  
                  label: "Home",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view, color: Colors.grey),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon:InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ScreenTwo()));
                    },
                    child: 
                 Icon(Icons.calendar_today_outlined, color: Colors.grey),),
                label: "grid",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, color: Colors.grey),
                label: "person",
              ),
            ]),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 20,
                              child: Image(
                                  image: AssetImage("images/trealeave.png"),width: 40,height: 40,)),
                     SizedBox(width: 8,),
                          Text(
                            "Moody",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Stack(alignment: Alignment.topRight,
                        children: [
                      
                          // ignore: prefer_const_constructors
                          Icon(Icons.notifications_none,size: 25,),
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text("Hello,",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          Text("Sara Rose,",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "How are you feeling today?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              
                                backgroundColor: Colors.grey[300],
                                child: Image(
                                  image: AssetImage("images/love.jpg"),height: 88,width: 60,
                                )),
                            Text(
                              "love",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Image(height: 88,width: 60,
                                image: AssetImage("images/cool.jpg"),
                              ),
                            ),
                            Text(
                              "cool",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Image(height: 88,width: 60,
                                image: AssetImage("images/happy.jpg"),
                              ),
                            ),
                            Text(
                              "Happpy",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Image(height: 88,width: 60,
                                image: AssetImage("images/sad.jpg"),
                              ),
                            ),
                            Text(
                              "Sad",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ), 
                 imoportantline(Colors.green, "Feature",  "see more"),
                 
                  Container(
                    width: 326,height: 168,
                    child: CarouselSlider(
                      options: CarouselOptions(),
                      items: appbannerlist
                          .map((item) => Container(
                                child: Center(
                                    child: Image(
                                  image: AssetImage(appBanr.imge),
                                  fit: BoxFit.cover,
                                )),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                    imoportantline(Colors.green, "Exercise",  "see more"),
                 
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              width: 151,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Color(0xfffF9F5FF),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Icon(Icons.face_outlined,color: Colors.purple[300],),
                                  Text("Relaxation",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                              )],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                               width: 151,
                            height: 56,
                              decoration: BoxDecoration(
                                  color: Color(0xffFDF2FA),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Icon(Icons.account_box_sharp,color: Colors.pink[300],),
                                  Text("Meditation",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
               
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              width: 151,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFAF5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Icon(Icons.access_time_filled_outlined,color: Colors.orange[300],),
                                  Text("Beathing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                              )],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              width: 151,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: Color(0xffF0F9FF),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Icon(Icons.fiber_manual_record,color: Colors.green[300],),
                                  Text("Yoga",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                              )],
                              )),
                        ),
                  ]

                  )
                  )
                ]
                )
                )
                )
                )
                ;
  }
}
