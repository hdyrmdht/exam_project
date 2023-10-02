import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_screen.dart';
import 'reusablecomponant.dart';

class ScreenThree extends StatefulWidget {
  static const String routeName = "page3";
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    int index=1;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 242, 252),
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
                    Icons.calendar_today,
                    color: Colors.blueGrey,
                  ),),
                  label: "Today",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ScreenThree()));
                  },
                  child: Icon(Icons.grid_view_sharp, color: Color.fromARGB(255, 77, 18, 145)),
                ),
                label: "insights",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline, color: Colors.grey),
                label: "Chat",
              ),]),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 50),
              child: Row(
                children: [
                  Image.asset(
                    "images/log3.png",
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("AliceCare",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 320,
              height: 44,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black26)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xff667085),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("Articles, Video, Audio and More,...",
                        style: TextStyle(
                            color: Color(0xff667085),
                            fontSize: 18,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
                    child: DfaultContainer(Color(0xffF4EBFF), 44, 99, "Discover"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, bottom: 16, left: 10, right: 10),
                    child: DfaultContainer(Color(0xffE4E7EC), 40, 76, "News"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16, right: 10),
                    child:
                        DfaultContainer(Color(0xffE4E7EC), 40, 133, "Most Viewed"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
                    child: DfaultContainer(Color(0xffE4E7EC), 40, 80, "Saved"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: imoportantline(Color(0xff5925DC), "HoT Topics",  "See all"),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Cardpage3(
                      Color(0xffFEF0C7),
                      Color(0xff93370D),
                      "images/6.jpeg",
                      "SELF-CARE",
                      "10 Easy Self-Care Ideas That Can Help Boost Your Health"),
                        Cardpage3(
                 Color.fromARGB(255, 240, 209, 219),
                  Color(0xff912018),
                  "images/3.jpeg",
                  "CYCLE",
                  "How to take care of Menstrual Hygiene during Menstrual Cycle"),
                ],
              ),
            ),
                 Padding(
                   padding: const EdgeInsets.only(left: 16.0,top:16 ),
                   child: Text(
                      "Get Tips",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                            "images/card2.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                   imoportantline(Color(0xff5925DC), "Cycle Phases and Period",  "See all")
          ]),
        ),
      ),
    );
  }
}
