import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'instagram_info.dart';

class Instagrame_code extends StatelessWidget {
  final InstaInfo instaInfo;
  const Instagrame_code({required this.instaInfo, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage:NetworkImage(instaInfo.post_user_img??'') ,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(child: Text(instaInfo.username??'',style: TextStyle(color: Colors.white),)),
              Icon(Icons.more_horiz,color: Colors.white,)
            ],
          ),
        ),
        Image.network(instaInfo.post_img??''),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                    ],
                  ),

                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 4,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.6),
                        radius: 3.5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        radius: 3,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        radius: 2.5,
                      ),

                    ],
                  ),
                  Icon(CupertinoIcons.bookmark,color: Colors.white,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [

                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 10,
                    backgroundImage: Image.network(instaInfo.liked_image??'').image,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Liked by ',style: TextStyle(color: Colors.white),),
                  Text(instaInfo.liked_name??'',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(' and ',style: TextStyle(color: Colors.white),),
                  Text(instaInfo.no_of_likes??'',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(' others ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Text(instaInfo.username??'',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(' ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(instaInfo.descreption??'',style: TextStyle(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Text('View ',style: TextStyle(color: Colors.grey),),
                  Text(instaInfo.no_of_comments??'',style: TextStyle(color: Colors.grey),),
                  Text(' comments',style: TextStyle(color: Colors.grey),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: Image.network(instaInfo.main_acc_image??'').image,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: 'Add a comment...',
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
