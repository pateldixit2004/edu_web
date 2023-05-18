import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../provider/productProvider.dart';

class Education_Screeb extends StatefulWidget {
  const Education_Screeb({Key? key}) : super(key: key);

  @override
  State<Education_Screeb> createState() => _Education_ScreebState();
}

class _Education_ScreebState extends State<Education_Screeb> {
  productProvider? providerF;
  productProvider? providerT;
  int? index;
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<productProvider>(context, listen: false);
    providerT = Provider.of<productProvider>(context, listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          ListTile(
            leading:   Text("All education Platform",style: TextStyle(color: Colors.black,fontSize: 20.sp),),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 5.h,
             width: 100.w,
             alignment: Alignment.center,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
             child: Center(
               child: ListTile(
                 leading: Icon(Icons.search_rounded,color: Colors.black,),
                 title: Text("serch here"),
               ),
             ),
           ),
         ),


          SizedBox(height: 5),
          title(),
          SizedBox(height: 10,),
          ListTile(
            leading: Text("Education website",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'webs', arguments: index);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 15.h,
                        width: 15.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                // "${providerF!.itemList[index].photo}",
                                "${providerF!.eduList[index].photo}",
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      // Text("${providerF!.itemList[index].name}")
                      Text("${providerF!.eduList[index].name}",style: TextStyle(color: Colors.black),)
                    ],
                  ),
                );
              },
              itemCount: providerF!.eduList.length,
            ),
          ),

        ],
      ),
    ),);
  }
  Widget title()
  {
    return Container(
      height: 10.h,
      width: 100.h,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/edu/img_4.png"),),
                  Text("Book"),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/edu/img_5.png"),),
                  Text("Free course"),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/edu/img_6.png"),),
                  Text("Leader board"),
                ],
              ),


            ],
          ),

        ],
      ),
    );
  }
}
