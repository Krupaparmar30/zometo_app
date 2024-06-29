import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zometo_app/utils/offer_list.dart';

class offerPage extends StatefulWidget {
  const offerPage({super.key});

  @override
  State<offerPage> createState() => _offerPageState();
}

class _offerPageState extends State<offerPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children:List.generate(offerList.length, (index) =>    Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: height*0.235,
                    width: width*0.95,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0,2),
                              blurRadius: 2,spreadRadius: 2
                          )
                        ]
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height*0.238,
                        width: width*0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(offerList[index]['offername'],style: TextStyle(
                                  fontSize: 18
                              ),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(offerList[index]['offerpername'],style: TextStyle(
                                fontSize: 22,fontWeight: FontWeight.bold
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(offerList[index]['tag'],style: TextStyle(
                                  fontSize: 15,
                              ),),
                            )

                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: height*0.238,
                            width: width*0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            ),
                            // child: Image.asset(offerList[index]['img'],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Container(
                              height: height*0.1,
                              width: width*0.279,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  image: DecorationImage(
                                      opacity: 2.0,
                                      image: AssetImage(

                                          offerList[index]['img']
                                      )
                                  )
                              ),

                            ),

                          ),
                          Container(
                            height: height*0.080,
                            width: width*0.150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                                image: DecorationImage(
                                    opacity: 2.0,
                                    fit: BoxFit.cover,
                                    image: AssetImage(

                                        offerList[index]['img2']
                                    )
                                )
                            ),
                            // child: Image.asset(offerList[index]['img'],),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 60,),
                            child: Container(
                              height: height*0.080,
                              width: width*0.180,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  image: DecorationImage(
                                      opacity: 2.0,
                                      fit: BoxFit.fill,
                                      image: AssetImage(

                                          offerList[index]['img3']
                                      )
                                  )
                              ),
                              // child: Image.asset(offerList[index]['img'],),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80,left:80),

                            child: Container(
                              height: height*0.090,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  image: DecorationImage(
                                      opacity: 2.0,
                                      fit: BoxFit.cover,
                                      image: AssetImage(

                                          offerList[index]['img4']
                                      )
                                  )
                              ),
                              // child: Image.asset(offerList[index]['img'],),
                            ),
                          ),
                        ],
                      )
                    ],
                  )

                ],
              ),
            ))
        ,
            )
          ],
        ),
      ),
    );
  }
}
