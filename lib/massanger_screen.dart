import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'classes/vertical_scroll.dart';
import 'classes/horizontal_scroll.dart';
import 'classes/info_class.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({Key? Key}): super(key:Key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: SafeArea(
          child: CircleAvatar(
            radius: 20,
            backgroundImage:NetworkImage('https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg',) ,
          ),
        ),
        title: Text('Chats',style: TextStyle(color: Colors.white,fontSize: 22,),),
        actions: [
          Container(
            decoration:
            BoxDecoration(
                color: Colors.grey.shade100.withOpacity(0.4),
                borderRadius: BorderRadius.circular(300)
            ),
            width: 50,
            height: 50,
            child: Icon(CupertinoIcons.camera_fill,color: Colors.white,),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration:
            BoxDecoration(
                color: Colors.grey.shade100.withOpacity(0.4),
                borderRadius: BorderRadius.circular(300)
            ),
            width: 50,
            height: 50,
            child: Icon(CupertinoIcons.pen,color: Colors.white,size: 40,),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(CupertinoIcons.search,color: Colors.white,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.grey

                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) => HerizontalScroll(info:list[index],),
                  separatorBuilder:(context,index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: list.length
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)=> VertictalScroll(info:list[index],),
              separatorBuilder: (context,index) => SizedBox(
                height: 20,
              ),
                itemCount: list.length
            )
          ],
        ),
      ),
    );
  }
}
