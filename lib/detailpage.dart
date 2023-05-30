import 'package:coffee/models.dart';
import 'package:flutter/material.dart';


import 'detail2.dart';
class detail extends StatefulWidget {
  detail({Key? key,required this.img,required this.name,required this.data,required this.rate,required this.dis}) : super(key: key);
  var img,name,data,rate,dis;



  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {

  // var starcount=int.parse(tabmodel[index]['star']);


  @override
  Widget build(BuildContext context) {


    return  Scaffold(

      body: Stack(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/${widget.img}'),fit: BoxFit.cover)
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),topLeft: Radius.circular(25)
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25,left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${widget.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection:Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context,index){
                            return Icon(Icons.star,color: Colors.yellow,);
                          }),
                    ),
                    Text('Discription',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),

                    Text('${widget.data}'),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price',style: TextStyle(color: Colors.black45),),
                        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),onPressed: (){}, child: Text('Add to cart'))

                      ],
                    ),
                    SizedBox(height: 10,),


                    Text('${widget.rate}',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          )


          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          //   ),
          //   child: Column(
          //     children: [
          //       Text('${widget.name}'),
          //       SizedBox(height: 15,),
          //       Text('${widget.dis}'),
          //       SizedBox(height: 15,),
          //       Text('${widget.rate}'),
          //       SizedBox(height: 15,),
          //
          //
          //     ],
          //   ),
          // )
        ],
      ),

    );
  }
}
