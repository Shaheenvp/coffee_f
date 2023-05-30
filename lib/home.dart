import 'package:flutter/material.dart';

import 'hometab bar.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: .85,
            child: Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage('assets/cof.png'),
               fit: BoxFit.cover,)
             ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Opacity(opacity: .85,
            child: Icon(Icons.horizontal_split_rounded,color: Colors.white70,size: 25,)),
          ),
          Positioned(
            left: 220,
            top: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Its a Great',style: TextStyle(color: Colors.white70,fontSize: 17),),
                    SizedBox(width: 5,),
                    Text('Day For',style: TextStyle(color: Colors.white,fontSize: 17),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Text('Coffee',style: TextStyle(color: Colors.white,fontSize: 17),),
                )
              ],
            ),
          ),
Align(
  alignment: Alignment.bottomCenter,
  child:   Container(

    height:400 ,

    width: double.infinity,

    child: tab(),

  ),
)
        ],
      ),
    );
  }
}
