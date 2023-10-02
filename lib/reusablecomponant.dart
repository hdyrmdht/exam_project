import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DfaultContainer extends StatelessWidget {
  const DfaultContainer(this.color,this.height,this.width,this.title);

  @override
  final String title;
   final Color color;
 final double width;
final  double height;
  Widget build(BuildContext context) {
    return   Container(
      width: width,height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color:Color(0xffE4E7EC) ,),
        color: color,
        
      ),
      child: Center(
        child: Text(title  ,textAlign: TextAlign.center,
         style: TextStyle(
                    color: Color(0xff6941C6),
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
      )
        );
  }
}
class Cardpage3 extends StatelessWidget {
  const Cardpage3(this.color1,this.color2,this.img,this.text1,this.text2);

  @override
  final String text1;
  final String text2;
  final String img;
  final Color color1;
  final Color color2;
  Widget build(BuildContext context) {
    return    Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 7,
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    img,
                    height: 160,
                    width: 326,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 58, left: 30),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:color1),
                          height: 30,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                            child: Text(text1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: color2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                             ),
                          height: 48,
                          width: 278,
                          child: Text(
                           text2   ,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xffFCFCFD),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600))),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        );
  }
}
class imoportantline extends StatelessWidget {
  const imoportantline(this.color,this.tex1,this.text2);
final tex1;
final text2;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   tex1,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Row(children: [
                    Text(
                    text2,
                      style: TextStyle(fontSize: 16, color: color),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: color,
                    ),
                  ]),
                ],
              );
  }
}
