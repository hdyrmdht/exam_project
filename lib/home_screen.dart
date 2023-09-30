import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'carsoular_model.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  var _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return
    
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: ((value) {
                index = value;
                setState(() {});
              }),
              backgroundColor: Colors.green,
              items: [
              
                BottomNavigationBarItem(
                    icon:Icon(Icons.home,color: Colors.green,) ,
                    label: "Home",
                    backgroundColor: Colors.white),
                    
                BottomNavigationBarItem(
 icon:Icon(Icons.gradient,color: Colors.grey) ,     
                label: "Home",
                    ),
                BottomNavigationBarItem(
 icon:Icon(Icons.calendar_month,color: Colors.grey) ,                        label: "gride",
                  ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person,color: Colors.grey),
                    label: "person",
                 ),
              ]),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20,
                            child: Image(image: AssetImage("images/trealeave.png"))),
                          Text(
                            "Moody",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 20,
                            color: Colors.red,
                          ),
                          Icon(Icons.notifications),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
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
                SizedBox(height: 15,),
                 Row(
                   children: [
                     Text(
                          "How are you feeling today?",
                          style: TextStyle(fontSize: 15),
                        ),
                   ],
                 ),
           SizedBox(height: 12,),
                   Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child:Image(image: AssetImage("images/love.jpg"),)
                          ),
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
                        
                                child:Image(image: AssetImage("images/cool.jpg"),),
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
                            child:Image(image: AssetImage("images/happy.jpg"),),
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
                            child:Image(image: AssetImage("images/sad.jpg"),),
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
                SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feature",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(children: [
                      Text(
                        "see more",
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,size: 15,
                        color: Colors.green,
                      ),
                    ]),
                  ],
                ),
                 SizedBox(height: 15,),
                 Container(
                  child: Image(image:   AssetImage("images/cursolar.jpeg")),
                 ),
                 SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercise",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(children: [
                      Text(
                        "see more",
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,size: 15,
                        color: Colors.green,
                      ),
                    ]),
                ],
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                         width: 120,height: 50,decoration: BoxDecoration(color: Colors.pink,
                          borderRadius: BorderRadius.circular(12)),
                      
                        child: Row(
                    
                        children: [
                          Icon(Icons.face_outlined),
                          Text("Relaxation"),
                        ],
                      )),
                    ),
                  ),
                  
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Expanded(
                       child: Container(
                         width: 120,height: 50,decoration: BoxDecoration(color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                                     
                        child: Row(
                     
                        children: [
                          Icon(Icons.person_add_alt_1_outlined),
                          Text("Meditation"),
                        ],
                                     )),
                     ),
                   ),
                 
                ],),
              ),
              SizedBox(height: 15,),
                 SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                         width: 120,height: 50,decoration: BoxDecoration(color: Colors.orange,
                          borderRadius: BorderRadius.circular(12)),
                      
                        child: Row(
                    
                        children: [
                          Icon(Icons.face_outlined),
                          Text("Relaxation"),
                        ],
                      )),
                    ),
                  ),
                  
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Expanded(
                       child: Container(
                         width: 120,height: 50,decoration: BoxDecoration(color: Colors.purple,
                          borderRadius: BorderRadius.circular(12)),
                                     
                        child: Row(
                     
                        children: [
                          Icon(Icons.person_add_alt_1_outlined),
                          Text("Meditation"),
                        ],
                                     )),
                     ),
                   ),
                 
                ],),
              ),
            ]),
          ),
        
         ) ); 
    
  }

}
class Indecator extends StatelessWidget {
  final bool isactive;
  Indecator({required this.isactive});

  @override
  Widget build(BuildContext conte8xt) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      width: isactive ? 22 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isactive ? Colors.grey : Colors.white,
      ),
    );
  }
}

class BannerItem extends StatelessWidget {
  AppBanner appBanner;
  BannerItem(this.appBanner);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage("images/cursolar.jpeg")),
      ),
      child: DefaultTextStyle(
          style: TextStyle(fontSize: 20, color: Colors.white),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
         
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            
            ],
          )),
    );
  }
}












//   Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         SizedBox(width: 20,
//                           child: Image(image: AssetImage("images/trealeave.png"))),
//                         Text(
//                           "Moody",
//                           style: TextStyle(
//                               fontSize: 26, fontWeight: FontWeight.w400),
//                         ),
//                       ],
//                     ),
//                     Stack(
//                       children: [
//                         Container(
//                           width: 8,
//                           color: Colors.red,
//                         ),
//                         Icon(Icons.notifications),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 12,),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         Text("Hello,",
//                             style: TextStyle(
//                               fontSize: 29,
//                             )),
//                         Text("Sara Rose,",
//                             style: TextStyle(
//                                 fontSize: 30, fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "How are you feeling today?",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.grey[300],
//                           child: Icon(
//                             Icons.face_outlined,
//                             size: 30,
//                           ),
//                         ),
//                         Text(
//                           "love",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.grey[300],
//                           child: Icon(
//                             Icons.face_outlined,
//                             size: 30,
//                           ),
//                         ),
//                         Text(
//                           "cool",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.grey[300],
//                           child: Icon(
//                             Icons.face_outlined,
//                             size: 30,
//                           ),
//                         ),
//                         Text(
//                           "Happpy",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             backgroundColor: Colors.grey[300],
//                             child: Icon(
//                               Icons.face_outlined,
//                               size: 30,
//                             ),
//                           ),
//                           Text(
//                             "Sad",
//                             style: TextStyle(fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Feature",
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     Row(children: [
//                       Text(
//                         "Feature",
//                         style: TextStyle(fontSize: 10, color: Colors.green),
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.green,
//                       ),
//                     ]),
//                   ],
//                 ),
             
//              Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//         Container(
//             margin: EdgeInsets.symmetric(vertical: 16),
            
//             child: PageView.builder(
//               onPageChanged: (index){
//                 setState(() {
//                   _selectedindex=index;
//                 });
//               },
//                 controller: PageController(viewportFraction: 0.7),
//                 itemCount: appbannerlist.length,
//                 itemBuilder: (context, index) {
//                   var banner=appbannerlist[index];
//                   var _scale=_selectedindex==index?1.0:.8;
//                   return TweenAnimationBuilder(
//                     duration: Duration(
// microseconds: 350,
//                   ),tween: Tween(begin: _scale,end: _scale),curve: Curves.ease,
//                   builder: (context, value, child) {
//                     return Transform.scale(scale: value ,child: child,);
//                   },
//                     child: BannerItem(banner));
//                 }),
//         ),
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             ...List.generate(
//                 appbannerlist.length,
//                 (index) =>
//                     Indecator(isactive: _selectedindex == index ? true : false))
//         ]),
//       ]),
            