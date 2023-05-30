import 'package:coffee/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models.dart';
class c4 extends StatefulWidget {
  const c4({Key? key}) : super(key: key);

  @override
  State<c4> createState() => _c4State();
}

class _c4State extends State<c4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 10),
              child: Container(
                height: 50,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search Coffee',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              width: 350,
              child: ListView.builder(
                itemCount: tabmodel.length,
    itemBuilder: (context,index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(img: tabmodel[index]['img'],
              name: tabmodel[index]['name'],
              dis: tabmodel[index]['dis'], rate: tabmodel[index]['rate'], data: tabmodel[index]['data'],)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('${tabmodel[index]['img']}'),
                fit: BoxFit.cover)
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${tabmodel[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('${tabmodel[index]['dis']}',style: TextStyle(color: Colors.black38),),
                SizedBox(height: 8,),

                Text('${tabmodel[index]['rate']}',style: TextStyle(fontWeight: FontWeight.bold),)

              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.plus_app_fill,color: Colors.brown,))

          ],
        ),
      ),
    );
    // child: InkWell(
    // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>c5(
    // img: tabmodel[index]['Img'],
    // dis: tabmodel[index]['dl'],
    // rate: tabmodel[index]['rs'],
    // name: tabmodel[index]['name']))););)



                }
              )
            )
          ],
        ),
      ),

    );
  }
}
