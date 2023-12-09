import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'classes/vertical_scroll.dart';
import 'classes/horizontal_scroll.dart';
import 'classes/info_class.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? Key}): super(key:Key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text('Instagram',style: TextStyle(fontSize: 23,color: Colors.white),),
              Icon(CupertinoIcons.chevron_down,color: Colors.white,)
            ],
          ),
          actions: [
            Icon(Icons.add_box_outlined,color: Colors.white,),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Icon(CupertinoIcons.heart,color: Colors.white,),
                PositionedDirectional(
                  top: 3,
                  end: 0,
                  child: CircleAvatar(
                    radius:3,
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack
              (
                children:[
                Icon(Icons.message,color: Colors.white,),
                  PositionedDirectional(
                    top: 0,
                    end: 0,
                    child: CircleAvatar(
                      radius:6,
                      backgroundColor: Colors.red,
                      child: Text('6',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ),
                  )
            ]
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:NetworkImage('https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg',) ,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Text('user name',style: TextStyle(color: Colors.white),)),
                  Icon(Icons.more_horiz,color: Colors.white,)
                ],
              ),
            ),
            Image.network('https://docs.flutter.dev/assets/images/flutter-logo-sharing.png'),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(CupertinoIcons.heart,color: Colors.white,),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.mode_comment_outlined,color: Colors.white,),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.send,color: Colors.white,),
                  Expanded(child: Icon(CupertinoIcons.bookmark,color: Colors.white,))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
