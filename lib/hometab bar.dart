import 'package:coffee/tab%20data.dart';
import 'package:flutter/material.dart';
class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
            ),
            child: Column(
               children: [
                 TabBar(
                   labelColor: Colors.black,
                     labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                     unselectedLabelColor: Colors.grey,
                     unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                     tabs: [
                  Tab(text: 'Hot Coffee',),
                  Tab(text: 'Cold Coffee',),
                  Tab(text: 'Others',),

            ]),
                 Expanded(child: TabBarView(children: [
                   c4(),
                   c4(),
                   c4(),
                 ]))
               ],
             )

          ),
        ));
  }
}
